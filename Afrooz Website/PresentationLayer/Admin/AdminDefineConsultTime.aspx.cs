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

namespace PresentationLayer.Admin
{
    public partial class AdminDefineConsultTime : System.Web.UI.Page
    {

        protected void showPhoneConsult(string tedad)
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            string conTedad = null;

            if (tedad == "۳ تای آخر")
                conTedad = "TOp 3 *";

            if(tedad=="۶ تای آخر")
                conTedad = "TOp 6 *";

            if(tedad=="۹ تای آخر")
                conTedad = "TOp 9 *";

            if(tedad=="۱۲ تای آخر")
                conTedad = "TOp 12 *";
                            
            if(tedad=="۱۵ تای آخر")
                conTedad = "TOp 15 *";
                               
            if(tedad=="۱۸ تای آخر")
                conTedad = "TOp 18 *";









            GridView1.DataSource = dbo.selectQueryDataTable("TableMoshavereTelephoni", conTedad, null, "order by RowID desc");
            GridView1.DataBind();


            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }


        }



        public void deleteTime(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;

            string rowID = lnkRemove.CommandArgument.Trim();
            
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt=new DataTable();

            dt=dbo.selectQueryDataTable("TableMoshavereTelephoni","*","RowID="+rowID,null);

            lblError.Text = "";

            if (dt.Rows[0]["VaziatReserve"].ToString() == "رزرو نشده")
            {
                dbo.deleteQuery("TableMoshavereTelephoni", "RowID="+rowID);

                showPhoneConsult(drlistnewsTedad.SelectedItem.Text);

            }
            else

                lblError.Text = "وقت مشاوره رزرو شده است و قابل حذف نمی باشد.";



        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        public void insertConsultTime()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            if (PersianDatePickup1.Text == "")
            {
                lblMessage.Text = "تاریخ وقت مشاوره را وارد کنید.";
                return;
            }
            else
                lblMessage.Text = "";
            try
            {

             string[] fields = new string[10];
             string[] values = new string[10];

             fields[0] = "Date";
             fields[1] = "Rooz";
             fields[2] = "StartTelTime";
             fields[3] = "EndTelTime";
             fields[4] = "SobhAsr";

             values[0] = PersianDatePickup1.PersianDateString;
             values[1] = drlistnewsRooz.SelectedItem.Text;
             values[2] = drlistnewsStart.SelectedItem.Text;
             values[3] = drlistnewsEnd.SelectedItem.Text;
             values[4] = drlistnewsSobhAsr.SelectedItem.Text;

             Exception excp = dbo.insertQuery("TableMoshavereTelephoni", fields, values);

             if (excp == null)
                 lblMessage.Text = "";
             else
             {
                 lblMessage.Text = "وقت مشاوره وارد شده، قبلا تعریف شده است.";
                 lblMessage.Visible = true;
             }

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

            showPhoneConsult(drlistnewsTedad.SelectedItem.Text);


        }



        protected void drlistnewsType_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            insertConsultTime();
            showPhoneConsult(drlistnewsTedad.SelectedItem.Text);
        }

        protected void drlistnewsTedad_TextChanged(object sender, EventArgs e)
        {
            showPhoneConsult(drlistnewsTedad.SelectedItem.Text);
        }






    }
}