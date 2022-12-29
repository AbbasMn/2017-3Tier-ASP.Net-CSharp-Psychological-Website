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

namespace PresentationLayer.Admin
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        public DataTable pdt = new DataTable();

        protected void updateAdminProfile()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            string adminSex;

            if (rdioAdminSexFemale.Checked)
                adminSex = "خانم";
            else
                adminSex = "اقای";

            dt=dbo.selectQueryDataTable("TableAdmin", "*",
                "AdminID=" + "'" + Session["AdminID"].ToString() + "'", null);

            if (dt.Rows[0]["AdminPassword"].ToString() == txtAdminPassword.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9").Trim())
            {

                txtAdminEmail.Text = txtAdminEmail.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
                txtAdminName.Text=txtAdminName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
                txtAdminUserName.Text=txtAdminUserName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
                txtAdminPasswordNew.Text = txtAdminPasswordNew.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
                
                dbo.updateQuery("TableAdmin", "AdminEmail='" + txtAdminEmail.Text.Trim() + "',AdminLastName='" + txtAdminLastName.Text.Trim() +
                    "',AdminName='" + txtAdminName.Text.Trim() + "',AdminSex='" + adminSex + "',AdminUserName='" + txtAdminUserName.Text.Trim() +
                    "',AdminPassword='" + txtAdminPasswordNew.Text.Trim() + "' where AdminID='" + Session["AdminID"].ToString() + "'");

                lblError.Text = "مشخصات شما با موفقیت بروز رسانی شد";
                showAdminSpecification();

            }
            else
            {
                lblError.Text = "رمز عبور قبلی اشتباه وارد شده است";
            }
        }

        

        protected void showAdminSpecification()
        {
            lblMessage.Text = Session["AdminSex"].ToString() + "  " +
                  Session["AdminName"].ToString() + "  " +
                  Session["AdminLastName"].ToString() + " خوش آمديد !." +
                  "  آخرين حضور شما در سايت " +
                  Session["AdminLastLogin"].ToString() + ". " +
                  " تعداد ورود شما به سایت  " + Session["AdminSiteViewCounter"].ToString() + " بار. ";


            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableAdmin", "*",
                "AdminID=" + "'" + Session["AdminID"].ToString() + "'", null);

            lblAdminBranch.Text = "شیراز";
            lblAdminEmail.Text = dt.Rows[0]["AdminEmail"].ToString();
            txtAdminEmail.Text = dt.Rows[0]["AdminEmail"].ToString();

            lblAdminLastName.Text = dt.Rows[0]["AdminLastName"].ToString();
            txtAdminLastName.Text = dt.Rows[0]["AdminLastName"].ToString();
            
            lblAdminName.Text = dt.Rows[0]["AdminName"].ToString();
            txtAdminName.Text = dt.Rows[0]["AdminName"].ToString();

            lblAdminUserName.Text = Session["AdminUserName"].ToString();
            txtAdminUserName.Text = Session["AdminUserName"].ToString();


            if (dt.Rows[0]["AdminSex"].ToString() == "خانم")
                rdioAdminSexFemale.Checked = true;
            else
                rdioAdminSexMale.Checked = true;

            lblAdminRowID.Text = dt.Rows[0]["AdminID"].ToString();
            


            //lblCodePosti.Text = dt.Rows[0]["AdminOfficeName"].ToString();
            //lblAddressPosti.Text = dt.Rows[0]["AdminAddress"].ToString();

            //lblMobile.Text = dt.Rows[0]["AdminCellPhone"].ToString();
            //lblTel.Text = dt.Rows[0]["AdminPhone"].ToString();

            //if ((dt.Rows[0]["AdminPicture"].ToString() == string.Empty) || (dt.Rows[0]["AdminPicture"].ToString() == null))
            //{
            //    imgAdminImage.ImageUrl = "~/UserUploadedPictures/UserProfilePic/profilepic.jpg";
                
            //}
            //else
            //{
            //    imgAdminImage.ImageUrl = "~/UserUploadedPictures/UserProfilePic/" + dt.Rows[0]["AdminPicture"].ToString();
                
            //}




            //lblCurrentAdminImageName.Text = dt.Rows[0]["AdminPicture"].ToString();

            


            //lblAdminUniversity.Text = dt.Rows[0]["AdminUnivesityName"].ToString();


        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String AdminRowID = Session["AdminRowID"].ToString();

            if (Session["UserType"].ToString() == "Admin")
            {
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminRowID=" + AdminRowID);
            }


            if (excp != null)
            {
                //lblError.Text = excp.Message.ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/Main.aspx");
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["UserType"] == "Admin")
            {

            }
            else
                Response.Redirect("~/Main.aspx");



           

            try
            {
                if (!IsPostBack)
                {

                    showAdminSpecification();
                }
            }
            catch
            {
            }

        }


        protected void lbtnLogOut_Click(object sender, EventArgs e)
        {
            try
            {
                logOut();
            }
            catch
            {
            }

        }



        

        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Main.aspx");
        }
        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            logOut();
        }





        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            updateAdminProfile();
        }



    }
}