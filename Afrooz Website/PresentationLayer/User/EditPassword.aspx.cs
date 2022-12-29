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

namespace PresentationLayer.User
{
    public partial class EditPassword : System.Web.UI.Page
    {
        public DataTable pdt = new DataTable();


        protected void updatePass()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

  

            dt = dbo.selectQueryDataTable("TableUserStudent", "UserStudentPassword",
                " UserStudentRowID=" + "'" + Session["UserStudentRowID"].ToString()+"'", null);

            
            txtAdminPassword.Text=txtAdminPassword.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9").Trim();
           
            if (dt.Rows[0]["UserStudentPassword"].ToString() == txtAdminPassword.Text)
            {
                txtAdminPasswordNewRepeat.Text=txtAdminPasswordNewRepeat.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9").Trim();
                txtAdminPasswordNew.Text = txtAdminPasswordNew.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9").Trim();

                if (txtAdminPasswordNew.Text == txtAdminPasswordNewRepeat.Text)
                {
                    dbo.updateQuery("TableUserStudent", "UserStudentPassword='" + txtAdminPasswordNew.Text.Trim() +
                    "'  where UserStudentRowID='" + Session["UserStudentRowID"].ToString() + "'");
                    lblMessage.Text = "کلمه عبور با موفقیت تغییر کرد.";
                    lblMessage.Visible = true;
                }
                else
                {
                    lblMessage.Text = "تکرار کلمه عبور جدیداشتباه است.";
                    lblMessage.Visible = true;
                }

            }
            else
            {
                lblMessage.Text = "کلمه عبور فعلی اشتباه وارد شده است";
                lblMessage.Visible = true;
            }
        }


        public bool checkSQLInjection(string input, string fieldName)
        {
            int i;
            string s = input;
            string msg = null;
            bool fualt = false;

            msg = "کاراکترهاي ";

            char doubQuto = '"';
            for (i = 0; i < s.Length; i++)
            {
                if ((s[i].ToString() == ";") || (s[i].ToString() == ")") || (s[i].ToString() == "(") || (s[i].ToString() == "'") || (s[i].ToString() == "=") || (s[i].ToString() == "-") || (Convert.ToChar(s[i]) == doubQuto))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (fualt)
            {
                msg = msg + " در " + fieldName + " مجاز نيستند. ";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
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



            if (Session["UserType"] == "Student")
            {

            }
            else
                Response.Redirect("~/Main.aspx");



           

            try
            {
                if (!IsPostBack)
                {

                    txtAdminPassword.Focus();
                    lblMessage.Text = "";
                    
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







        protected void btnSave_Click(object sender, EventArgs e)
        {
            updatePass();
        }





    }
}