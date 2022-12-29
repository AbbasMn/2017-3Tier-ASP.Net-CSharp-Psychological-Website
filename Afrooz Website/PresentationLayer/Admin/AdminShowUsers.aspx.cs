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

namespace PresentationLayer.Admin
{
    public partial class AdminShowUsers : System.Web.UI.Page
    {

        public Int32 rowNumber;

        public void editUser(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            LinkButton lnkRemove = (LinkButton)sender;

            string rowID = lnkRemove.CommandArgument.Trim();

            Session["sentUserID"] = rowID;

            Response.Redirect("AdminEditSelectedUser.aspx");
        }


        protected void ArcheiveUser()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("ChooseArcheive");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableUser", " UserArchieve='" + chk.Checked.ToString() + "' where UserID=" + GridView1.DataKeys[i].Value);
                            if (sqlexp != null)
                                lblError.Text = sqlexp.Message.ToString();
                        }
                        catch (Exception exp)
                        {

                        }
                    }

                }

            }
            catch
            {
            }

        }

        protected void setUnShownUser()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("choose0");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableUser", " UserShowingPermision='" + chk.Checked.ToString() + "' where UserID=" + GridView1.DataKeys[i].Value);
                            if (sqlexp != null)
                                lblError.Text = sqlexp.Message.ToString();
                        }
                        catch (Exception exp)
                        {

                        }
                    }

                }

            }
            catch
            {
            }

        }


        protected void deleteUser()
        {
            lblMessage.Text = string.Empty;
            int row_selected = 0;

            string picPass = Server.MapPath("~\\UserImages\\");;
            string filePass = Server.MapPath("~\\UserFiles\\");;
            DataTable dt = new DataTable();

            CheckBox chk = new CheckBox();

            Student User1 = new Student();

            try
            {
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;

                        try
                        {
                            dt = User1.showAllStudents("UserPictureName,UserUploadedFileName", "UserID=" + GridView1.DataKeys[i].Value.ToString(), null);

                            string s = dt.Rows[0]["UserPictureName"].ToString();
                            string s1 = dt.Rows[0]["UserUploadedFileName"].ToString();

                            if ((s != "default.jpg") && (s != ""))
                                System.IO.File.Delete(picPass + "/" + s);
                            
                            if (s1 != "")
                                System.IO.File.Delete(filePass + "/" + s1);

                            //SqlException sqlexp = User1.deleteQuery("UserID=" + GridView1.DataKeys[i].Value.ToString());
                            lblMessage.Text = string.Empty;
                        }
                        catch
                        {

                        }
                    }

                }

            }
            catch
            {
            }


        }


        protected void showUser()
        {
            Student user = new Student();


            GridView1.DataSource = user.showAllStudents("*", null, " order by UserStudentID desc");
            //,UserStudentLastName,UserStudentName
            GridView1.DataBind();


            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                btnDelete.Visible = true;
                btnShow.Visible = true;
                btnArchieve.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
                btnDelete.Visible = false;
                btnShow.Visible = false;
                btnArchieve.Visible = false;
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["UserType"] = "Admin";
            //Session["AdminName"] = "افروز";
            //Session["AdminLastName"] = "احرامی";
            //Session["AdminID"] = "1";

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/Main.aspx");


            showUser();

            if (!IsPostBack)
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
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/User/Pages/Admin/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String ID;

            if (Session["UserType"].ToString() == "Admin")
            {
                ID = Session["AdminID"].ToString();
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Admin")
            {
                ID = Session["AdminID"].ToString();
                excp = dbo.updateQuery("TableUserAdmin", "UserAdminOnline='False'" +
                  " where UserAdminID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["UserStudentRowID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentRowID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }




            if (excp != null)
            {
                lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteUser();
                showUser();
            }
            catch
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            setUnShownUser();
            showUser();
        }
        protected void btnArchieve_Click(object sender, EventArgs e)
        {
            try
            {
                ArcheiveUser();
                showUser();
            }
            catch
            {
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}