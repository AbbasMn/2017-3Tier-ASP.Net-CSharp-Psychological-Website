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
    public partial class AdminEditEvent : System.Web.UI.Page
    {
        public string newsPicName = string.Empty;
        public string newsFileName = string.Empty;
        public string newsFileType = string.Empty;

        public Int32 rowNumber;

        public void editNews(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            LinkButton lnkRemove = (LinkButton)sender;

            string rowID = lnkRemove.CommandArgument.Trim();

            Session["sentNewsID"] = rowID;

            Response.Redirect("AdminEditSelectedEvent.aspx");
        }


        protected void ArcheiveNews()
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
                            SqlException sqlexp = dbo.updateQuery("TableNews", " newsArchieve='" + chk.Checked.ToString() + "' where newsID=" + GridView1.DataKeys[i].Value);
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

        protected void setUnShownNews()
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
                            SqlException sqlexp = dbo.updateQuery("TableNews", " newsShowingPermision='" + chk.Checked.ToString() + "' where newsID=" + GridView1.DataKeys[i].Value);
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


        protected void deleteNews()
        {
            lblMessage.Text = string.Empty;
            int row_selected = 0;

            string picPass = Server.MapPath("~\\NewsImages\\");;
            string filePass = Server.MapPath("~\\NewsFiles\\");;
            DataTable dt = new DataTable();

            CheckBox chk = new CheckBox();

            News news1 = new News();

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
                            dt = news1.showNews("TableNews","newsPictureName,newsUploadedFileName", "newsID=" + GridView1.DataKeys[i].Value.ToString(), null);

                            string s = dt.Rows[0]["newsPictureName"].ToString();
                            string s1 = dt.Rows[0]["newsUploadedFileName"].ToString();

                            if ((s != "default.jpg") && (s != ""))
                                System.IO.File.Delete(picPass + "/" + s);

                            if (s1 != "")
                                System.IO.File.Delete(filePass + "/" + s1);

                            SqlException sqlexp = news1.deleteNews("TableNews","newsID=" + GridView1.DataKeys[i].Value.ToString());
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


        protected void showNews()
        {
            News myNews1 = new News();


            GridView1.DataSource = myNews1.showNews("TableNews","newsTitle,newsDate,newsID,newsShowingPermision,newsArchieve,newsType,newsPriority,newsShoingwToWhatMemberType",
                "newsAouthorID=" + Session["AdminID"].ToString() +
                " and (newsBranchName='خبر-رویداد' or newsBranchName='آموزشی-پژوهشی')" 
                //+" and newsAouthorName='" + Session["AdminName"].ToString() +
                //"' and newsAouthorLastName='" + Session["AdminLastName"].ToString() + "'"
            , "order by newsID desc");

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


            showNews();

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
                deleteNews();
                showNews();
            }
            catch
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            setUnShownNews();
            showNews();
        }
        protected void btnArchieve_Click(object sender, EventArgs e)
        {
            try
            {
                ArcheiveNews();
                showNews();
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