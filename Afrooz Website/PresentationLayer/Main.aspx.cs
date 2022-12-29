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
using LogicalLayer;
using System.Data.SqlClient;
using DataBaseLayer;

namespace PresentationLayer
{
    public partial class Main : System.Web.UI.Page
    {
        private void showBooksPic()
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();

                DataTable dt1 = new DataTable();

                dt1 = myNews.showNews("TableBook", "TOP 8 *", null, " order  by bookID desc,bookTitle");
                Repeater3.DataSource = dt1;
                Repeater3.DataBind();
            }
            catch
            {
            }
        }
        private void showVideo()
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();


                dt = myNews.showNews("TableVideo", "TOP 8 *", null, " order  by videoID desc,videoTitle");

                //for (int i = 0; i < dt.Rows.Count; i++)
                //{
                //    if (dt.Rows[i]["videoTitle"].ToString().Length > 20)
                //        dt.Rows[i]["videoTitle"] = dt.Rows[i]["videoTitle"].ToString().Substring(0, 20)+" ... ";
                //    else
                //        dt.Rows[i]["videoTitle"] = dt.Rows[i]["videoTitle"].ToString().Substring(0, dt.Rows[i]["videoTitle"].ToString().Length);

                //}

                RepeaterVideo.DataSource = dt;
                RepeaterVideo.DataBind();
            }
            catch
            {
            }
        }

        private void showBooks()
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();
                dt = myNews.showNews("TableBook", "TOP 8 *", null, " order  by bookID desc,bookTitle");
                

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["bookTitle"].ToString().Length > 40)
                        dt.Rows[i]["bookTitle"] = dt.Rows[i]["bookTitle"].ToString().Substring(0, 40);
                    else
                        dt.Rows[i]["bookTitle"] = dt.Rows[i]["bookTitle"].ToString().Substring(0, dt.Rows[i]["bookTitle"].ToString().Length);



                    if (dt.Rows[i]["bookMabhas"].ToString().Length > 26)
                        dt.Rows[i]["bookMabhas"] = dt.Rows[i]["bookMabhas"].ToString().Substring(0, 26);
                    else
                        dt.Rows[i]["bookMabhas"] = dt.Rows[i]["bookMabhas"].ToString().Substring(0, dt.Rows[i]["bookMabhas"].ToString().Length);



                    if (dt.Rows[i]["bookMozoo"].ToString().Length > 26)
                        dt.Rows[i]["bookMozoo"] = dt.Rows[i]["bookMozoo"].ToString().Substring(0, 26);
                    else
                        dt.Rows[i]["bookMozoo"] = dt.Rows[i]["bookMozoo"].ToString().Substring(0, dt.Rows[i]["bookMozoo"].ToString().Length);

                }

                RepeaterBooks.DataSource = dt;
                RepeaterBooks.DataBind();
            }
            catch
            {
            }
        }

        //protected void showPhoneConsult()
        //{
        //    DataTable dt = new DataTable();
        //    DataBaseOperations dbo = new DataBaseOperations();

        //    PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

        //    date.SelectedDateTime = DateTime.Now;

        //    dt = dbo.selectQueryDataTable("TableMoshavereTelephoni", "*", "Date='" + date.PersianDateString.ToString() + "' and VaziatReserve <>'رزرو نشده'" +

        //    " and TaeedeReserve <>'تاييد نشده' and TozihatReserveAdmin='واريز تاييد شد'", "order by RowID desc");

        //    Repeater3.DataSource = dt;
        //    Repeater3.DataBind();
        //}

        protected void setGuestCounter()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            dbo.updateQuery("TableUserStudent", "UserStudentSiteViewCounter=UserStudentSiteViewCounter+1" +
                                       " where UserStudentName='guest' and UserStudentLastName='guest'");
        }

        protected void showSiteStatistics()
        {
            SiteStatistics statistics1 = new SiteStatistics();
            SiteStatistics statistics2 = new SiteStatistics();
            SiteStatistics statistics3 = new SiteStatistics();
            SiteStatistics statistics4 = new SiteStatistics();
            SiteStatistics statistics5 = new SiteStatistics();

            DataTable dt = new DataTable();
            DataBaseOperations dbo = new DataBaseOperations();

            PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

            date.SelectedDateTime = DateTime.Now;

            lblToday.Text = date.PersianDateString.ToString();

            dt = dbo.selectQueryDataTable("TableViewer", "*", "ViewerDate='" + lblToday.Text + "'", null);

            if (dt.Rows.Count == 0)
            {
                string[] fieldse = new string[2];
                string[] values = new string[2];

                fieldse[0] = "ViewerDate";
                values[0] = lblToday.Text;

                dbo.insertQuery("TableViewer", fieldse, values);
                dbo.updateQuery("TableViewer", "ViewerCounter=ViewerCounter+1" +
                                       " where ViewerDate='" + lblToday.Text + "'");
            }
            else
                {

                    dbo.updateQuery("TableViewer", "ViewerCounter=ViewerCounter+1" +
                                           " where ViewerDate='" + lblToday.Text + "'");
                }

            lblMembeshipCounter.Text = statistics1.showStudentMembeshipCounter().Rows.Count.ToString();

            lblMembeshipOnlineCounter.Text = statistics2.showStudentMembeshipOnlineCounter().Rows.Count.ToString();

            lblMembeshipTodayLoginsCounter.Text = statistics3.showStudentMembeshipTodayCounter(date.PersianDateString.ToString()).Rows[0]["ViewerCounter"].ToString();

            lblMembeshipTotalLoginsCounter.Text = //Convert.ToString(Convert.ToInt16(
                statistics4.showStudentMembeshipTotalLoginsCounter().Rows[0][0].ToString();
            //) +//Convert.ToInt16(statistics5.showStudentMembeshipTotalGuestLoginsCounter().Rows[0][0].ToString()));
        }

        private void showEventPasseges()
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();


                dt = myNews.showNews("TableNews","TOP 7 *",
                    " newsBranchName='خبر-رویداد'  or newsBranchName='آموزشی-پژوهشی' and newsShowingPermision=1"
                    , " order by newsID desc,newsTitle");

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["newsTitle"].ToString().Length > 49)
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, 49);
                    else
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, dt.Rows[i]["newsTitle"].ToString().Length);


                    if (dt.Rows[i]["newsType"].ToString().Length > 28)
                        dt.Rows[i]["newsType"] = dt.Rows[i]["newsType"].ToString().Substring(0, 28);
                    else
                        dt.Rows[i]["newsType"] = dt.Rows[i]["newsType"].ToString().Substring(0, dt.Rows[i]["newsType"].ToString().Length);


                }

                RepeaterEvents.DataSource = dt;
                RepeaterEvents.DataBind();
            }
            catch
            {
            }
        }

        private void showArticlePasseges()
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();


                dt = myNews.showNews("TableNews","TOP 7 *",
                    " newsBranchName='مقاله روانشناسي'"
                    , " order by newsID desc,newsTitle");

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["newsTitle"].ToString().Length > 49)
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, 49);
                    else
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, dt.Rows[i]["newsTitle"].ToString().Length);



                    if (dt.Rows[i]["newsType"].ToString().Length > 28)
                        dt.Rows[i]["newsType"] = dt.Rows[i]["newsType"].ToString().Substring(0, 28);
                    else
                        dt.Rows[i]["newsType"] = dt.Rows[i]["newsType"].ToString().Substring(0, dt.Rows[i]["newsType"].ToString().Length);


                }

                Repeater2.DataSource = dt;
                Repeater2.DataBind();
            }
            catch
            {
            }
        }


        private void showNewsPasseges()
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();


                dt = myNews.showNews("TableNews","TOP 7 *",
                    " newsShowingPermision=1 and newsBranchName <>'مقاله روانشناسي' and " +
                    " newsBranchName <>'خبر-رویداد'  and newsBranchName <>'آموزشی-پژوهشی'"
                    , " order by newsID desc,newsTitle");

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["newsTitle"].ToString().Length > 49)
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, 49);
                    else
                        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, dt.Rows[i]["newsTitle"].ToString().Length);



                    if (dt.Rows[i]["newsType"].ToString().Length > 28)
                        dt.Rows[i]["newsType"] = dt.Rows[i]["newsType"].ToString().Substring(0, 28);
                    else
                        dt.Rows[i]["newsType"] = dt.Rows[i]["newsType"].ToString().Substring(0, dt.Rows[i]["newsType"].ToString().Length);


                }

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch
            {
            }
        }


        protected void showSliderPic()
        {

            LogicalLayer.Picture pic = new LogicalLayer.Picture();
            DataTable dt = new DataTable();


            try
            {

                dt = pic.showPicture("PictureGalleryPicID,PictureName,PictureTitle,PictureDescription," +
                "PictureID,PicturePriority,PictureAccessLevel,PictureDate,PictureTime,PictureLocation,PictureType", null);
                //PictureGalleryPicID=" + "55"+ sentGalleryPicID   order by PictureID desc



                //Repeater1.DataSource = dt;
                //Repeater1.DataBind();
            }
            catch
            {
            }



        }

        
        protected void Page_Load(object sender, EventArgs e)
        {
            showVideo();
            showBooks();
            showSliderPic();
            showNewsPasseges();
            showArticlePasseges();
            showEventPasseges();
            Session["sentSubjectTitle"] ="";
            Session["sentRouterSubjectAbout"] ="";
            showBooksPic();
            

            if (!IsPostBack)
            {
                setGuestCounter();
                showSiteStatistics();
                //showPhoneConsult();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "goToShowDetails")
            {
                LinkButton NewsTitle = new LinkButton();
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();
                Label NewsID = new Label();

                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsTitle = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsTitle");
                NewsAbout = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsAbout");
                NewsAboutMabhas = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsAboutMabhas");
                NewsID = (Label)Repeater1.Items[index].FindControl("LabelNewsID");

                Session["sentNewsID"] = NewsID.Text;
                Session["sentSubjectTitle"] = NewsTitle.Text.Trim();
                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                Response.Redirect("User/SubjectDetails.aspx");
            }
            else

                if (e.CommandName == "goToShowAbout")
                {
                    LinkButton NewsAbout = new LinkButton();
                    LinkButton NewsAboutMabhas = new LinkButton();
                    int index = Convert.ToInt32(e.Item.ItemIndex);

                    NewsAbout = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsAbout");
                    NewsAboutMabhas = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsAboutMabhas");



                    Session["sentRouterSubjectAbout"] = null;
                    Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                    Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                    Response.Redirect("User/SubjectDetails.aspx");
                }

            if (e.CommandName == "goToShowAboutMabhas")
            {
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();

                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsAbout = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsAbout");
                NewsAboutMabhas = (LinkButton)Repeater1.Items[index].FindControl("LinkButtonNewsAboutMabhas");

                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                Response.Redirect("User/SubjectDetails.aspx");
            }

        }

        
        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "goToShowDetails")
            {
                LinkButton NewsTitle = new LinkButton();
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();
                Label NewsID = new Label();

                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsTitle = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleTitle");
                NewsAbout = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleAbout");
                NewsAboutMabhas = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleAboutMabhas");
                NewsID = (Label)Repeater2.Items[index].FindControl("LabelNewsID");

                Session["sentNewsID"] = NewsID.Text;
                Session["sentSubjectTitle"] = NewsTitle.Text.Trim();
                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                Response.Redirect("User/SubjectDetails.aspx");
            }
            else

            if (e.CommandName == "goToShowAbout")
            {
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();
                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsAbout = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleAbout");
                NewsAboutMabhas = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleAboutMabhas");



                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();
                
                Response.Redirect("User/SubjectDetails.aspx");
            }

            if (e.CommandName == "goToShowAboutMabhas")
            {
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();

                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsAbout = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleAbout");
                NewsAboutMabhas = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonArticleAboutMabhas");

                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                Response.Redirect("User/SubjectDetails.aspx");
            }
        
        }

        protected void RepeaterEvents_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "goToShowDetails")
            {
                LinkButton NewsTitle = new LinkButton();
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label NewsID = new Label();

                NewsTitle = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventTitle");
                NewsAbout = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventAbout");
                NewsAboutMabhas = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventAboutMabhas");
                NewsID = (Label)RepeaterEvents.Items[index].FindControl("LabelNewsID");

                Session["sentNewsID"] = NewsID.Text;
                Session["sentSubjectTitle"] = NewsTitle.Text.Trim();
                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                Response.Redirect("User/SubjectDetails.aspx");
            }
            else

                if (e.CommandName == "goToShowAbout")
                {
                    LinkButton NewsAbout = new LinkButton();
                    LinkButton NewsAboutMabhas = new LinkButton();
                    int index = Convert.ToInt32(e.Item.ItemIndex);

                    NewsAbout = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventAbout");
                    NewsAboutMabhas = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventAboutMabhas");



                    Session["sentRouterSubjectAbout"] = null;
                    Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                    Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                    Response.Redirect("User/SubjectDetails.aspx");
                }

            if (e.CommandName == "goToShowAboutMabhas")
            {
                LinkButton NewsAbout = new LinkButton();
                LinkButton NewsAboutMabhas = new LinkButton();

                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsAbout = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventAbout");
                NewsAboutMabhas = (LinkButton)RepeaterEvents.Items[index].FindControl("LinkButtonEventAboutMabhas");

                Session["sentRouterSubjectAbout"] = null;
                Session["sentSubjectAbout"] = NewsAbout.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();

                Response.Redirect("User/SubjectDetails.aspx");
            }
 

        }

        protected void LinkButtonMatlabAll_Click(object sender, EventArgs e)
        {
            Session["AllIn"] = "Matlab";
            Response.Redirect("User/ShowAllin.aspx");
        }

        protected void LinkButtonArticleAll_Click(object sender, EventArgs e)
        {
            Session["AllIn"] = "Magale";
            Response.Redirect("User/ShowAllin.aspx");
        }

        protected void LinkButtonAllBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("User/ShowBookDownload.aspx");
        }


        protected void LinkButtonAllEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("User/ShowEventList.aspx");
        }

        protected void RepeaterBooks_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label bookID = new Label();

                bookID = (Label)RepeaterBooks.Items[index].FindControl("LabelBookID");

                //Session["sentBookID"] = bookID.Text;

                Response.Redirect("User/ShowBookDownload.aspx?" + bookID.Text);
 
        }

  
    }
}