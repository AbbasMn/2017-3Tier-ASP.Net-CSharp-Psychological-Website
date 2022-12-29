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
    public partial class AdminInserVideo : System.Web.UI.Page
    {
        public string videoPicName = string.Empty;
        public string videoFileName = string.Empty;
        public string videoFileType = string.Empty;


        public void nemayesheDasteRavanshenasi()
        {
            University unv = new University();
            drlistvideoDaste.DataSource = unv.showAllUniversities("distinct UniversityAddress", null, " order by UniversityAddress");
            drlistvideoDaste.DataBind();
        } 

        public void nemayesheMozoateRavanshenasi()
        {
            University unv = new University();
            drlistvideoPriority.DataSource = unv.showAllUniversities("UniversityName", " UniversityAddress='" + drlistvideoDaste.Text + "'", " order by UniversityName");
            drlistvideoPriority.DataBind();
        }

        protected void clear()
        {
            txtvideoPassage.Text = string.Empty;
            txtvideoRelatedLink.Text = string.Empty;
            txtvideoTitle.Text = string.Empty;
            lblvideoFileName.Text = string.Empty;
            lblvideoPicName.Text = string.Empty;
            txtvideoTime.Text = string.Empty;
            txtvideoOwner.Text = string.Empty;
            PersianDatePickup1.Text = string.Empty;
        }

        protected void insertvideo()
        {

            DataBaseOperations dbo = new DataBaseOperations();
            
            txtvideoTitle.Text = txtvideoTitle.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            txtvideoPassage.Text = txtvideoPassage.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            //txtvideoRelatedLink.Text = txtvideoRelatedLink.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
                  
            txtvideoTime.Text = txtvideoTime.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");
            txtvideoOwner.Text=txtvideoOwner.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

              string[] fieldsOfTable = new string[15];            
              string[] valuesOfField = new string[15];
                
 

                                
                fieldsOfTable[0]="videoTitle";
                valuesOfField[0]=txtvideoTitle.Text.ToString();
                

                fieldsOfTable[1]="videoPassage";
                valuesOfField[1] = txtvideoPassage.Text.Replace(Environment.NewLine, "<br />");

                fieldsOfTable[2] = "videoFileName";
                valuesOfField[2] = videoFileName;
            
                                                
                fieldsOfTable[3]="videoTime" ;
                valuesOfField[3] = txtvideoTime.Text;
                                                          
                fieldsOfTable[4]="videoOwner";
                valuesOfField[4] = txtvideoOwner.Text; ;


                fieldsOfTable[5] = "videoDate";
                valuesOfField[5] = PersianDatePickup1.PersianDateString.ToString();

                fieldsOfTable[6] = "videoMozoo";
                valuesOfField[6] = drlistvideoPriority.SelectedItem.Text;
                                    
                fieldsOfTable[7] = "videoShoingwToWhatMember";
                valuesOfField[7] = drlistvideoDownloadingFileByWhatMemberType.Text.ToString().Trim();


                fieldsOfTable[8] = "videoMabhas";
                valuesOfField[8] = drlistvideoDaste.SelectedItem.Text;

                fieldsOfTable[9] = "videoPicName";
                valuesOfField[9] = videoPicName;

                fieldsOfTable[10] = "videoFileDownloadLink";
                valuesOfField[10] = txtvideoRelatedLink.Text.ToString();



                Exception excp = dbo.insertQuery("Tablevideo", fieldsOfTable, valuesOfField); 

            if (excp == null)
                lblMessage.Text = "ویدیوارسال شد.";

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
                            mail.Subject = txtvideoTitle.Text.ToString();
                            //mail.Body=
                            string mailBody = @"<table dir=""rtl"" align=""center"" style=""font-family:BYekan; font-size:14px; width:100%; font-weight:bold;"">" +
                            "<tr>" +
                            @"<td colspan=""2"" align=""center"" width=""100%"" style=""font-family:BYekan; color:#00b1b2; font-size:30px; line-height:30px;""> معرفی ویدیو  :" + txtvideoTitle.Text.ToString() + "</td>" +
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
                                @"<span style=""width:170px;"">مبحث : " + drlistvideoDaste.SelectedItem.Text + "   -   </span>" +
                                @"<span style=""width:170px;"">موضوع : " + drlistvideoPriority.SelectedItem.Text + "   -   </span>" +
                                @"<span style=""width:110px;"">سخنران : " + txtvideoOwner.Text + "   -   </span>" +
                                @"<span style=""width:170px;"">مدت زمان ویدیو : " + txtvideoTime.Text + "</span></td>" +
                                "</tr>";


                            string path = Server.MapPath("~\\VideoClips\\VideoImages\\" + videoPicName);

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
                                              برای مشاهده ویدیو به سایت rahe-zendegi.ir مراجعه نمایید.
                                     </br>
                                 </p> 
                            </td> 
                          </tr> 

                           <tr>" +
                                    @"<td align=""right"" width=""100%"" ""> 
                                   <p style=""font-family:BYekan;text-align:justify; font-size:25px; line-height:35px;"">" +
                                     txtvideoPassage.Text.Replace(Environment.NewLine, "<br />") + "</p></td>" +
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


            videoFileName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 20480; // 20 Meg
            string FileUploadFolderPass = Server.MapPath("~\\VideoClips\\Videos\\");
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
                        videoFileType = ".PDF";

                    if (FileExtention.ToUpper() == ".RAR")
                        videoFileType = ".RAR";

                    if (FileExtention.ToUpper() == ".ZIP")
                        videoFileType = ".ZIP";

                    if (FileExtention.ToUpper() == ".DOC")
                        videoFileType = ".DOC";

                    if (FileExtention.ToUpper() == ".DOCX")
                        videoFileType = ".DOCX";

                    if (FileExtention.ToUpper() == ".PPTX")
                        videoFileType = ".PPTX";

                    if (FileExtention.ToUpper() == ".PPT")
                        videoFileType = ".PPT";

                    if (FileExtention.ToUpper() == ".PPSX")
                        videoFileType = ".PPSX";

                    if (FileExtention.ToUpper() == ".PPS")
                        videoFileType = ".PPS";


                    FileLenth = FileUpLAttachFile.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {


                            string s = FileUploadFolderPass + "/";



                            FilePass = FileUploadFolderPass + "/" + Filename;

                            videoFileName = Filename;

                            if (System.IO.File.Exists(FileUploadFolderPass + "/" + videoFileName))
                            {
                                //if (lblvideoFileName.Text != Filename)
                                //{
                                //    System.IO.File.Delete(FileUploadFolderPass + "/" + lblvideoFileName.Text);
                                //}

                                FileSelectedMessage = "فایل انتخاب شده با توجه به نام آن قبلا ارسال شده است";
                                lblMessage.Text = FileSelectedMessage;
                                return false;
                            }

                            FileUpLAttachFile.SaveAs(FilePass);

                            lblvideoFileName.Text = Filename;

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
            videoPicName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 10500; // 5 Meg
            string FileUploadFolderPass = Server.MapPath("~\\VideoClips\\VideoImages\\"); ;
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




                            videoPicName = Filename;




                            if (System.IO.File.Exists(FileUploadFolderPass + "/" + lblvideoPicName.Text))
                            {
                                if (lblvideoPicName.Text != Filename)
                                {
                                    System.IO.File.Delete(FileUploadFolderPass + "/" + lblvideoPicName.Text);
                                }
                            }
                            lblvideoPicName.Text = Filename;

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

            txtvideoTitle.Focus();

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


        protected void LinkButtonvideoPic_Click(object sender, EventArgs e)
        {
            try
            {
                uploadPic();
            }
            catch
            {
            }
        }
        protected void LinkButtonvideoFile_Click(object sender, EventArgs e)
        {
            try
            {
                uploadFile();
            }
            catch
            {
            }

        }



        protected void drlistvideoType_TextChanged(object sender, EventArgs e)
        {
            nemayesheMozoateRavanshenasi();
            drlistvideoPriority.Focus();
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
                    videoFileName = string.Empty;
                    videoFileType = string.Empty;
                }

                if (FileUpLdPic.HasFile)
                {
                    if (!uploadPic())
                        check = false;
                }
                else
                    videoPicName = "default.jpg";


                if (check)
                {
                    insertvideo();
                    clear();
                    txtvideoTitle.Focus();
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