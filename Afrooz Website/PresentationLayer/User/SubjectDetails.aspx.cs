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

namespace PresentationLayer.User
{
    public partial class SubjectDetails : System.Web.UI.Page
    {

        public string sentSubjectTitle;
        public string sentMabhasTitle;
        public string sentNewsID;


        protected void CategoryAboutMabhas(string mabhas)
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();

            lblMabahes.Text = mabhas;


            dt = myNews.showNews("TableNews","newsTitle,newsID,newsPriority", 
                "newsType='" + mabhas + "' and newsPriority<>'"+Session["sentSubjectAbout"].ToString()+"'", "order by newsTitle,newsID");


            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["newsTitle"].ToString().Length > 32)
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, 32);
                    else
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, dt.Rows[i]["newsTitle"].ToString().Length);
                }
                Repeater3.DataSource = dt;
                Repeater3.DataBind();
            }


        }

        protected void CategoryAboutSubject(string subject)
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();

            LabelSubjects.Text = subject;


            dt = myNews.showNews("TableNews","newsTitle,newsID,newsPriority", "newsPriority like '" + subject + "%'", "order by newsTitle");


            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["newsTitle"].ToString().Length > 32)
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, 32);
                    else
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, dt.Rows[i]["newsTitle"].ToString().Length);
                }
                Repeater2.DataSource = dt;
                Repeater2.DataBind();

            }


        }

        protected void showSubjectDetails()
        {
            try
            {

                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();

                sentNewsID = Session["sentNewsID"].ToString();
                sentSubjectTitle = Session["sentSubjectTitle"].ToString();
                Session["sentRouterSubjectAbout"]=null;

                 myNews.updateNews("TableNews"," newsViewerCounter=newsViewerCounter+1 where newsID=" + sentNewsID);



                 dt = myNews.showNews("TableNews", "newsShoingwToWhatMemberType,newsPriority,newsType,newsID,newsTitle,newsPassage,newsDate,newsViewerCounter,newsAouthorName,newsAouthorLastName,newsPictureName,newsUploadedFileName,newsUploadedFileType,newsRelatedLink",
                    "newsID=" + sentNewsID, null);

                 
                if (dt.Rows[0]["newsShoingwToWhatMemberType"].ToString() != "همه")
                {
                    if (Session["UserType"] != null)
                    {
                        if (Session["UserRegistrationType"].ToString() == "عضویت ساده")
                        {

                            if (dt.Rows[0]["newsPassage"].ToString().Length > 2000)
                                dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString().Substring(0, 2000)+" ... ";

                            dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString() + "  <blink>  <label style='color:blue;'>"
                                + "برای مشاهده کامل متن، باید عضویت خود را به عضویت ويژه ارتقا دهید." + "</label>  </blink>" +

                                " <a style='color:#00b1b2; margin-right:10px;text-decoration:underline'   href='ControlPanelPage.aspx'>" +

                                "تبدیل عضویت ساده به عضویت ويژه" + "</a> ";
                        }
                    }
                    else 
                    {
                        if (dt.Rows[0]["newsPassage"].ToString().Length>1500)
                            dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString().Substring(0, 1500) + " ... ";


                        dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString() +" <blink>  <label style='color:blue;'>"
                            + "برای مشاهده کامل متن، باید عضو سایت باشید." + "</label>  </blink>" +

                            "<a style='color:#00b1b2; margin-right:10px;text-decoration:underline'   href='../Registration.aspx'>" +

                            "ثبت نام در سایت" +"</a> ";
                    }
                }
                
                
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                if (dt.Rows.Count > 0)
                {

                    if (dt.Rows[0]["newsRelatedLink"].ToString() == string.Empty)
                    {
                        HyperLinkManba.Visible = false;
                        lblManba.Visible = false;
                    }
                    else
                    {
                        HyperLinkManba.Visible = true;
                        lblManba.Visible = true;
                        HyperLinkManba.NavigateUrl = "http:\\" + dt.Rows[0]["newsRelatedLink"].ToString();
                        HyperLinkManba.Text = dt.Rows[0]["newsRelatedLink"].ToString();
                    }



                    if (dt.Rows[0]["newsUploadedFileName"].ToString() == string.Empty)
                    {
                        HyperLinkFile.Visible = false;
                        lblFile.Visible = false;
                    }
                    else
                    {
                        HyperLinkFile.Visible = true;
                        lblFile.Visible = true;

                        HyperLinkFile.NavigateUrl = "../NewsFiles/" + dt.Rows[0]["newsUploadedFileName"].ToString();
                        HyperLinkFile.Text = dt.Rows[0]["newsUploadedFileName"].ToString();
                        HyperLinkFile.ImageUrl = "../NewsFiles/downloadicon/" + dt.Rows[0]["newsUploadedFileType"].ToString() + ".jpg";
                    }                


                }
                else
                {
                    lblManba.Visible = false;
                    lblFile.Visible = false;
                }



            }
            catch
            {
            }

        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["sentSubjectAbout"] != null)
            {

                //showAboutSubject(Session["sentSubjectAbout"].ToString());

                showSubjectDetails();
                CategoryAboutSubject(Session["sentSubjectAbout"].ToString());
                CategoryAboutMabhas(Session["sentMabhasAbout"].ToString());
                
            }

            //else

            //    if (Session["sentRouterSubjectAbout"] != null)
            //        showRouterAboutSubject(Session["sentRouterSubjectAbout"].ToString());
            //    else
            //    {

            //        showSubjectDetails();
            //    }


        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label NewsID = new Label();

            Session["sentRouterSubjectAbout"] = null;

            if (e.CommandName == "goToShowDetails")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsID = (Label)Repeater2.Items[index].FindControl("LableNewsID");
                
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();



                dt = myNews.showNews("TableNews", "newsShoingwToWhatMemberType,newsPriority,newsType,newsID,newsTitle,newsPassage,newsDate,newsViewerCounter,newsAouthorName,newsAouthorLastName,newsPictureName,newsUploadedFileName,newsUploadedFileType,newsRelatedLink",
                    "newsID=" + NewsID.Text.ToString(), null);



                if (dt.Rows[0]["newsShoingwToWhatMemberType"].ToString() != "همه")
                {
                    if (Session["UserType"] != null)
                    {
                        if (Session["UserRegistrationType"].ToString() == "عضویت ساده")
                        {

                            if (dt.Rows[0]["newsPassage"].ToString().Length > 2000)
                                dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString().Substring(0, 2000) + " ... ";

                            dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString() + "  <blink>  <label style='color:blue;'>"
                                + "برای مشاهده کامل متن، باید عضویت خود را به عضویت ويژه ارتقا دهید." + "</label>  </blink>" +

                                " <a style='color:#00b1b2; margin-right:10px;text-decoration:underline'   href='ControlPanelPage.aspx'>" +

                                "تبدیل عضویت ساده به عضویت ويژه" + "</a> ";
                        }
                    }
                    else
                    {
                        if (dt.Rows[0]["newsPassage"].ToString().Length > 1500)
                            dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString().Substring(0, 1500) + " ... ";


                        dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString() + " <blink>  <label style='color:blue;'>"
                            + "برای مشاهده کامل متن، باید عضو سایت باشید." + "</label>  </blink>" +

                            "<a style='color:#00b1b2; margin-right:10px;text-decoration:underline'   href='../Registration.aspx'>" +

                            "ثبت نام در سایت" + "</a> ";
                    }
                }

                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                    if (Session["sentSubjectTitle"].ToString() != dt.Rows[0]["newsTitle"].ToString())
                    {
                        myNews.updateNews("TableNews"," newsViewerCounter=newsViewerCounter+1 where newsID =" + NewsID.Text.ToString());
                        //Session["sentSubjectTitle"] = dt.Rows[0]["newsTitle"].ToString();
                    }

                    Session["sentSubjectTitle"] = dt.Rows[0]["newsTitle"].ToString();
                



                    if (dt.Rows[0]["newsRelatedLink"].ToString() == string.Empty)
                    {
                        HyperLinkManba.Visible = false;
                        lblManba.Visible = false;
                    }
                    else
                    {
                        HyperLinkManba.Visible = true;
                        lblManba.Visible = true;
                        HyperLinkManba.NavigateUrl = "http:\\"+dt.Rows[0]["newsRelatedLink"].ToString();
                        HyperLinkManba.Text = dt.Rows[0]["newsRelatedLink"].ToString();
                    }



                    if (dt.Rows[0]["newsUploadedFileName"].ToString() == string.Empty)
                    {
                        HyperLinkFile.Visible = false;
                        lblFile.Visible = false;
                    }
                    else
                    {
                        HyperLinkFile.Visible = true;
                        lblFile.Visible =true;

                        HyperLinkFile.NavigateUrl = "../NewsFiles/" + dt.Rows[0]["newsUploadedFileName"].ToString();
                        HyperLinkFile.Text = dt.Rows[0]["newsUploadedFileName"].ToString();
                        HyperLinkFile.ImageUrl = "../NewsFiles/downloadicon/" + dt.Rows[0]["newsUploadedFileType"].ToString() + ".jpg";
                    }

            } 
        }

        protected void Repeater3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label NewsID = new Label();

            Session["sentRouterSubjectAbout"] = null;

            if (e.CommandName == "goToShowDetails")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsID = (Label)Repeater3.Items[index].FindControl("LableNewsID");

                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();



                dt = myNews.showNews("TableNews", "newsShoingwToWhatMemberType,newsPriority,newsType,newsID,newsTitle,newsPassage,newsDate,newsViewerCounter,newsAouthorName,newsAouthorLastName,newsPictureName,newsUploadedFileName,newsUploadedFileType,newsRelatedLink",
                    "newsID=" + NewsID.Text.ToString(), null);

                Session["sentSubjectAbout"] = dt.Rows[0]["newsPriority"].ToString();






                if (dt.Rows[0]["newsShoingwToWhatMemberType"].ToString() != "همه")
                {
                    if (Session["UserType"] != null)
                    {
                        if (Session["UserRegistrationType"].ToString() == "عضویت ساده")
                        {

                            if (dt.Rows[0]["newsPassage"].ToString().Length > 2000)
                                dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString().Substring(0, 2000) + " ... ";

                            dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString() + "  <blink>  <label style='color:blue;'>"
                                + "برای مشاهده کامل متن، باید عضویت خود را به عضویت ويژه ارتقا دهید." + "</label>  </blink>" +

                                " <a style='color:#00b1b2; margin-right:10px;text-decoration:underline'   href='ControlPanelPage.aspx'>" +

                                "تبدیل عضویت ساده به عضویت ويژه" + "</a> ";
                        }
                    }
                    else
                    {
                        if (dt.Rows[0]["newsPassage"].ToString().Length > 1500)
                            dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString().Substring(0, 1500) + " ... ";


                        dt.Rows[0]["newsPassage"] = dt.Rows[0]["newsPassage"].ToString() + " <blink>  <label style='color:blue;'>"
                            + "برای مشاهده کامل متن، باید عضو سایت باشید." + "</label>  </blink>" +

                            "<a style='color:#00b1b2; margin-right:10px;text-decoration:underline'   href='../Registration.aspx'>" +

                            "ثبت نام در سایت" + "</a> ";
                    }
                }
                
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                if (Session["sentSubjectTitle"].ToString() != dt.Rows[0]["newsTitle"].ToString())
                {
                    myNews.updateNews("TableNews"," newsViewerCounter=newsViewerCounter+1 where newsID =" + NewsID.Text.ToString());
                    //Session["sentSubjectTitle"] = dt.Rows[0]["newsTitle"].ToString();
                }

                Session["sentSubjectTitle"] = dt.Rows[0]["newsTitle"].ToString();




                if (dt.Rows[0]["newsRelatedLink"].ToString() == string.Empty)
                {
                    HyperLinkManba.Visible = false;
                    lblManba.Visible = false;
                }
                else
                {
                    HyperLinkManba.Visible = true;
                    lblManba.Visible = true;
                    HyperLinkManba.NavigateUrl = "http:\\" + dt.Rows[0]["newsRelatedLink"].ToString();
                    HyperLinkManba.Text = dt.Rows[0]["newsRelatedLink"].ToString();
                }



                if (dt.Rows[0]["newsUploadedFileName"].ToString() == string.Empty)
                {
                    HyperLinkFile.Visible = false;
                    lblFile.Visible = false;
                }
                else
                {
                    HyperLinkFile.Visible = true;
                    lblFile.Visible = true;

                    HyperLinkFile.NavigateUrl = "../NewsFiles/" + dt.Rows[0]["newsUploadedFileName"].ToString();
                    HyperLinkFile.Text = dt.Rows[0]["newsUploadedFileName"].ToString();
                    HyperLinkFile.ImageUrl = "../NewsFiles/downloadicon/" + dt.Rows[0]["newsUploadedFileType"].ToString() + ".jpg";
                }


                CategoryAboutSubject(Session["sentSubjectAbout"].ToString());
                CategoryAboutMabhas(Session["sentMabhasAbout"].ToString());

            } 

        }

    }
}