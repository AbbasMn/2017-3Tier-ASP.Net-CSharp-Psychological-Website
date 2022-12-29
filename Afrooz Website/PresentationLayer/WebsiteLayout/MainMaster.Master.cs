using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LogicalLayer;
using DataBaseLayer;
using System.Data;
using System.Data.SqlClient;

namespace PresentationLayer.WebsiteLayout
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {


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
                lblMessage2.Text = msg;
                lblMessage2.Visible = true;
                return false;
            }
            else
            {
                lblMessage2.Visible = false;
                lblMessage2.Text = string.Empty;
                return true;
            }
        }

        protected void setGuestCounter()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            dbo.updateQuery("TableUserStudent", "UserStudentSiteViewCounter=UserStudentSiteViewCounter+1" +
                                       " where UserStudentName='guest' and UserStudentLastName='guest'");
        }
        
        protected void showLogoPic()
        {
            imgLogo.ImageUrl = "~/WebsiteLayout/Pic/png1/Logo2.png";
            
        }

        protected void ifUserLogined()
        {
            if (Session["UserType"] != null)
            {
                lblMessage.Visible = true;
                lblMessage.Text = Session["StudentSex"] + " " + Session["StudentName"] + " " + Session["StudentLastname"] + " خوش آمدید.";
                
                txtUserName.Visible = false;
                txtPassword.Visible = false;
                
                btnLogin.Visible = true;               

                lblUserName.Visible = false;
                lblPassword.Visible = false;

                btnLogin.Text = "خروج";

                HyperLinkForgetPass.Visible = false;

            }


            else
            {
                lblMessage.Visible = false;
                lblMessage2.Visible = false;

                txtUserName.Visible = true;
                txtPassword.Visible = true;
                
                btnLogin.Visible = true;
                

                lblUserName.Visible = true;
                lblPassword.Visible = true;

                btnLogin.Text = "ورود";

                HyperLinkForgetPass.Visible = true;


            }

        }

        protected void logIn()
        {
            int userType;
            String userName, userPassword;

            DataBaseOperations dbo = new DataBaseOperations();

            DataTable dt = new DataTable();
            SqlException excp;

            txtUserName.Text = txtUserName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserName.Text, "نام کاربری"))
                return ;


            txtPassword.Text = txtPassword.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtPassword.Text, "کلمه عبور"))
                return;
            try
            {
                userType = 0;

                //Cryption cryp1 = new Cryption("abas", txtUserName.Text.Trim());
                //userName = cryp1.Encrypt(txtUserName.Text.Trim());

                //Cryption cryp2 = new Cryption("abas", txtPassword.Text.Trim());
                //userPassword = cryp2.Encrypt(txtPassword.Text.Trim());

                userName = txtUserName.Text.Trim();
                userPassword = txtPassword.Text.Trim();

                PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();

                string loginDate;

                //perdate.Text = DateTime.Now.ToShortDateString() + " - " + DateTime.Now.ToShortTimeString();

                perdate.SelectedDateTime = DateTime.Now;


                loginDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();



                if (Session["UserType"] == null)
                {
                    if (Session["AdminGoToLogin"] != null)
                    {
                        if (Session["AdminGoToLogin"].ToString() == "True")
                            userType = 2;
                    }
                }
                
                
                
                switch (userType)
                {

                    //admin
                    case 2:
                        dt = dbo.selectQueryDataTable("TableAdmin", "AdminUserName,AdminID,AdminName,AdminLastName,AdminLastLogin,AdminOnline,AdminSex,AdminSiteViewCounter",
                       " AdminUserName=" + "'" + userName + "'" +
                       " and AdminPassword=" + "'" + userPassword + "'", null);
                        if (dt.Rows.Count > 0)
                        {
                            

                            if (dt.Rows[0]["AdminOnline"].ToString().Trim() == "False")//اگر آنلاین نیست
                            {
                                Session["AdminLastLogin"] = dt.Rows[0]["AdminLastLogin"].ToString().Trim();


                                excp = dbo.updateQuery("TableAdmin", "AdminLastLogin='" + loginDate + "'" +
                                       ",AdminOnline='True'" +
                                       ",AdminSiteViewCounter=AdminSiteViewCounter+1"+
                                       " where AdminUserName=" + "'" + userName + "'"
                                     + " and AdminPassword=" + "'" + userPassword + "'");

                                if (excp != null)
                                {
                                    lblMessage.Text = excp.Message.ToString().Trim();
                                }
                                else
                                {
                                    Session["AdminUserName"] = dt.Rows[0]["AdminUserName"].ToString().Trim();
                                    Session["AdminName"] = dt.Rows[0]["AdminName"].ToString().Trim();
                                    Session["AdminLastName"] = dt.Rows[0]["AdminLastName"].ToString().Trim();
                                    Session["AdminID"] = dt.Rows[0]["AdminID"].ToString().Trim();
                                    Session["AdminSex"] = dt.Rows[0]["AdminSex"].ToString().Trim();
                                    Session["UserType"] = "Admin";
                                    Session["AdminSiteViewCounter"] = dt.Rows[0]["AdminSiteViewCounter"].ToString().Trim();


                                    lblMessage.Text = "مدیریت محترم سایت " + Session["AdminSex"].ToString() + " " +
                                        Session["AdminName"].ToString() + " " +
                                        Session["AdminLastname"].ToString() + " خوش آمدید.";

                                    Response.Redirect("~/Admin/AdminControlPanelPage.aspx");
                                }
                            }
                            else //آنلاين است
                            {
                                if (Session["UserType"] == "Admin")
                                {
                                    txtPassword.Text = string.Empty;
                                    txtUserName.Text = string.Empty;
                                }
                            }
                        }
                        else //ورود غير مجاز
                        {
                            txtPassword.Text = string.Empty;
                            txtUserName.Text = string.Empty;
                            lblMessage.Text = "نام کاربری یا کلمه عبور اشتباه است !";
                        }

                        break;







                    //teacher
                    case 1:
                        dt = dbo.selectQueryDataTable("TableUserTeacher", "UserTeacherSpecialty,UserTeacherID,UserTeacherSex,UserTeacherUserName,UserTeacherName,UserTeacherLastName,UserTeacherOnline,UserTeacherLastLogin",
                                            " UserTeacherUserName=" + "'" + userName + "'" +
                                            " and UserTeacherPassword=" + "'" + userPassword + "'", null);
                        if (dt.Rows.Count > 0)
                        {
                            Session["TeacherLastLogin"] = dt.Rows[0]["UserTeacherLastLogin"].ToString().Trim();

                            if (dt.Rows[0]["UserTeacherOnline"].ToString().Trim() == "False")//اگر آنلاین نیست
                            {
                                Session["TeacherLastLogin"] = dt.Rows[0]["UserTeacherLastLogin"];
                                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='True'" +
                                    ",UserTeacherLastLogin='" + loginDate + "'" +
                                       " where UserTeacherUserName=" + "'" + userName + "'"
                                     + " and UserTeacherPassword=" + "'" + userPassword + "'");

                                if (excp != null)
                                {
                                    lblMessage.Text = excp.Message.ToString().Trim();
                                }
                                else
                                {
                                    Session["TeacherName"] = dt.Rows[0]["UserTeacherName"].ToString().Trim();
                                    Session["TeacherLastName"] = dt.Rows[0]["UserTeacherLastName"].ToString().Trim().Trim();
                                    Session["UserType"] = "Teacher";
                                    Session["TeacherSex"] = dt.Rows[0]["UserTeacherSex"].ToString().Trim();
                                    Session["TeacherID"] = dt.Rows[0]["UserTeacherID"].ToString().Trim();
                                    Session["TeacherBranchName"] = dt.Rows[0]["UserTeacherSpecialty"].ToString().Trim();
                                    Session["TeacherID"] = dt.Rows[0]["UserTeacherID"].ToString().Trim();

                                    Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

                                }
                            }
                            else //آنلاين است
                            {
                                if (Session["UserType"] == "Teacher")
                                {
                                    txtPassword.Text = string.Empty;
                                    txtUserName.Text = string.Empty;
                                    //Response.Redirect("TeacherControlPanel.aspx");
                                }
                            }
                        }
                        else //ورود غير مجاز
                        {
                            txtPassword.Text = string.Empty;
                            txtUserName.Text = string.Empty;
                            lblMessage.Text = "نام کاربری یا کلمه عبور اشتباه است !";
                        }


                        break;







                    //student
                    case 0:
                        dt = dbo.selectQueryDataTable("TableUserStudent", "UserStudentSpecialty,UserStudentRowID,UserStudentSiteViewCounter,UserStudentDeleted,UserStudentUploadPic,UserStudentEducationLevel,UserStudentSex,UserStudentUserName,UserStudentEducationBranchName,UserStudentUnivesityName,UserStudentID,UserStudentName,UserStudentLastName,UserStudentOnline,UserStudentLastLogin",
                                            " UserStudentUserName=" + "'" + userName + "'" +
                                            " and UserStudentPassword=" + "'" + userPassword + "'", null);
                        if (dt.Rows.Count > 0)
                        {

                            if (dt.Rows[0]["UserStudentOnline"].ToString().Trim() == "False" || dt.Rows[0]["UserStudentOnline"].ToString().Trim() == "True")//اگر آنلاین نیست
                            {
                                Session["StudentLastLogin"] = dt.Rows[0]["UserStudentLastLogin"];

                                excp = dbo.updateQuery("TableUserStudent", "UserStudentLastLogin='" + loginDate + "'" +
                                       ",UserStudentOnline='True',UserStudentSiteViewCounter=UserStudentSiteViewCounter+1" +
                                       " where UserStudentRowID=" + dt.Rows[0]["UserStudentRowID"].ToString().Trim());

                                if (excp != null)
                                {
                                    lblMessage2.Text = excp.Message.ToString().Trim();
                                }
                                else
                                {

                                    Session["StudentSex"] = dt.Rows[0]["UserStudentSex"].ToString().Trim();
                                    Session["StudentName"] = dt.Rows[0]["UserStudentName"].ToString().Trim();
                                    Session["StudentLastname"] = dt.Rows[0]["UserStudentLastName"].ToString().Trim();
                                    Session["UserType"] = "Student";
                                    Session["UserStudentRowID"] = dt.Rows[0]["UserStudentRowID"].ToString().Trim();
                                    Session["StudentUniversityName"] = dt.Rows[0]["UserStudentUnivesityName"].ToString().Trim();
                                    Session["StudentBranchName"] = dt.Rows[0]["UserStudentEducationBranchName"].ToString().Trim();
                                    Session["StudentEducationLevel"] = dt.Rows[0]["UserStudentEducationLevel"].ToString().Trim();
                                    Session["StudentUserName"] = dt.Rows[0]["UserStudentUserName"].ToString().Trim();
                                    Session["StudentUploadPic"] = dt.Rows[0]["UserStudentUploadPic"].ToString().Trim();
                                    Session["StudentSiteViewCounter"] = dt.Rows[0]["UserStudentSiteViewCounter"].ToString().Trim();
                                    Session["UserRegistrationType"]=dt.Rows[0]["UserStudentSpecialty"].ToString().Trim();
                                        

                                    lblMessage.Text = Session["StudentSex"] + " " + Session["StudentName"] + " " + Session["StudentLastname"] + " خوش آمدید.";

                                    lblMessage2.Visible = true;
                                    lblMessage2.Text = Session["StudentSiteViewCounter"] + " بار ورود به سایت ";
                                    // check for uploadSotware link permission
                                    Session["StudentSendSotwareDownloadLink"] = dt.Rows[0]["UserStudentDeleted"].ToString().Trim();

                                    Session["AdminGoToLogin"] = "False";
                                    // 

                                    Response.Redirect("~/User/ControlPanelPage.aspx");


                                }
                            }
                            else //آنلاين است
                            {
                                if (Session["UserType"] == "Student")
                                {
                                    txtPassword.Text = string.Empty;
                                    txtUserName.Text = string.Empty;
                                    //Response.Redirect("UserControlPanel.aspx");
                                }
                            }
                        }
                        else //ورود غير مجاز
                        {
                            txtPassword.Text = string.Empty;
                            txtUserName.Text = string.Empty;
                            lblMessage2.Visible = true;
                            lblMessage2.Text = "نام کاربری یا کلمه عبور اشتباه است !";
                        }


                        break;

                }
            }
            catch (Exception exp)
            {
                //lblMessage.Text = exp.Message;
            }
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

                Session["AdminGoToLogin"]= "False";
                
                Response.Redirect("~/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
                Session.Abandon();
                Response.Redirect("Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["UserStudentRowID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentRowID=" + ID);
                Session.Abandon();

                Session["AdminGoToLogin"] = "False";
                Response.Redirect("~/Main.aspx");
            }




            if (excp != null)
            {
                //lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            ifUserLogined();

           
           //     showLogoPic();

           //if (!IsPostBack) 
           // setGuestCounter();
                
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (btnLogin.Text == "ورود")
                logIn();
            else
                logOut();
        }
    }
}