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
    public partial class Profile : System.Web.UI.Page
    {
        public DataTable pdt = new DataTable();


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

        public bool checkStudentUserName()
        {
            int i;
            string s = txtUserStudentUserName.Text;
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
                txtUserStudentUserName.Text = string.Empty;
                msg = msg + " در نام کاربري مجاز نيستند.";
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

        
        

        protected bool updateUserProfile()
        {

            txtUserStudentName.Text = txtUserStudentName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentName.Text, "نام"))
                return false;

            txtUserStudentLastName.Text = txtUserStudentLastName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentLastName.Text, "نام خانوادگی"))
                return false;

            txtUserStudentUserName.Text = txtUserStudentUserName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentUserName.Text, "نام کاربری"))
                return false;

            //txtUserStudentPassword.Text = txtUserStudentPassword.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            //if (!checkSQLInjection(txtUserStudentPassword.Text, "کلمه عبور"))
            //    return false;

            txtUserStudentOfficeName.Text = txtUserStudentOfficeName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentOfficeName.Text, "کد پستی"))
                return false;

            txtUserStudentEmail.Text = txtUserStudentEmail.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentEmail.Text, "پست الکترونیک"))
                return false;


            txtUserStudentCellPhone.Text = txtUserStudentCellPhone.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentCellPhone.Text, "تلفن همراه"))
                return false;


            txtUserStudentPhone.Text = txtUserStudentPhone.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentPhone.Text, "تلفن ثابت"))
                return false;

            txtUserStudentAddress.Text = txtUserStudentAddress.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            if (!checkSQLInjection(txtUserStudentAddress.Text, "آدرس"))
                return false;


            LogicalLayer.Student stu = new LogicalLayer.Student();

            txtUserStudentName.Text = txtUserStudentName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentName = txtUserStudentName.Text.Trim();

            txtUserStudentLastName.Text = txtUserStudentLastName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentLastName = txtUserStudentLastName.Text.Trim();

            txtUserStudentEmail.Text = txtUserStudentEmail.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentEmail = txtUserStudentEmail.Text.Trim();
            //stu.UserStudentID = "-1";


            txtUserStudentUserName.Text = txtUserStudentUserName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentUserName = txtUserStudentUserName.Text.Trim();

            //txtUserStudentPassword.Text = txtUserStudentPassword.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            //stu.UserStudentPassword = txtUserStudentPassword.Text.Trim();

            stu.UserStudentEducationBranchName = drliUserStudentEducationBranchName.SelectedItem.Text.Trim();
            
            stu.UserStudentUnivesityName = drliStudentUniversity.SelectedItem.Text;
            

            txtUserStudentOfficeName.Text = txtUserStudentOfficeName.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentOfficeName = txtUserStudentOfficeName.Text;

            txtUserStudentPhone.Text = txtUserStudentPhone.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentPhone = txtUserStudentPhone.Text;

            txtUserStudentCellPhone.Text = txtUserStudentCellPhone.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentCellPhone = txtUserStudentCellPhone.Text;

            txtUserStudentAddress.Text = txtUserStudentAddress.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            stu.UserStudentAddress = txtUserStudentAddress.Text;
            

            if (rdioUserStudentSexFemale.Checked)
                stu.UserStudentSex = "خانم";
            else
                stu.UserStudentSex = "آقاي";


            if (rdioMemberShipTypeStudent.Checked)
                stu.UserStudentType = "شخص حقیقی";
            else
                stu.UserStudentType = "شخص حقوقی";


            //stu.UserStudentSpecialty = "عضویت ساده";


            SqlException exc = stu.updateQuery("TableUserStudent",
            "UserStudentUnivesityName='" + stu.UserStudentUnivesityName + "'"
            + ",UserStudentName='" + stu.UserStudentName + "'"
            + ",UserStudentLastName='" + stu.UserStudentLastName + "'"
            + ",UserStudentUserName='" + stu.UserStudentUserName + "'"

            + ",UserStudentEducationLevel='" + stu.UserStudentEducationLevel + "'"
            + ",UserStudentEducationBranchName='" + stu.UserStudentEducationBranchName + "'"


            + ",UserStudentWebSite='" + stu.UserStudentWebSite + "'"
            + ",UserStudentEmail='" + stu.UserStudentEmail + "'"
            + ",UserStudentPicture='" + stu.UserStudentPicture + "'"
            + ",UserStudentSex='" + stu.UserStudentSex + "'"

            + ",UserStudentOfficeName='" + stu.UserStudentOfficeName + "'"
            + ",UserStudentPhone='" + stu.UserStudentPhone + "'"
            + ",UserStudentCellPhone='" + stu.UserStudentCellPhone + "'"
            + ",UserStudentType='" + stu.UserStudentType + "'"

            + ",UserStudentAddress='" + stu.UserStudentAddress + "' where UserStudentRowID=" + "'" + Session["UserStudentRowID"] + "'");
            //+",UserStudentSpecialty='"+stu.UserStudentSpecialty+"'");           
            
            
            
            
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                showUserSpecification();
                return true;
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    //lblMessage.Text = "نام کاربري و يا کلمه عبور ديگري انتخاب نماييد.";

                    lblMessage.Text = exc.Message.ToString();
                //+"    " + stu.UserStudentEducationBranchName;

                lblMessage.Visible = true;
                return false;
            }
        }



        protected void showUserSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableUserStudent", "*",
                "UserStudentRowID=" + "'" + Session["UserStudentRowID"] + "'", null);

            

            txtUserStudentEmail.Text = dt.Rows[0]["UserStudentEmail"].ToString();
            txtUserStudentLastName.Text = dt.Rows[0]["UserStudentLastName"].ToString();
            
            txtUserStudentName.Text = dt.Rows[0]["UserStudentName"].ToString();


            txtUserStudentOfficeName.Text = dt.Rows[0]["UserStudentOfficeName"].ToString();
            txtUserStudentAddress.Text = dt.Rows[0]["UserStudentAddress"].ToString();

            txtUserStudentCellPhone.Text = dt.Rows[0]["UserStudentCellPhone"].ToString();
            txtUserStudentPhone.Text = dt.Rows[0]["UserStudentPhone"].ToString();

            if ((dt.Rows[0]["UserStudentPicture"].ToString() == string.Empty) || (dt.Rows[0]["UserStudentPicture"].ToString() == null))
            {
                //imgStudentImage.ImageUrl = "~/UserUploadedPictures/UserProfilePic/profilepic.jpg";

            }
            else
            {
                //imgStudentImage.ImageUrl = "~/UserUploadedPictures/UserProfilePic/" + dt.Rows[0]["UserStudentPicture"].ToString();

            }




            //lblCurrentStudentImageName.Text = dt.Rows[0]["UserStudentPicture"].ToString();

            txtUserStudentUserName.Text = dt.Rows[0]["UserStudentUserName"].ToString();

            //txtUserStudentPassword.Text= dt.Rows[0]["UserStudentPassword"].ToString();
            //lblUserStudentPassword.Text = dt.Rows[0]["UserStudentPassword"].ToString();

            drliStudentUniversity.SelectedItem.Text = dt.Rows[0]["UserStudentUnivesityName"].ToString();

            nemayesheShahrhayeOstan();

            string s=dt.Rows[0]["UserStudentEducationBranchName"].ToString();
            drliUserStudentEducationBranchName.SelectedItem.Text = s;
                
              


            if (dt.Rows[0]["UserStudentType"].ToString()=="شخص حقوقي")
                rdioMemberShipTypeProud.Checked = true;
            else
                rdioMemberShipTypeProud.Checked = false;


            if (dt.Rows[0]["UserStudentSex"].ToString() == "خانم")
                rdioUserStudentSexFemale.Checked = true;
            else
                rdioUserStudentSexFemale.Checked = false;


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

                    showUserSpecification();
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
           updateUserProfile();
        }




        public void nemayesheShahrhayeOstan()
        {
            switch (drliStudentUniversity.SelectedItem.Text.ToString())
            {
                case "آذربایجان شرقی":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();

                        drliUserStudentEducationBranchName.Items.Add("اسکو");
                        drliUserStudentEducationBranchName.Items.Add("اهر");
                        drliUserStudentEducationBranchName.Items.Add("بستان‌آباد");
                        drliUserStudentEducationBranchName.Items.Add("بناب");
                        drliUserStudentEducationBranchName.Items.Add("تبریز ");
                        drliUserStudentEducationBranchName.Items.Add("جلفا");
                        drliUserStudentEducationBranchName.Items.Add("چاراویماق");
                        drliUserStudentEducationBranchName.Items.Add("سراب");
                        drliUserStudentEducationBranchName.Items.Add("شبستر");
                        drliUserStudentEducationBranchName.Items.Add("عجب‌شیر");
                        drliUserStudentEducationBranchName.Items.Add("کلیبر");
                        drliUserStudentEducationBranchName.Items.Add("مراغه");
                        drliUserStudentEducationBranchName.Items.Add("مرند");
                        drliUserStudentEducationBranchName.Items.Add("ملکان");
                        drliUserStudentEducationBranchName.Items.Add("میانه");
                        drliUserStudentEducationBranchName.Items.Add("ورزقان");
                        drliUserStudentEducationBranchName.Items.Add("هریس");
                        drliUserStudentEducationBranchName.Items.Add("هشترود");

                        break;
                    }



                case "آذربایجان غربی":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();


                        drliUserStudentEducationBranchName.Items.Add("اشنویه");
                        drliUserStudentEducationBranchName.Items.Add("بوکان");
                        drliUserStudentEducationBranchName.Items.Add("پیرانشهر");
                        drliUserStudentEducationBranchName.Items.Add("تکاب");
                        drliUserStudentEducationBranchName.Items.Add("چالدران");
                        drliUserStudentEducationBranchName.Items.Add("خوی");
                        drliUserStudentEducationBranchName.Items.Add("سردشت");
                        drliUserStudentEducationBranchName.Items.Add("سلماس");
                        drliUserStudentEducationBranchName.Items.Add("شاهین‌دژ");
                        drliUserStudentEducationBranchName.Items.Add("ماکو");
                        drliUserStudentEducationBranchName.Items.Add("مهاباد");
                        drliUserStudentEducationBranchName.Items.Add("میاندوآب");
                        drliUserStudentEducationBranchName.Items.Add("نقده");

                        break;
                    }


                case "اردبیل":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("اردبیل");
                        drliUserStudentEducationBranchName.Items.Add("بیله‌سوار");
                        drliUserStudentEducationBranchName.Items.Add("پارس‌آباد");
                        drliUserStudentEducationBranchName.Items.Add("خلخال");
                        drliUserStudentEducationBranchName.Items.Add("کوثر ");
                        drliUserStudentEducationBranchName.Items.Add("گِرمی");
                        drliUserStudentEducationBranchName.Items.Add("مِشگین‌شهر");
                        drliUserStudentEducationBranchName.Items.Add("نَمین");
                        drliUserStudentEducationBranchName.Items.Add("نیر");


                        break;
                    }

                case "اصفهان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آران و بیدگل");
                        drliUserStudentEducationBranchName.Items.Add("اردستان");
                        drliUserStudentEducationBranchName.Items.Add("اصفهان ");
                        drliUserStudentEducationBranchName.Items.Add("برخوار و میمه");
                        drliUserStudentEducationBranchName.Items.Add("تیران و کرون");
                        drliUserStudentEducationBranchName.Items.Add("چادگان");
                        drliUserStudentEducationBranchName.Items.Add("خمینی‌شهر");
                        drliUserStudentEducationBranchName.Items.Add("خوانسار");
                        drliUserStudentEducationBranchName.Items.Add("سمیرم");
                        drliUserStudentEducationBranchName.Items.Add("شهرضا");
                        drliUserStudentEducationBranchName.Items.Add("سمیرم سفلی");
                        drliUserStudentEducationBranchName.Items.Add("فریدن");
                        drliUserStudentEducationBranchName.Items.Add("فریدون‌شهر");
                        drliUserStudentEducationBranchName.Items.Add("فلاورجان");
                        drliUserStudentEducationBranchName.Items.Add("کاشان");
                        drliUserStudentEducationBranchName.Items.Add("گلپایگان");
                        drliUserStudentEducationBranchName.Items.Add("لنجان");
                        drliUserStudentEducationBranchName.Items.Add("مبارکه");
                        drliUserStudentEducationBranchName.Items.Add("نائین");
                        drliUserStudentEducationBranchName.Items.Add("نجف‌آباد ");
                        drliUserStudentEducationBranchName.Items.Add("نطنز");


                        break;
                    }

                case "ایلام":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آبدانان");
                        drliUserStudentEducationBranchName.Items.Add("ایلام");
                        drliUserStudentEducationBranchName.Items.Add("ایوان");
                        drliUserStudentEducationBranchName.Items.Add("دره‌شهر");
                        drliUserStudentEducationBranchName.Items.Add("دهلران");
                        drliUserStudentEducationBranchName.Items.Add("شیروان و چرداول");
                        drliUserStudentEducationBranchName.Items.Add("مهران");


                        break;
                    }

                case "بوشهر":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("بوشهر");
                        drliUserStudentEducationBranchName.Items.Add("تنگستان ");
                        drliUserStudentEducationBranchName.Items.Add("جم");
                        drliUserStudentEducationBranchName.Items.Add("دشتستان");
                        drliUserStudentEducationBranchName.Items.Add("دشتی");
                        drliUserStudentEducationBranchName.Items.Add("دیر");
                        drliUserStudentEducationBranchName.Items.Add("دیلم");
                        drliUserStudentEducationBranchName.Items.Add("کنگان ");
                        drliUserStudentEducationBranchName.Items.Add("گناوه");

                        break;
                    }

                case "تهران":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("اسلام‌شهر");
                        drliUserStudentEducationBranchName.Items.Add("پاکدشت");
                        drliUserStudentEducationBranchName.Items.Add("تهران");
                        drliUserStudentEducationBranchName.Items.Add("دماوند");
                        drliUserStudentEducationBranchName.Items.Add("رباط‌کریم");
                        drliUserStudentEducationBranchName.Items.Add("ری");
                        drliUserStudentEducationBranchName.Items.Add("ساوجبلاغ");
                        drliUserStudentEducationBranchName.Items.Add("شمیرانات");
                        drliUserStudentEducationBranchName.Items.Add("شهریار");
                        drliUserStudentEducationBranchName.Items.Add("فیروزکوه");
                        drliUserStudentEducationBranchName.Items.Add("کرج ");
                        drliUserStudentEducationBranchName.Items.Add("نظرآباد");
                        drliUserStudentEducationBranchName.Items.Add("ورامین");

                        break;
                    }

                case "چهارمحال و بختیاری":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("اردل");
                        drliUserStudentEducationBranchName.Items.Add("بروجن");
                        drliUserStudentEducationBranchName.Items.Add("شهرکرد");
                        drliUserStudentEducationBranchName.Items.Add("فارسان");
                        drliUserStudentEducationBranchName.Items.Add("کوهرنگ");
                        drliUserStudentEducationBranchName.Items.Add("لردگان");

                        break;
                    }

                case "خراسان جنوبی":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("بیرجند");
                        drliUserStudentEducationBranchName.Items.Add("درمیان");
                        drliUserStudentEducationBranchName.Items.Add("سرایان");
                        drliUserStudentEducationBranchName.Items.Add("سربیشه");
                        drliUserStudentEducationBranchName.Items.Add("فردوس");
                        drliUserStudentEducationBranchName.Items.Add("قائنات");
                        drliUserStudentEducationBranchName.Items.Add("نهبندان");

                        break;
                    }

                case "خراسان رضوی":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("بردسکن");
                        drliUserStudentEducationBranchName.Items.Add("تایباد");
                        drliUserStudentEducationBranchName.Items.Add("تربت جام");
                        drliUserStudentEducationBranchName.Items.Add("تربت حیدریه");
                        drliUserStudentEducationBranchName.Items.Add("چناران");
                        drliUserStudentEducationBranchName.Items.Add("خلیل‌آباد");
                        drliUserStudentEducationBranchName.Items.Add("خواف ");
                        drliUserStudentEducationBranchName.Items.Add("درگز");
                        drliUserStudentEducationBranchName.Items.Add("رشتخوار");
                        drliUserStudentEducationBranchName.Items.Add("سبزوار ");
                        drliUserStudentEducationBranchName.Items.Add("سرخس");
                        drliUserStudentEducationBranchName.Items.Add("فریمان");
                        drliUserStudentEducationBranchName.Items.Add("قوچان");
                        drliUserStudentEducationBranchName.Items.Add("کاشمر");
                        drliUserStudentEducationBranchName.Items.Add("کلات");
                        drliUserStudentEducationBranchName.Items.Add("گناباد");
                        drliUserStudentEducationBranchName.Items.Add("مشهد");
                        drliUserStudentEducationBranchName.Items.Add("مه ولات");
                        drliUserStudentEducationBranchName.Items.Add("نیشابور");

                        break;
                    }

                case "خراسان شمالی":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("اسفراین");
                        drliUserStudentEducationBranchName.Items.Add("بجنورد ");
                        drliUserStudentEducationBranchName.Items.Add("جاجرم");
                        drliUserStudentEducationBranchName.Items.Add("شیروان");
                        drliUserStudentEducationBranchName.Items.Add("فاروج");
                        drliUserStudentEducationBranchName.Items.Add("مانه و سملقان");

                        break;
                    }

                case "خوزستان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آبادان");
                        drliUserStudentEducationBranchName.Items.Add("امیدیه");
                        drliUserStudentEducationBranchName.Items.Add("اندیمشک");
                        drliUserStudentEducationBranchName.Items.Add("اهواز");
                        drliUserStudentEducationBranchName.Items.Add("ایذه");
                        drliUserStudentEducationBranchName.Items.Add("باغ‌ملک");
                        drliUserStudentEducationBranchName.Items.Add("بندر ماهشهر");
                        drliUserStudentEducationBranchName.Items.Add("بهبهان");
                        drliUserStudentEducationBranchName.Items.Add("خرمشهر");
                        drliUserStudentEducationBranchName.Items.Add("دزفول");
                        drliUserStudentEducationBranchName.Items.Add("دشت آزادگان");
                        drliUserStudentEducationBranchName.Items.Add("رامشیر");
                        drliUserStudentEducationBranchName.Items.Add("رامهرمز");
                        drliUserStudentEducationBranchName.Items.Add("شادگان");
                        drliUserStudentEducationBranchName.Items.Add("شوش");
                        drliUserStudentEducationBranchName.Items.Add("شوشتر");
                        drliUserStudentEducationBranchName.Items.Add("گتوند");
                        drliUserStudentEducationBranchName.Items.Add("لالی");
                        drliUserStudentEducationBranchName.Items.Add("مسجد سلیمان");
                        drliUserStudentEducationBranchName.Items.Add("هندیجان");

                        break;
                    }

                case "زنجان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("ابهر");
                        drliUserStudentEducationBranchName.Items.Add("ایجرود");
                        drliUserStudentEducationBranchName.Items.Add("خدابنده");
                        drliUserStudentEducationBranchName.Items.Add("خرمدره");
                        drliUserStudentEducationBranchName.Items.Add("زنجان ");
                        drliUserStudentEducationBranchName.Items.Add("طارم");
                        drliUserStudentEducationBranchName.Items.Add("ماه‌نشان");

                        break;
                    }

                case "سمنان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("دامغان");
                        drliUserStudentEducationBranchName.Items.Add("سمنان");
                        drliUserStudentEducationBranchName.Items.Add("شاهرود");
                        drliUserStudentEducationBranchName.Items.Add("گرمسار");
                        drliUserStudentEducationBranchName.Items.Add("مهدی‌شهر");

                        break;
                    }

                case "سیستان و بلوچستان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("ایرانشهر ");
                        drliUserStudentEducationBranchName.Items.Add("چابهار");
                        drliUserStudentEducationBranchName.Items.Add("خاش");
                        drliUserStudentEducationBranchName.Items.Add("دلگان");
                        drliUserStudentEducationBranchName.Items.Add("زابل");
                        drliUserStudentEducationBranchName.Items.Add("زاهدان");
                        drliUserStudentEducationBranchName.Items.Add("زهک");
                        drliUserStudentEducationBranchName.Items.Add("سراوان");
                        drliUserStudentEducationBranchName.Items.Add("سرباز");
                        drliUserStudentEducationBranchName.Items.Add("کنارک");
                        drliUserStudentEducationBranchName.Items.Add("نیک‌شهر");

                        break;
                    }

                case "فارس":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آباده ");
                        drliUserStudentEducationBranchName.Items.Add("ارسنجان");
                        drliUserStudentEducationBranchName.Items.Add("استهبان ");
                        drliUserStudentEducationBranchName.Items.Add("اقلید");
                        drliUserStudentEducationBranchName.Items.Add("بوانات");
                        drliUserStudentEducationBranchName.Items.Add("پاسارگاد");
                        drliUserStudentEducationBranchName.Items.Add("جهرم");
                        drliUserStudentEducationBranchName.Items.Add("خرم‌بید");
                        drliUserStudentEducationBranchName.Items.Add("خنج");
                        drliUserStudentEducationBranchName.Items.Add("داراب");
                        drliUserStudentEducationBranchName.Items.Add("زرین‌دشت");
                        drliUserStudentEducationBranchName.Items.Add("سپیدان");
                        drliUserStudentEducationBranchName.Items.Add("شیراز");
                        drliUserStudentEducationBranchName.Items.Add("فراشبند");
                        drliUserStudentEducationBranchName.Items.Add("فسا");
                        drliUserStudentEducationBranchName.Items.Add("فیروزآباد");
                        drliUserStudentEducationBranchName.Items.Add("قیر و کارزین");
                        drliUserStudentEducationBranchName.Items.Add("کازرون");
                        drliUserStudentEducationBranchName.Items.Add("لارستان");
                        drliUserStudentEducationBranchName.Items.Add("لامِرد");
                        drliUserStudentEducationBranchName.Items.Add("مرودشت ");
                        drliUserStudentEducationBranchName.Items.Add("ممسنی");
                        drliUserStudentEducationBranchName.Items.Add("مهر");
                        drliUserStudentEducationBranchName.Items.Add("نی‌ریز");

                        break;
                    }

                case "قزوین":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آبیک");
                        drliUserStudentEducationBranchName.Items.Add("البرز");
                        drliUserStudentEducationBranchName.Items.Add("بوئین‌زهرا");
                        drliUserStudentEducationBranchName.Items.Add("تاکستان");
                        drliUserStudentEducationBranchName.Items.Add("قزوین");

                        break;
                    }

                case "قم":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("قم");

                        break;
                    }

                case "کردستان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("بانه ");
                        drliUserStudentEducationBranchName.Items.Add("بیجار");
                        drliUserStudentEducationBranchName.Items.Add("دیواندره");
                        drliUserStudentEducationBranchName.Items.Add("سروآباد");
                        drliUserStudentEducationBranchName.Items.Add("سقز ");
                        drliUserStudentEducationBranchName.Items.Add("سنندج");
                        drliUserStudentEducationBranchName.Items.Add("قروه");
                        drliUserStudentEducationBranchName.Items.Add("کامیاران");
                        drliUserStudentEducationBranchName.Items.Add("مریوان");

                        break;
                    }


                case "کرمان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("بافت");
                        drliUserStudentEducationBranchName.Items.Add("بردسیر");
                        drliUserStudentEducationBranchName.Items.Add("بم");
                        drliUserStudentEducationBranchName.Items.Add("جیرفت");
                        drliUserStudentEducationBranchName.Items.Add("راور");
                        drliUserStudentEducationBranchName.Items.Add("رفسنجان");
                        drliUserStudentEducationBranchName.Items.Add("رودبار جنوب");
                        drliUserStudentEducationBranchName.Items.Add("زرند");
                        drliUserStudentEducationBranchName.Items.Add("سیرجان");
                        drliUserStudentEducationBranchName.Items.Add("شهر بابک");
                        drliUserStudentEducationBranchName.Items.Add("عنبرآباد");
                        drliUserStudentEducationBranchName.Items.Add("قلعه گنج ");
                        drliUserStudentEducationBranchName.Items.Add("کرمان");
                        drliUserStudentEducationBranchName.Items.Add("کوهبنان");
                        drliUserStudentEducationBranchName.Items.Add("کهنوج");
                        drliUserStudentEducationBranchName.Items.Add("منوجان");

                        break;
                    }


                case "کرمانشاه":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("اسلام‌آباد غرب");
                        drliUserStudentEducationBranchName.Items.Add("پاوه");
                        drliUserStudentEducationBranchName.Items.Add("ثلاث باباجانی");
                        drliUserStudentEducationBranchName.Items.Add("جوانرود");
                        drliUserStudentEducationBranchName.Items.Add("دالاهو");
                        drliUserStudentEducationBranchName.Items.Add("روانسر");
                        drliUserStudentEducationBranchName.Items.Add("سرپل ذهاب");
                        drliUserStudentEducationBranchName.Items.Add("سنقر");
                        drliUserStudentEducationBranchName.Items.Add("صحنه");
                        drliUserStudentEducationBranchName.Items.Add("قصر شیرین");
                        drliUserStudentEducationBranchName.Items.Add("کرمانشاه ");
                        drliUserStudentEducationBranchName.Items.Add("کنگاور");
                        drliUserStudentEducationBranchName.Items.Add("گیلان غرب");
                        drliUserStudentEducationBranchName.Items.Add("هرسین");

                        break;
                    }

                case "کهگیلویه و بویراحمد":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("بویراحمد");
                        drliUserStudentEducationBranchName.Items.Add("بهمئی");
                        drliUserStudentEducationBranchName.Items.Add("دنا");
                        drliUserStudentEducationBranchName.Items.Add("کهگیلویه");
                        drliUserStudentEducationBranchName.Items.Add("گچساران");

                        break;
                    }

                case "گلستان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آزادشهر");
                        drliUserStudentEducationBranchName.Items.Add("آزادشهر");
                        drliUserStudentEducationBranchName.Items.Add("آق‌قلا");
                        drliUserStudentEducationBranchName.Items.Add("بندر گز");
                        drliUserStudentEducationBranchName.Items.Add("ترکمن ");
                        drliUserStudentEducationBranchName.Items.Add("رامیان");
                        drliUserStudentEducationBranchName.Items.Add("علی‌آباد");
                        drliUserStudentEducationBranchName.Items.Add("کردکوی");
                        drliUserStudentEducationBranchName.Items.Add("کلاله");
                        drliUserStudentEducationBranchName.Items.Add("گرگان ");
                        drliUserStudentEducationBranchName.Items.Add("گنبد کاووس");
                        drliUserStudentEducationBranchName.Items.Add("مراوه‌تپه");
                        drliUserStudentEducationBranchName.Items.Add("مینودشت");

                        break;
                    }

                case "گیلان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آستارا");
                        drliUserStudentEducationBranchName.Items.Add("آستانه اشرفیه");
                        drliUserStudentEducationBranchName.Items.Add("اَملَش");
                        drliUserStudentEducationBranchName.Items.Add("بندر انزلی");
                        drliUserStudentEducationBranchName.Items.Add("رشت");
                        drliUserStudentEducationBranchName.Items.Add("رضوانشهر");
                        drliUserStudentEducationBranchName.Items.Add("رودبار");
                        drliUserStudentEducationBranchName.Items.Add("رودسر");
                        drliUserStudentEducationBranchName.Items.Add("سیاهکل");
                        drliUserStudentEducationBranchName.Items.Add("شَفت");
                        drliUserStudentEducationBranchName.Items.Add("صومعه‌سرا");
                        drliUserStudentEducationBranchName.Items.Add("طوالش");
                        drliUserStudentEducationBranchName.Items.Add("فومَن");
                        drliUserStudentEducationBranchName.Items.Add("لاهیجان ");
                        drliUserStudentEducationBranchName.Items.Add("لنگرود");
                        drliUserStudentEducationBranchName.Items.Add("ماسال");

                        break;
                    }

                case "لرستان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("ازنا");
                        drliUserStudentEducationBranchName.Items.Add("اليگودرز");
                        drliUserStudentEducationBranchName.Items.Add("بروجرد");
                        drliUserStudentEducationBranchName.Items.Add("پل‌دختر");
                        drliUserStudentEducationBranchName.Items.Add("خرم‌آباد ");
                        drliUserStudentEducationBranchName.Items.Add("دورود");
                        drliUserStudentEducationBranchName.Items.Add("دلفان ");
                        drliUserStudentEducationBranchName.Items.Add("سلسله");
                        drliUserStudentEducationBranchName.Items.Add("کوهدشت");

                        break;
                    }


                case "مازندران":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آمل");
                        drliUserStudentEducationBranchName.Items.Add("بابل");
                        drliUserStudentEducationBranchName.Items.Add("بابلسر");
                        drliUserStudentEducationBranchName.Items.Add("بهشهر");
                        drliUserStudentEducationBranchName.Items.Add("تنکابن");
                        drliUserStudentEducationBranchName.Items.Add("جويبار");
                        drliUserStudentEducationBranchName.Items.Add("چالوس");
                        drliUserStudentEducationBranchName.Items.Add("رامسر");
                        drliUserStudentEducationBranchName.Items.Add("ساري");
                        drliUserStudentEducationBranchName.Items.Add("سوادکوه ");
                        drliUserStudentEducationBranchName.Items.Add("قائم‌شهر");
                        drliUserStudentEducationBranchName.Items.Add("گلوگاه");
                        drliUserStudentEducationBranchName.Items.Add("محمودآباد");
                        drliUserStudentEducationBranchName.Items.Add("نکا");
                        drliUserStudentEducationBranchName.Items.Add("نور");
                        drliUserStudentEducationBranchName.Items.Add("نوشهر");

                        break;
                    }

                case "مرکزی":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("آشتيان");
                        drliUserStudentEducationBranchName.Items.Add("اراک");
                        drliUserStudentEducationBranchName.Items.Add("تفرش");
                        drliUserStudentEducationBranchName.Items.Add("خمين");
                        drliUserStudentEducationBranchName.Items.Add("دليجان ");
                        drliUserStudentEducationBranchName.Items.Add("زرنديه");
                        drliUserStudentEducationBranchName.Items.Add("ساوه");
                        drliUserStudentEducationBranchName.Items.Add("شازند");
                        drliUserStudentEducationBranchName.Items.Add("کميجان");
                        drliUserStudentEducationBranchName.Items.Add("محلات");

                        break;
                    }

                case "هرمزگان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("ابوموسي");
                        drliUserStudentEducationBranchName.Items.Add("بستک");
                        drliUserStudentEducationBranchName.Items.Add("بندر عباس");
                        drliUserStudentEducationBranchName.Items.Add("بندر لنگه");
                        drliUserStudentEducationBranchName.Items.Add("جاسک");
                        drliUserStudentEducationBranchName.Items.Add("حاجي‌آباد");
                        drliUserStudentEducationBranchName.Items.Add("خمير ");
                        drliUserStudentEducationBranchName.Items.Add("رودان");
                        drliUserStudentEducationBranchName.Items.Add("قشم");
                        drliUserStudentEducationBranchName.Items.Add("گاوبندي");
                        drliUserStudentEducationBranchName.Items.Add("ميناب");

                        break;
                    }

                case "همدان":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("اسدآباد");
                        drliUserStudentEducationBranchName.Items.Add("بهار");
                        drliUserStudentEducationBranchName.Items.Add("تويسرکان");
                        drliUserStudentEducationBranchName.Items.Add("رزن ");
                        drliUserStudentEducationBranchName.Items.Add("کبودرآهنگ");
                        drliUserStudentEducationBranchName.Items.Add("ملاير");
                        drliUserStudentEducationBranchName.Items.Add("نهاوند");
                        drliUserStudentEducationBranchName.Items.Add("همدان");

                        break;
                    }

                case "یزد":
                    {
                        drliUserStudentEducationBranchName.Items.Clear();
                        drliUserStudentEducationBranchName.Items.Add("ابرکوه");
                        drliUserStudentEducationBranchName.Items.Add("اردکان");
                        drliUserStudentEducationBranchName.Items.Add("بافق ");
                        drliUserStudentEducationBranchName.Items.Add("تفت");
                        drliUserStudentEducationBranchName.Items.Add("خاتم");
                        drliUserStudentEducationBranchName.Items.Add("صدوق");
                        drliUserStudentEducationBranchName.Items.Add("طبس");
                        drliUserStudentEducationBranchName.Items.Add("مهريز");
                        drliUserStudentEducationBranchName.Items.Add("مِيبُد");
                        drliUserStudentEducationBranchName.Items.Add("يزد");

                        break;
                    }



            }
        }

        protected void drliStudentUniversity_TextChanged(object sender, EventArgs e)
        {
            nemayesheShahrhayeOstan();
        }



    }
}