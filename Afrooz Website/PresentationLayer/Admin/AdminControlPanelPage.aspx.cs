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
    public partial class AdminControlPanelPage : System.Web.UI.Page
    {
        public DataTable pdt = new DataTable();


        
        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String AdminID = Session["AdminID"].ToString();

            if (Session["UserType"].ToString() == "Admin")
            {
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminID=" + AdminID);
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
                lblMessage.Text = Session["AdminSex"].ToString() + "  " +
                                  Session["AdminName"].ToString() + "  " +
                                  Session["AdminLastName"].ToString() + " خوش آمديد !." +
                                  "  آخرين حضور شما در سايت " +
                                  Session["AdminLastLogin"].ToString() + ". " +
                                  " تعداد ورود شما به سایت  " + Session["AdminSiteViewCounter"].ToString() + " بار. ";
            }
            else
                Response.Redirect("~/Main.aspx");

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


        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            logOut();
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Main.aspx");
        }

        protected void ImageButton28_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminInserNews.aspx");
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminInsertEvent.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/User/ShowAllin.aspx");
        }



        protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminProfile.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminBranchManagment.aspx");
        }

        protected void ImageButton29_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminEditNews.aspx");
        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminEditEvent.aspx");
        }

        protected void ImageButton30_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminShowUsers.aspx");
        }

        protected void ImageButton31_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminDefineConsultTime.aspx");
        }

        protected void ImageButton32_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminManagePhoneConsultReserve.aspx");
        }

        protected void ImageButton33_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminAtieNoo.aspx");
        }

        protected void ImageButton34_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminManageMembershipDeposit.aspx");
        }

        protected void ImageButton35_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminInserBook.aspx");
        }

        protected void ImageButton36_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminInserVideo.aspx");
        }
    }

}