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


using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace PresentationLayer.Admin
{
    public partial class AdminInserBook : System.Web.UI.Page
    {
        public string bookPicName = string.Empty;
        public string bookFileName = string.Empty;
        public string bookFileType = string.Empty;


        public void nemayesheDasteRavanshenasi()
        {
            University unv = new University();
            drlistbookDaste.DataSource = unv.showAllUniversities("distinct UniversityAddress", null, " order by UniversityAddress");
            drlistbookDaste.DataBind();
        } 

        public void nemayesheMozoateRavanshenasi()
        {
            University unv = new University();
            drlistbookPriority.DataSource = unv.showAllUniversities("UniversityName", " UniversityAddress='" + drlistbookDaste.Text + "'", " order by UniversityName");
            drlistbookPriority.DataBind();
        }

        protected void clear()
        {
            txtbookPassage.Text = string.Empty;
            txtbookRelatedLink.Text = string.Empty;
            txtbookTitle.Text = string.Empty;
            lblbookFileName.Text = string.Empty;
            lblbookPicName.Text = string.Empty;
            txtbookPageCount.Text = string.Empty;
            txtbookWriter.Text = string.Empty;
        }

        protected void insertbook()
        {

            DataBaseOperations dbo = new DataBaseOperations();
            
            txtbookTitle.Text = txtbookTitle.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            txtbookPassage.Text = txtbookPassage.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            txtbookRelatedLink.Text = txtbookRelatedLink.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
                  
            txtbookPageCount.Text = txtbookPageCount.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            txtbookWriter.Text=txtbookWriter.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

              string[] fieldsOfTable = new string[15];            
              string[] valuesOfField = new string[15];
                
 

                                
                fieldsOfTable[0]="bookTitle";
                valuesOfField[0]=txtbookTitle.Text.ToString();
                

                fieldsOfTable[1]="bookPassage";
                valuesOfField[1] = txtbookPassage.Text.Replace(Environment.NewLine, "<br />");

                fieldsOfTable[2] = "bookFileName";
                valuesOfField[2] = bookFileName;
            
                                                
                fieldsOfTable[3]="bookPageCount" ;
                valuesOfField[3] = txtbookPageCount.Text;
                                                          
                fieldsOfTable[4]="bookWriter";
                valuesOfField[4] = txtbookWriter.Text;
                                                           

                fieldsOfTable[5]="bookFormat" ;
                valuesOfField[5] = bookFileType;

                fieldsOfTable[6] = "bookMozoo";
                valuesOfField[6] = drlistbookPriority.SelectedItem.Text;
                                    
                fieldsOfTable[7] = "bookShoingwToWhatMember";
                valuesOfField[7] = drlistbookDownloadingFileByWhatMemberType.Text.ToString().Trim();


                fieldsOfTable[8] = "bookMabhas";
                valuesOfField[8] = drlistbookDaste.SelectedItem.Text;

                fieldsOfTable[9] = "bookPicName";
                valuesOfField[9] = bookPicName;

                fieldsOfTable[10] = "bookBigFileDownloadLink";
                valuesOfField[10] = txtbookRelatedLink.Text.ToString().Trim();



                Exception excp = dbo.insertQuery("TableBook", fieldsOfTable, valuesOfField); 

            if (excp == null)
                lblMessage.Text = "معرفی کتاب ارسال شد.";

               

              DataTable dt = new DataTable();
              
                dt = dbo.selectQueryDataTable("TableUserStudent", "*",
                                " UserStudentSpecialty='عضویت ويژه'" , null);
                if (dt.Rows.Count > 0)
                {

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        MailMessage mail = new MailMessage();
                        try
                        {

                            mail.To.Add(dt.Rows[0]["UserStudentEmail"].ToString());
                            mail.From = new MailAddress("info@rahe-zendegi.ir", "وب سایت راه زندگی ", System.Text.Encoding.UTF8);
                            mail.BodyEncoding = System.Text.Encoding.UTF8;
                            mail.IsBodyHtml = true;
                            mail.Subject = txtbookTitle.Text.ToString();
                            //mail.Body=
                            string mailBody = @"<table dir=""rtl"" align=""center"" style=""font-family:BYekan; font-size:14px; width:100%; font-weight:bold;"">" +
                            "<tr>" +
                            @"<td colspan=""2"" align=""center"" width=""100%"" style=""font-family:BYekan; color:#00b1b2; font-size:30px; line-height:30px;""> معرفی کتاب  :" + txtbookTitle.Text.ToString() + "</td>" +
                            "</tr>" +

                            @"<tr> 
                        <td colspan=""2"" width=""100%"" align=""center"">
                                <p style=""font-family:BYekan;text-align:justify; line-height:20px;"">
                                    </br>
                                </p>                 
                           
                        </td>
                        </tr>" +

                                "<tr>" +
                                @"<td colspan=""2"" align=""center"" width=""100%"" style=""font-family:BYekan; color:green; font-size:20px; line-height:25px;"">" +
                                @"<span style=""width:170px;"">مبحث : " + drlistbookDaste.SelectedItem.Text + "   -   </span>" +
                                @"<span style=""width:170px;"">موضوع : " + drlistbookPriority.SelectedItem.Text + "   -   </span>" +
                                @"<span style=""width:110px;"">نویسنده : " + txtbookWriter.Text + "   -   </span>" +
                                @"<span style=""width:170px;"">تعداد صفحه : " + txtbookPageCount.Text + "</span></td>" +
                                "</tr>";


                            string path = Server.MapPath("~\\BookFiles\\BooksImages\\" + bookPicName);

                            LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);

                            Img.ContentId = "MyImage";
                            mailBody = mailBody + @" 

                          <tr> 
                            <td colspan=""2"" width=""100%"" align=""center""> 
                                  <p style=""font-family:BYekan;text-align:justify; line-height:20px;"">
                                     </br>
                                 </p> 
                            </td> 
                          </tr> 

                          <tr> 
                            <td colspan=""2"" width=""100%"" align=""center""> 
                              <img src=cid:MyImage  id='img' alt='' width='280px' height='180px'/>  
                            </td> 
                          </tr> 

                          <tr> 
                            <td colspan=""2"" width=""100%"" align=""center""> 
                                  <p style=""font-family:BYekan; line-height:25px;color:green; font-size:25px;"">
                                      </br>
                                              برای دانلود کتاب به سایت rahe-zendegi.ir مراجعه نمایید.
                                     </br>
                                 </p> 
                            </td> 
                          </tr> 

                           <tr>" +
                                    @"<td align=""right"" width=""100%"" ""> 
                                   <p style=""font-family:BYekan;text-align:justify; font-size:25px; line-height:35px;"">" + 
                                     txtbookPassage.Text.Replace(Environment.NewLine, "<br />") + "</p></td>" +
                                    "</tr>" +
                              @"<tr> 
                            <td colspan=""2"" width=""100%"" align=""center""> 
                                  <p style=""font-family:BYekan;text-align:justify;"">
                                     </br>
                                    <hr style=""border-width:1.5px;  border-color:Orange; width:100%""/>
                                 </p> 
                            </td> 
                          </tr>" +

                               "<tr>" +
                                    @"<td align=""right"" width=""100%"" "">" +
                                    @"<p style=""width:100%;font-family:BYekan;text-align:justify; color:#0099ff;font-size:22px; line-height:22px;"">" +
                                 " درباره وب سایت راه زندگی  Rahe-zendegi.ir  " +

                                     "</p></br></td></tr>" +

                               "<tr>" +
                                    @"<td align=""right"" width=""100%"" "">" +
                                    @"<p style=""font-family:BYekan;text-align:justify; color:green;font-size:20px; line-height:20px;"">" +
                                 "وب سايت راه زندگي، ارائه دهنده مشاوره خانواده، مشاوره ازدواج، مشاوره اعتياد و مشاوره کودکان و ... است. اين وب سايت آخرين و تخصصي ترين و علمي ترين مطالب و اطلاعات روانشناسي در موضوعات علم روانشناسسي و روانپزشکي و همچنين خدمات مشاوره حضوري و مشاوره تلفني را به شما ارائه مي نمايد. " +

                                     "</p></br></td>" +
                               "</tr>" +

                               "<tr>" +
                                    @"<td align=""right"" width=""100%"" "">" +
                                    @"<p style=""font-family:BYekan;text-align:justify; color:green;font-size:20px; line-height:20px;"">" +
                                 "بزرگترين آرزوي ما اين است که علاقمندان علم روانشناسي بتوانند تمامي نيازهاي خود را در وب سایت راه زندگی بيابند و اميدواريم که بتوانيم اعتماد و توجه تمامي شما عزيزان را به خود جلب کنيم. همواره پذيراي انتقادات و پيشنهادات شما خواهيم بود." +

                                     "</p></br></td></tr>" +

                             "</table>";



                            AlternateView AV =
                            AlternateView.CreateAlternateViewFromString(mailBody, null, MediaTypeNames.Text.Html);
                            AV.LinkedResources.Add(Img);

                            mail.IsBodyHtml = true;

                            mail.AlternateViews.Add(AV);



                            SmtpClient client = new SmtpClient();



                            client.Host = "webmail.rahe-zendegi.ir";
                            client.Credentials = new System.Net.NetworkCredential("info@rahe-zendegi.ir", "afrooz3131");

                            client.Send(mail);
                        }
                        catch (Exception ex)
                        {
                            //lblMessage.Text = ex.Message;
                        }
                    }
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = excp.Message.ToString();
                }

        }

        public bool uploadFile()
        {


            bookFileName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 20480; // 20 Meg
            string FileUploadFolderPass = Server.MapPath("~\\BookFiles\\Books\\");
            //int FileImageWith = 800;
            //int FileImageHeight = 600;

            int FileLenth;
            if (FileUpLAttachFile.HasFile)
            {
                Filename = FileUpLAttachFile.FileName;


                FileExtention = System.IO.Path.GetExtension(Filename);

                if (FileExtention.ToUpper() == ".PPS" || FileExtention.ToUpper() == ".PPSX" || FileExtention.ToUpper() == ".PPTX" || FileExtention.ToUpper() == ".PPT" || FileExtention.ToUpper() == ".PDF" || FileExtention.ToUpper() == ".RAR" || FileExtention.ToUpper() == ".ZIP" || FileExtention.ToUpper() == ".DOC" || FileExtention.ToUpper() == ".DOCX")
                {
                    if (FileExtention.ToUpper() == ".PDF")
                        bookFileType = ".PDF";

                    if (FileExtention.ToUpper() == ".RAR")
                        bookFileType = ".RAR";

                    if (FileExtention.ToUpper() == ".ZIP")
                        bookFileType = ".ZIP";

                    if (FileExtention.ToUpper() == ".DOC")
                        bookFileType = ".DOC";

                    if (FileExtention.ToUpper() == ".DOCX")
                        bookFileType = ".DOCX";

                    if (FileExtention.ToUpper() == ".PPTX")
                        bookFileType = ".PPTX";

                    if (FileExtention.ToUpper() == ".PPT")
                        bookFileType = ".PPT";

                    if (FileExtention.ToUpper() == ".PPSX")
                        bookFileType = ".PPSX";

                    if (FileExtention.ToUpper() == ".PPS")
                        bookFileType = ".PPS";


                    FileLenth = FileUpLAttachFile.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {


                            string s = FileUploadFolderPass + "/";



                            FilePass = FileUploadFolderPass + "/" + Filename;

                            bookFileName = Filename;

                            if (System.IO.File.Exists(FileUploadFolderPass + "/" + bookFileName))
                            {
                                //if (lblbookFileName.Text != Filename)
                                //{
                                //    System.IO.File.Delete(FileUploadFolderPass + "/" + lblbookFileName.Text);
                                //}

                                FileSelectedMessage = "فایل انتخاب شده با توجه به نام آن قبلا ارسال شده است";
                                lblMessage.Text = FileSelectedMessage;
                                return false;
                            }

                            FileUpLAttachFile.SaveAs(FilePass);

                            lblbookFileName.Text = Filename;

                            return true;


                        }
                        catch (Exception excp)
                        {
                            lblMessage.Text = excp.Message.ToString();
                            return false;
                        }
                    }
                    else
                    {
                        FileSizeMessage = "سایز فايل بزرگ است";
                        lblMessage.Text = FileSizeMessage;
                        return false;
                    }


                }
                else
                {
                    FileTypeMessage = "نوع فایل معتبر نیست";
                    lblMessage.Text = FileTypeMessage;
                    return false;
                }
            }
            else
            {
                FileSelectedMessage = "فایل کتاب را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
                return false;
            }
        }

        public bool uploadPic()
        {
            bookPicName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 10500; // 5 Meg
            string FileUploadFolderPass = Server.MapPath("~\\BookFiles\\BooksImages\\"); ;
            int FileImageWith = 800;
            int FileImageHeight = 600;

            int FileLenth;
            if (FileUpLdPic.HasFile)
            {
                Filename = FileUpLdPic.FileName;


                FileExtention = System.IO.Path.GetExtension(Filename);

                if (FileExtention.ToUpper() == ".JPG" || FileExtention.ToUpper() == ".BMP")
                {
                    FileLenth = FileUpLdPic.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {
                            //Filename = Guid.NewGuid().ToString() + ".JPG";

                            System.Drawing.Bitmap Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLdPic.FileContent));

                            Bmp.Save(FileUploadFolderPass + "/" + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

                            Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLdPic.FileContent), new System.Drawing.Size(FileImageWith, FileImageHeight));

                            Bmp.Save(FileUploadFolderPass + "/" + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

                            FilePass = FileUploadFolderPass + "/" + Filename;




                            bookPicName = Filename;




                            if (System.IO.File.Exists(FileUploadFolderPass + "/" + lblbookPicName.Text))
                            {
                                if (lblbookPicName.Text != Filename)
                                {
                                    System.IO.File.Delete(FileUploadFolderPass + "/" + lblbookPicName.Text);
                                }
                            }
                            lblbookPicName.Text = Filename;

                            return true;


                        }
                        catch (Exception excp)
                        {
                            lblMessage.Text = excp.Message.ToString();
                            return false;
                        }
                    }
                    else
                    {
                        FileSizeMessage = "سایز عکس بزرگ است";
                        lblMessage.Text = FileSizeMessage;
                        return false;
                    }


                }
                else
                {
                    FileTypeMessage = "انتخاب کنید یک فایل با پسوند jpg یا bmp";
                    lblMessage.Text = FileTypeMessage;
                    return false;
                }
            }
            else
            {
                FileSelectedMessage = "فایل عکس را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
                return false;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            txtbookTitle.Focus();

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/Main.aspx");

            if (!IsPostBack)
            {
                nemayesheDasteRavanshenasi();
                nemayesheMozoateRavanshenasi();
                clear();
            }
        }


        protected void LinkButtonbookPic_Click(object sender, EventArgs e)
        {
            try
            {
                uploadPic();
            }
            catch
            {
            }
        }
        protected void LinkButtonbookFile_Click(object sender, EventArgs e)
        {
            try
            {
                uploadFile();
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
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

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

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
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

        protected void drlistbookType_TextChanged(object sender, EventArgs e)
        {
            nemayesheMozoateRavanshenasi();
            drlistbookPriority.Focus();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            bool check = true;

            try
            {
                if (FileUpLAttachFile.HasFile)
                {
                    if (!uploadFile())
                        check = false;
                }
                else
                {
                    bookFileName = string.Empty;
                    bookFileType = string.Empty;
                }

                if (FileUpLdPic.HasFile)
                {
                    if (!uploadPic())
                        check = false;
                }
                else
                    bookPicName = "default.jpg";


                if (check)
                {
                    insertbook();
                    clear();
                    txtbookTitle.Focus();
                }
                //else
                //    lblMessage.Text = "خطا در ارسال عکس يا فايل";
            }
            catch
            {
            }
        }




    }
}