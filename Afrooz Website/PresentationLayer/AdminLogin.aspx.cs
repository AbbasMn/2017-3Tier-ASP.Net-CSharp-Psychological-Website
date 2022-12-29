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
    public partial class AdminLogin : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["UserType"] == null)
            {
                Session["AdminGoToLogin"] = "True";
            }

            else
            {
                if (Session["UserType"].ToString() == "Admin")
                    Response.Redirect("~/Admin/AdminControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Student")

                    Response.Redirect("~/User/ControlPanelPage.aspx");

                //if (Session["UserType"] == "Teacher")

                //    Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");
            }


        }

    }
}