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


using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace PresentationLayer
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        public DataBaseOperations dbo = new DataBaseOperations();

        public DataTable dt = new DataTable();


        public void sendToMail()
        {

            dt = dbo.selectQueryDataTable("TableUserStudent", "*",
                                " UserStudentUserName=" + "'" + txtUserStudentUserName.Text.Trim() + "'" +
                                " and UserStudentEmail=" + "'" + txtUserStudentEmail.Text.Trim() + "'", null);
            if (dt.Rows.Count == 0)
            {
                lblMessage.Text = "اطلاعات وارد شده درست نیست.";
            }
            else
            {
                if (dt.Rows.Count == 1)
                {

                    MailMessage mail = new MailMessage();
                    try
                    {

                        mail.To.Add(txtUserStudentEmail.Text.Trim());
                        mail.From = new MailAddress("info@rahe-zendegi.ir", "وب سایت راه زندگی ", System.Text.Encoding.UTF8);
                        mail.BodyEncoding = System.Text.Encoding.UTF8;
                        mail.IsBodyHtml = true;
                        mail.Subject = "مشخصات شما در سایت";
                        //mail.Body=
                        string mailBody = @"<table dir=""rtl"" align=""center"" style=""font-family:Tahoma; font-size:14px; width:60%; font-weight:bold;"">" +
                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + "نام : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentName"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " نام خانوادگی : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentLastName"].ToString() + "</td>" +
                        "</tr>" +


                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " کد کاربری : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentRowID"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " نام کاربری : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentUserName"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " کلمه عبور : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentPassword"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " استان : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentUnivesityName"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " شهر/شهرستان/روستا : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentEducationBranchName"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " کُدپستی : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentOfficeName"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " ايميل : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentEmail"].ToString() + "</td>" +
                        "</tr>" +


                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " تلفن همراه : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentCellPhone"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " تلفن ثابت : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentPhone"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " آدرس پستی : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentAddress"].ToString() + "</td>" +
                        "</tr>" +

                        "<tr>" +
                        @"<td align=""right"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + " نوع عضویت : " + "</td>" +
                        @"<td align=""left"" width=""50%"" style=""font-family:Tahoma; font-size:14px;"">" + dt.Rows[0]["UserStudentSpecialty"].ToString() + "</td>" +
                        "</tr>";


                        string path = Server.MapPath("~\\NewsImages\\default.jpg");

                        LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);

                        Img.ContentId = "MyImage";
                        mailBody = mailBody + @" 
                  <tr> 
                    <td colspan=""2"" width=""100%"" align=""center""> 
                      <img src=cid:MyImage  id='img' alt='' width='450px' height='160px'/>  
                    </td> 
                  </tr> 

                  <tr> 
                    <td colspan=""2"" width=""100%"" align=""center"" style=""font-family:Tahoma; font-size:14px;  font-weight:bold;""> 
                                                          وب سایت شخصی افروز احرامی   -  کارشناس ارشد روانشناسی  
                    </td> 
                  </tr></table>";



                        AlternateView AV =
                        AlternateView.CreateAlternateViewFromString(mailBody, null, MediaTypeNames.Text.Html);
                        AV.LinkedResources.Add(Img);

                        mail.IsBodyHtml = true;

                        mail.AlternateViews.Add(AV);







                        SmtpClient client = new SmtpClient();



                        client.Host = "webmail.rahe-zendegi.ir";
                        client.Credentials = new System.Net.NetworkCredential("info@rahe-zendegi.ir", "afrooz3131");

                        client.Send(mail);
                        lblMessage.Text = "مشخصات عضویت با موفقیت به ایمیل وارد شده ارسال شد.";
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = ex.Message;
                    }

                    


                }
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


        protected void Page_Load(object sender, EventArgs e)
        {
           

            try
            {
                if (!IsPostBack)
                {

                    txtUserStudentUserName.Focus();
                    lblMessage.Text = "";
                    
                }
            }
            catch
            {
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           
            if (checkSQLInjection(txtUserStudentUserName.Text.Trim(),"نام کاربری"))
                if (checkSQLInjection(txtUserStudentUserName.Text.Trim(), "کلمه عبور"))
                {
                    sendToMail();
                    txtUserStudentUserName.Text = "";
                    txtUserStudentEmail.Text = "";
                }
        }









    }
}