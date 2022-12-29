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

namespace PresentationLayer
{
    public partial class ShowVideo : System.Web.UI.Page
    {
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                {
                    return Convert.ToInt32(ViewState["PageNumber"]);
                }
                else
                {
                    return 0;
                }
            }
            set { ViewState["PageNumber"] = value; }
        }

        public string videoType;


        protected void orderBy_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            Session["AllMabhas"] = orderBy.SelectedItem.Text.Trim();
            
            showAllVideo(orderBy.SelectedItem.Text.ToString(), 0);

            showVideo(int.Parse(Session["videoID"].ToString()));

            
        }













        private void showAllVideo(string showType,int videoID)
        {
            string orderByCommand = null;
            string WhereCommand = null;
            try
            {


                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();

                if (showType == "همه")
                {
                    //WhereCommand =" videoID >="+int.Parse(videoID.ToString());
                    videoType = "همه ویدیوها - ";
                }
                else
                {
                    WhereCommand = WhereCommand + "videoMabhas='" + showType +"'";// and videoID >=" + int.Parse(videoID.ToString());
                    videoType =showType+ " - "  ;
                  

                }

                dt = myNews.showNews("TableVideo", "*", WhereCommand, " order by videoID desc");//Top 12 *

                if (dt.Rows.Count > 0)
                    Session["videoID"] = dt.Rows[0]["videoID"].ToString();
                else
                    Session["videoID"] = "-1";





                //Create the PagedDataSource that will be used in paging
                PagedDataSource pgitems = new PagedDataSource();
                pgitems.DataSource = dt.DefaultView;
                pgitems.AllowPaging = true;

                //Control page size from here 
                pgitems.PageSize = int.Parse(Session["pagingPageCount"].ToString());
                pgitems.CurrentPageIndex = PageNumber;
                if (pgitems.PageCount > 1)
                {
                    rptPagingUp.Visible = true;
                    //rptPagingDown.Visible = true;

                    ArrayList pages = new ArrayList();
                    for (int i = 0; i <= pgitems.PageCount - 1; i++)
                    {
                        pages.Add((i + 1).ToString());
                    }
                    rptPagingUp.DataSource = pages;
                    rptPagingUp.DataBind();

                    //rptPagingDown.DataSource = pages;
                    //rptPagingDown.DataBind();
                }
                else
                {
                    rptPagingUp.Visible = false;
                    //rptPagingDown.Visible = false;
                }

                //Finally, set the datasource of the repeater               
                RepeaterAllVideo.DataSource = pgitems;
                RepeaterAllVideo.DataBind();
            }
            catch
            {
            }
        }            



        protected void rptPagingUp_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string showType = null;

            if (Session["AllMabhas"] != null)
            {
                showType = Session["AllMabhas"].ToString();
            }
            else
            {
                showType = "همه";
                Session["AllMabhas"] = "همه";
            }

            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            showAllVideo(showType, int.Parse(Session["videoID"].ToString()));

        }
        



        private void showVideo(int videoID)
        {
            try
            {
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();


                dt = myNews.showNews("TableVideo","*", "videoID="+videoID.ToString(), null);

                //LabelDownloadLink.Text = dt.Rows[0]["videoFileDownloadLink"].ToString();



                RepeaterVideo.DataSource = dt;
                RepeaterVideo.DataBind();

                
            }
            catch
            {
            }
        }
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string showType = null;

            if (Session["AllMabhas"] != null)
            {
                showType = Session["AllMabhas"].ToString();
           }
            else
            {
                showType = "همه";
                Session["AllMabhas"] = "همه";
            }



            if (!IsPostBack)
            {
                Session["pagingPageCount"] = 10;
               
            }


                if (Session["UserType"] == null)
                    Response.Redirect("~/Registration.aspx");
                else
                {                
                    
                    DataBaseOperations dbo = new DataBaseOperations();
                    DataTable dt = new DataTable();

                    if (Session["UserType"].ToString() == "Admin")
                    {
                        if (Session["videoID"].ToString()!=null)


                            showVideo(int.Parse(Session["videoID"].ToString()));
                            showAllVideo(showType, int.Parse(Session["videoID"].ToString()));

                            
                            dbo.updateQuery("TableVideo", "videoViewerCounter=videoViewerCounter+1  where videoID=" + Session["videoID"].ToString());
                        //btnDownLoad.Visible = true;
                    }
                    else
                    {

                        if (Session["UserRegistrationType"].ToString() != "عضويت ساده")
                        {
                            if (Session["videoID"] != null)
                            {

                                showVideo(int.Parse(Session["videoID"].ToString()));
                                showAllVideo(showType, int.Parse(Session["videoID"].ToString()));
                                
                                dbo.updateQuery("TableVideo", "videoViewerCounter=videoViewerCounter+1  where videoID=" + Session["videoID"].ToString());
                                //btnDownLoad.Visible = true;
                            }
                            else
                                Response.Redirect("Main.aspx");

                        }
                        else
                        {
                            lblMessage.Text = "برای مشاهده ویدیو، عضویت ویژه لازم است.";
                            //btnDownLoad.Visible = false;
                        }
                    }

                }
            

        }

        //protected void btnDownLoad_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect(LabelDownloadLink.Text);
        //}





        protected void RepeaterAllVideo_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Label videoID = new Label();

            videoID = (Label)RepeaterAllVideo.Items[index].FindControl("LabelVideoID");

            Response.Redirect("VideoRouter.aspx?" + int.Parse(videoID.Text));




        }


    }
}