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
    public partial class InsertPhoneConsultReserve : System.Web.UI.Page
    {
        public void reserveConsult()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            if (Session["sentReserveID"] == null)

                return;


            try
            {
                
                
                txtnewsSaeat.Text=txtnewsSaeat.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtNewsPhone.Text = txtNewsPhone.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtnewsPassage.Text = txtnewsPassage.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtnewsTrakonesh.Text = txtnewsTrakonesh.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtnewsMablagh.Text = txtnewsMablagh.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtnewsKartNumber.Text = txtnewsKartNumber.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                txtNewsCellPhone.Text = txtNewsCellPhone.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

                string codeReserve=null;

                if (txtNewsCellPhone.Text != string.Empty)
                {
                    codeReserve = txtNewsCellPhone.Text.Substring(txtNewsCellPhone.Text.Trim().Length - 4, 4);
                }
                else
                {
                    if (txtNewsPhone.Text != string.Empty)
                    {
                        codeReserve = txtNewsPhone.Text.Substring(txtNewsPhone.Text.Trim().Length - 4, 4);
                    }
                }


                
                dbo.updateQuery("TableMoshavereTelephoni", "Mablagh='" + txtnewsMablagh.Text.Trim() +

                                                            "',Tarakonesh='" + txtnewsTrakonesh.Text.Trim() +
                                                            "',NoeVariz='" + drlistNoeVariz.SelectedItem.Text +
                                                            "',TelNumber='" + txtNewsPhone.Text.Trim() +
                                                            "',Bestankar='" + txtnewsMablagh.Text.Trim() +

                                                            //"',MozooMoshavere='" + drlistnewsDaste.SelectedItem.Text +

                                                            "',MozooMoshavere='" + " " +

                                                            "',CellNumber='" + txtNewsCellPhone.Text.Trim() +

                                                            //"',MabhasMoshavere='" + drlistnewsPriority.SelectedItem.Text +

                                                            "',MabhasMoshavere='" + " " +

                                                            "',TozihatBimar='" + txtnewsPassage.Text.Trim() +
                                                            "',KardNumber='" + txtnewsKartNumber.Text.Trim() +
                                                            "',TarikhVariz='" + PersianDatePickup1.PersianDateString +
                                                            "',VaziatReserve='"+string.Empty+
                                                            "',CodeReserved='کد رزرو: " + codeReserve +
                                                            "',TaeedeReserve='تایید نشده'"+
                                                            ",TozihatReserveAdmin='واریز تایید نشده است'"+
                                                            ",SaeatVariz='" + txtnewsSaeat.Text.Trim() + "' where RowID=" + Session["sentReserveID"].ToString());

                Response.Redirect("PhoneConsultReserve.aspx");
            }
            catch
            {
            }
        }

        public void nemayesheDasteRavanshenasi()
        {
            University unv = new University();
            //drlistnewsDaste.DataSource = unv.showAllUniversities("distinct UniversityAddress", null, " order by UniversityAddress");
            //drlistnewsDaste.DataBind();
        } 

        public void nemayesheMozoateRavanshenasi()
        {
            University unv = new University();
            //drlistnewsPriority.DataSource = unv.showAllUniversities("UniversityName", " UniversityAddress='" + drlistnewsDaste.Text + "'", " order by UniversityName");
            //drlistnewsPriority.DataBind();
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["sentReserveID"]

            try
            {

                LabelRooz.Text = Session["sentRooz"].ToString();
                LabelDate.Text = Session["sentReserveDate"].ToString();
                LabelEndTelTime.Text = Session["sentReserveEndTelTime"].ToString();
                LabelStartTelTime.Text = Session["sentReserveStartTelTime"].ToString();
                LabelSobhAsr.Text = Session["sentReserveSobhAsr"].ToString();
            }
            catch
            {
                Response.Redirect("PhoneConsultReserve.aspx");
            }


            if (!IsPostBack)
            {
                nemayesheDasteRavanshenasi();
                nemayesheMozoateRavanshenasi();
            }
        }



        protected void drlistnewsType_TextChanged(object sender, EventArgs e)
        {
            //nemayesheMozoateRavanshenasi();
            //drlistnewsPriority.Focus();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            reserveConsult();
        }






    }
}