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
    public partial class AdminBranchManagment : System.Web.UI.Page
    {
        public void deleteRow(object sender, EventArgs e)
        {
            University unv = new University();

            LinkButton lnkRemove = (LinkButton)sender;           
            string branchName = lnkRemove.CommandArgument.Trim();
            
            try
            {
                SqlException sqlexp = unv.deleteUniversity(" UniversityName=" + "'" + branchName + "'");
                if (sqlexp != null)
                    lblError.Text = sqlexp.Message.ToString();
                else
                    showDaste();
            }
            catch (Exception exp)
            {

            }
        }


        public void insertDaste()
        {

            if (txtMozo.Text.Trim()=="")
                lblMessage.Text = "نام موضوع را وارد کنید.";
            else
            {
                University unv = new University();

                unv.UniversityName = txtMozo.Text.Trim();
                unv.UniversityAddress = drlistDaste.Text;
                unv.UniversityTelephone = "";
                unv.UniversityWebSite = "";
                unv.UniversityEmail = "";

                SqlException exc = unv.insertUniversity();
                if (exc == null)
                {
                    lblMessage.Text = "عمليات انجام شد.";
                    lblMessage.Visible = true;
                    clear();
                    showDaste();
                }
                else
                {
                    if (exc.Message.Contains("PRIMARY KEY constraint"))
                        lblMessage.Text = "نام موضوع قبلاً واردشده است.";
                    lblMessage.Visible = true;
                }
            }
            }



        protected void showDaste()
        {
            University unv = new University();
            GridView1.DataSource = unv.showAllUniversities("UniversityName,UniversityAddress", null, "order by UniversityAddress, UniversityName");
            GridView1.DataBind();


        }

        
        protected void clear()
        {
            txtMozo.Text = string.Empty;
            lblNewsFileName.Text = string.Empty;
            lblNewsPicName.Text = string.Empty;
        }

        

        protected void Page_Load(object sender, EventArgs e)
        {

            drlistDaste.Focus();

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/Main.aspx");
                showDaste();


        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            bool check = true;

            try
            {

                if (check)
                {
                    insertDaste();
                    clear();
                    
                }
                else
                    lblMessage.Text = "خطا در ارسال عکس يا فايل";
            }
            catch
            {
            }
        }






    }
}