using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using DataBaseLayer;
using LogicalLayer;
using System.IO;
using System.Data.SqlClient;
using System.Collections.Generic;
using HtmlAgilityPack;

namespace PresentationLayer
{
    public partial class AdminEditPhoneConsultReserve : System.Web.UI.Page
    {
        public void showSelectedConsult()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            if (Session["sentPhoneConsultID"] == null)

                return;


            try
            {

                dt = dbo.selectQueryDataTable("TableMoshavereTelephoni", "*", " RowID=" + Session["sentPhoneConsultID"].ToString(), null);

                Repeater1.DataSource = dt;
                Repeater1.DataBind();


            }
            catch
            {
            }
        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/Main.aspx");

         
            showSelectedConsult();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataBaseOperations dbo = new DataBaseOperations();

            if (Session["sentPhoneConsultID"] != null)
            {

                if (drlistTaeedeVariz.SelectedItem.Text == "واریز تایید شد")
                {
                    string TaeedeReserve = "";
                    string TozihatReserveAdmin = "واریز تایید شد";


                    dbo.updateQuery("TableMoshavereTelephoni", "TaeedeReserve='" + TaeedeReserve + "'" +
                                                                ",TozihatReserveAdmin='" + TozihatReserveAdmin + "'" +
                                                                " where RowID=" + Session["sentPhoneConsultID"].ToString());

                    
                }
                else
                {

                    dbo.updateQuery("TableMoshavereTelephoni", "Mablagh='',Tarakonesh='',NoeVariz='',TelNumber='',Bestankar='',MozooMoshavere=''"+
                        
                        ",CellNumber='',MabhasMoshavere='',TozihatBimar='',KardNumber='',TarikhVariz='',VaziatReserve='رزرو نشده',CodeReserved='',TaeedeReserve=''" +
                                                                ",TozihatReserveAdmin='',SaeatVariz=''" +
                                                                " where RowID=" + Session["sentPhoneConsultID"].ToString());
                }

                Response.Redirect("AdminManagePhoneConsultReserve.aspx");
            }
        }
    }
}