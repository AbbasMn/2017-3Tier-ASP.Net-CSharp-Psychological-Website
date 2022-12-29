using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DataBaseLayer;
using LogicalLayer;
using System.Data;

namespace PresentationLayer
{
    public partial class PhoneConsultReserve : System.Web.UI.Page
    {
        protected void showPhoneConsult()
        {
            DataTable dt = new DataTable();
            DataBaseOperations dbo = new DataBaseOperations();

            PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

            date.SelectedDateTime = DateTime.Now;

            dt = dbo.selectQueryDataTable("TableMoshavereTelephoni", "*", "Date='" + date.PersianDateString.ToString() + "' and VaziatReserve <>'رزرو نشده'" +

            " and TaeedeReserve <>'تاييد نشده' and TozihatReserveAdmin='واريز تاييد شد'", "order by RowID desc");

            Repeater3.DataSource = dt;
            Repeater3.DataBind();
        }


        private void showMoshavereTelephoni()
        {
            try
            {
                PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

                date.SelectedDateTime = DateTime.Now;

                string strTempDate = date.PersianDateString.ToString();

                string strDate = strTempDate[0].ToString() + strTempDate[1].ToString() + strTempDate[2].ToString() + strTempDate[3].ToString() + strTempDate[4].ToString();

                if (strTempDate[6].ToString() == "/")
                {
                    strDate = strDate + "0" + strTempDate[5].ToString() + "/";

                    if (strTempDate.Length == 9)
                        strDate = strDate + strTempDate[7].ToString() + strTempDate[8].ToString();
                }
                else
                {
                    strDate = strDate + strTempDate[5].ToString() + strTempDate[6].ToString() + "/";

                    if (strTempDate.Length == 8)
                        strDate = strDate + "0" + strTempDate[7].ToString();
                    else

                        if (strTempDate.Length == 9)
                            strDate = strDate + "0" + strTempDate[8].ToString();
                        else

                            if (strTempDate.Length == 10)
                                strDate = strDate + strTempDate[8].ToString() + strTempDate[9].ToString();
                }


                



                DataBaseOperations dbo = new DataBaseOperations();
                DataTable dt = new DataTable();


                dt = dbo.selectQueryDataTable("TableMoshavereTelephoni", "*", "Date >='" + strDate + "'", "order by Date desc,RowID desc");

             
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch
            {
            }
        }     



        protected void Page_Load(object sender, EventArgs e)
        {


            Session["sentSubjectTitle"] = "";
            Session["sentRouterSubjectAbout"] = "";


            showMoshavereTelephoni();
            showPhoneConsult();


            if (!IsPostBack)
            {
                lblMessage.Visible = false;
                
            }

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label Date = new Label();
            Label Rooz = new Label();
            Label EndTelTime = new Label();
            Label StartTelTime = new Label();
            Label SobhAsr = new Label();
            Label VaziatReserve = new Label();

            Label ReserveID = new Label();


            if (e.CommandName == "goToReserve")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);

                VaziatReserve = (Label)Repeater1.Items[index].FindControl("LabelVaziatReserve");

                if (VaziatReserve.Text != "رزرو نشده")
                {
                    lblMessage.Text = "تاریخ و ساعت انتخاب شده قبلا رزرو شده است";
                    lblMessage.Visible = true;
                    return;
                }

                Date = (Label)Repeater1.Items[index].FindControl("LabelDate");

                Rooz = (Label)Repeater1.Items[index].FindControl("LabelRooz");

                EndTelTime = (Label)Repeater1.Items[index].FindControl("LabelEndTelTime");

                StartTelTime = (Label)Repeater1.Items[index].FindControl("LabelStartTelTime");

                SobhAsr = (Label)Repeater1.Items[index].FindControl("LabelSobhAsr");


                ReserveID = (Label)Repeater1.Items[index].FindControl("LabelReserveID");

                Session["sentReserveID"] = ReserveID.Text;
                Session["sentReserveDate"] = Date.Text;
                Session["sentRooz"] = Rooz.Text;

                Session["sentReserveStartTelTime"] = StartTelTime.Text;
                Session["sentReserveEndTelTime"] = EndTelTime.Text;
                Session["sentReserveSobhAsr"] = SobhAsr.Text;

                Response.Redirect("InsertPhoneConsultReserve.aspx");
            }
        }

    }
}