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
    public partial class AdminAtieNoo : System.Web.UI.Page
    {
        public string newsPicName = string.Empty;
        public string newsFileName = string.Empty;
        public string newsFileType = string.Empty;


        public void nemayesheDasteRavanshenasi()
        {
            University unv = new University();
            drlistnewsDaste.DataSource = unv.showAllUniversities("distinct UniversityAddress", null, " order by UniversityAddress");
            drlistnewsDaste.DataBind();
        } 

        public void nemayesheMozoateRavanshenasi()
        {
            University unv = new University();
            drlistnewsPriority.DataSource = unv.showAllUniversities("UniversityName", " UniversityAddress='" + drlistnewsDaste.Text + "'", " order by UniversityName");
            drlistnewsPriority.DataBind();
        }

        protected void clear()
        {
            PersianDatePickup1.Text = string.Empty;
            txtnewsPassage.Text = string.Empty;
            txtnewsRelatedLink.Text = string.Empty;
            txtnewsTitle.Text = string.Empty;
            lblNewsFileName.Text = string.Empty;
            lblNewsPicName.Text = string.Empty;
        }

        protected void insertNews()
        {

            News myNews = new News();
            
            txtnewsTitle.Text = txtnewsTitle.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            txtnewsPassage.Text = txtnewsPassage.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            txtnewsRelatedLink.Text = txtnewsRelatedLink.Text.Replace("۰", "0").Replace("۱", "1").Replace("۲", "2").Replace("۳", "3").Replace("۴", "4").Replace("۵", "5").Replace("۶", "6").Replace("v", "7").Replace("۸", "8").Replace("۹", "9");

            myNews.newsTitle = txtnewsTitle.Text.ToString();
            myNews.newsPassage = txtnewsPassage.Text.Replace("<br />",Environment.NewLine);
            myNews.newsDate = PersianDatePickup1.PersianDateString;

            myNews.newsAouthorType = Session["UserType"].ToString().Trim();
            myNews.newsType = drlistnewsDaste.Text.ToString();


            myNews.newsShowingPermision = false;

            if (Session["UserType"] == "Admin")
            {
                myNews.newsAouthorName = Session["AdminName"].ToString().Trim();
                myNews.newsAouthorLastName = Session["AdminLastName"].ToString().Trim();
                myNews.newsAouthorID = Convert.ToInt16(Session["AdminID"].ToString().Trim());
            }
            else

                if (Session["UserType"] == "Teacher")
                {
                    myNews.newsAouthorName = Session["TeacherName"].ToString().Trim();
                    myNews.newsAouthorLastName = Session["TeacherLastName"].ToString().Trim();
                    myNews.newsAouthorID = Convert.ToInt16(Session["TeacherID"].ToString().Trim());
                }
                else

                    if (Session["UserType"] == "Student")
                    {
                        myNews.newsAouthorName = Session["StudentName"].ToString().Trim();
                        myNews.newsAouthorLastName = Session["StudentLastName"].ToString().Trim();
                        myNews.newsAouthorID = Convert.ToInt16(Session["UserStudentRowID"].ToString().Trim());
                    }

            myNews.newsPriority = drlistnewsPriority.Text.ToString().Trim();


            myNews.newsPictureName = newsPicName;


            myNews.newsRelatedLink = txtnewsRelatedLink.Text.ToString().Trim();


            myNews.newsUploadedFileName = newsFileName;



            myNews.newsUploadedFileType = newsFileType;

            myNews.newsShoingwToWhatMemberType = drlistnewsShoingwToWhatMemberType.Text.ToString().Trim();

            myNews.newsDownloadingFilePermision = false;

            myNews.newsDownloadingFileByWhatMemberType = drlistnewsDownloadingFileByWhatMemberType.Text.ToString().Trim();

            if (rdioTypeNews.Checked)
                myNews.newsBranchName = "مطلب روانشناسی";
            else
                myNews.newsBranchName = "مقاله روانشناسی";

            Exception excp = myNews.insertNews("TableAtieNoo");

            if (excp == null)
                lblMessage.Text = "اطلاعيه ارسال شد.";
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = excp.Message.ToString();
            }

        }

        public bool uploadFile()
        {


            newsFileName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 20480; // 20 Meg
            string FileUploadFolderPass = Server.MapPath("~\\NewsFiles\\");
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
                        newsFileType = ".PDF";

                    if (FileExtention.ToUpper() == ".RAR")
                        newsFileType = ".RAR";

                    if (FileExtention.ToUpper() == ".ZIP")
                        newsFileType = ".ZIP";

                    if (FileExtention.ToUpper() == ".DOC")
                        newsFileType = ".DOC";

                    if (FileExtention.ToUpper() == ".DOCX")
                        newsFileType = ".DOCX";

                    if (FileExtention.ToUpper() == ".PPTX")
                        newsFileType = ".PPTX";

                    if (FileExtention.ToUpper() == ".PPT")
                        newsFileType = ".PPT";

                    if (FileExtention.ToUpper() == ".PPSX")
                        newsFileType = ".PPSX";

                    if (FileExtention.ToUpper() == ".PPS")
                        newsFileType = ".PPS";


                    FileLenth = FileUpLAttachFile.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {


                            string s = FileUploadFolderPass + "/";



                            FilePass = FileUploadFolderPass + "/" + Filename;

                            newsFileName = Filename;

                            if (System.IO.File.Exists(FileUploadFolderPass + "/" + newsFileName))
                            {
                                //if (lblNewsFileName.Text != Filename)
                                //{
                                //    System.IO.File.Delete(FileUploadFolderPass + "/" + lblNewsFileName.Text);
                                //}

                                FileSelectedMessage = "فایل انتخاب شده با توجه به نام آن قبلا ارسال شده است";
                                lblMessage.Text = FileSelectedMessage;
                                return false;
                            }

                            FileUpLAttachFile.SaveAs(FilePass);

                            lblNewsFileName.Text = Filename;

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
                FileSelectedMessage = "فایل ضميمه را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
                return false;
            }
        }

        public bool uploadPic()
        {
            newsPicName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 10500; // 5 Meg
            string FileUploadFolderPass = Server.MapPath("~\\NewsImages\\");;
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




                            newsPicName = Filename;




                            if (System.IO.File.Exists(FileUploadFolderPass + "/" + lblNewsPicName.Text))
                            {
                                if (lblNewsPicName.Text != Filename)
                                {
                                    System.IO.File.Delete(FileUploadFolderPass + "/" + lblNewsPicName.Text);
                                }
                            }
                            lblNewsPicName.Text = Filename;

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

            txtnewsTitle.Focus();

            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/Main.aspx");

            if (!IsPostBack)
            {
               // nemayesheDasteRavanshenasi();
               // nemayesheMozoateRavanshenasi();
                clear();
            }
        }


        protected void LinkButtonNewsPic_Click(object sender, EventArgs e)
        {
            try
            {
                uploadPic();
            }
            catch
            {
            }
        }
        protected void LinkButtonNewsFile_Click(object sender, EventArgs e)
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

        protected void drlistnewsType_TextChanged(object sender, EventArgs e)
        {
            nemayesheMozoateRavanshenasi();
            drlistnewsPriority.Focus();
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
                    newsFileName = string.Empty;
                    newsFileType = string.Empty;
                }

                if (FileUpLdPic.HasFile)
                {
                    if (!uploadPic())
                        check = false;
                }
                else
                    newsPicName = "default.jpg";


                if (check)
                {
                    insertNews();
                    clear();
                    txtnewsTitle.Focus();
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