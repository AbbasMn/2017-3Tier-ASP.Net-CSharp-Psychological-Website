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
    public partial class AdminManagePhoneConsultReserve : System.Web.UI.Page
    {

        public Int32 rowNumber;

        public void editPhoneConsult(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;

            string rowID = lnkRemove.CommandArgument.Trim();

            Session["sentPhoneConsultID"] = rowID;

            Response.Redirect("AdminEditPhoneConsultReserve.aspx");
        }


        protected void ArcheivePhoneConsult()
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
                            SqlException sqlexp = dbo.updateQuery("TablePhoneConsult", " PhoneConsultArchieve='" + chk.Checked.ToString() + "' where PhoneConsultID=" + GridView1.DataKeys[i].Value);
                            //if (sqlexp != null)
                               // lblError.Text = sqlexp.Message.ToString();
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

        protected void setUnShownPhoneConsult()
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
                            SqlException sqlexp = dbo.updateQuery("TablePhoneConsult", " PhoneConsultShowingPermision='" + chk.Checked.ToString() + "' where PhoneConsultID=" + GridView1.DataKeys[i].Value);
                            //if (sqlexp != null)
                            //    lblError.Text = sqlexp.Message.ToString();
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


        protected void deletePhoneConsult()
        {
            //lblMessage.Text = string.Empty;
            int row_selected = 0;

            DataTable dt = new DataTable();

            CheckBox chk = new CheckBox();

            PhoneConsult PhoneConsult1 = new PhoneConsult();

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
                            //dt = PhoneConsult1.showPhoneConsult("PhoneConsultPictureName,PhoneConsultUploadedFileName", "PhoneConsultID=" + GridView1.DataKeys[i].Value.ToString(), null);
 

                            //SqlException sqlexp = PhoneConsult1.deletePhoneConsult("PhoneConsultID=" + GridView1.DataKeys[i].Value.ToString());
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


        protected void showPhoneConsult()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();



            GridView1.DataSource =dbo.selectQueryDataTable("TableMoshavereTelephoni","*",null,"order by RowID desc");
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


            showPhoneConsult();

            if (!IsPostBack)
            {
                
            }

            
        }

   

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deletePhoneConsult();
                showPhoneConsult();
            }
            catch
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            setUnShownPhoneConsult();
            showPhoneConsult();
        }
        protected void btnArchieve_Click(object sender, EventArgs e)
        {
            try
            {
                ArcheivePhoneConsult();
                showPhoneConsult();
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