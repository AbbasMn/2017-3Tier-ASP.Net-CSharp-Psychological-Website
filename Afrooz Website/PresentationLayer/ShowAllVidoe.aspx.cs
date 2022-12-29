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
    public partial class ShowAllVidoe : System.Web.UI.Page
    {


        public string videoType;

        //This property will contain the current page number 
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

        //This method will fire when clicking on the page no link from the pager repeater
        protected void rptPagingUp_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            showAllVideo("");
        }

        protected void rptPagingDown_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            showAllVideo("");
        }




        private void showAllVideo(string showType)
        {
            string orderByCommand = null;
            string WhereCommand = null;
            try
            {

                
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();

                if (showType == "All")
                {
                    WhereCommand = null;
                    videoType = " - همه ویدیوها ";
                }
                else
                {
                    WhereCommand = WhereCommand + "videoMabhas='" + Session["AllMabhas"].ToString() + "'";
                     videoType=" - "+Session["AllMabhas"].ToString();
                }

                dt = myNews.showNews("TableVideo", "*", WhereCommand, " order by videoID desc");


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
                RepeaterVideo.DataSource = pgitems;
                RepeaterVideo.DataBind();
            }
            catch
            {
            }
        }     
     

        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["pagingPageCount"] = 40;

            if (Request.QueryString.Count != 0)
            {

                Session["AllMabhas"] = Request.QueryString[0].ToString();

                if (Session["AllMabhas"].ToString() != "مشاوره ازدواج" &
                    Session["AllMabhas"].ToString() != "روانشناسي زناشويي" &
                    Session["AllMabhas"].ToString() != "مشاوره خانواده" &
                    Session["AllMabhas"].ToString() != "روانشناسي کودکان" &
                    Session["AllMabhas"].ToString() != "روانشناسي اجتماعي" &
                    Session["AllMabhas"].ToString() != "روانشناسي سلامت" &
                    Session["AllMabhas"].ToString() != "اختلالات رواني" &
                    Session["AllMabhas"].ToString() != "مهارتهاي زندگي")                    Response.Redirect("../Main.aspx");

                else
                    showAllVideo("Mabhas");
            }

            else
            {
                showAllVideo("All");
            }



        }


        }

        
}