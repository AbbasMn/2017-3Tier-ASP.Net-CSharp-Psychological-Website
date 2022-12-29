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
    public partial class AdminManageMembershipDeposit : System.Web.UI.Page
    {

        protected void taeed()
        {
            //lblMessage.Text = string.Empty;
            int row_selected = 0;

            DataTable dt = new DataTable();

            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();

            try
            {
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Taeed");
                    if (chk.Checked)
                    {
                        row_selected += 1;

                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableMemberDeposite", "TaeedeVariz='تایید شده'  where RowID=" + GridView1.DataKeys[i].Value.ToString());
                            sqlexp = dbo.updateQuery("TableUserStudent", "UserStudentSpecialty='عضویت ویژه'  where UserStudentRowID=" + GridView1.Rows[i].Cells[3].Text.ToString());
                            //lblMessage.Text = string.Empty;
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


        protected void delete()
        {
            //lblMessage.Text = string.Empty;
            int row_selected = 0;

            DataTable dt = new DataTable();

            CheckBox chk = new CheckBox();

             DataBaseOperations dbo = new DataBaseOperations();

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
                            SqlException sqlexp = dbo.deleteQuery("TableMemberDeposite", " RowID=" + GridView1.DataKeys[i].Value.ToString() + " and TaeedeVariz='تایید نشده'");
                            //lblMessage.Text = string.Empty;
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


        protected void show()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();



            GridView1.DataSource = dbo.selectQueryDataTable("TableMemberDeposite", "*", null, "order by RowID desc");
            GridView1.DataBind();


            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
                btnDelete.Visible = false;
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/Main.aspx");


            show();

            if (!IsPostBack)
            {
                
            }

            
        }

   

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                delete();
                show();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            taeed();
            show();
        }


    }
}