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
    public partial class ShowAllin : System.Web.UI.Page
    {
        
        
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
            showPasseges(Session["showPassageType"].ToString());
        }

        protected void rptPagingDown_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            showPasseges(Session["showPassageType"].ToString());
        }




        private void showPasseges(string showType)
        {
            string orderByCommand = null;
            string WhereCommand = null;
            try
            {

                if (showType == "All")
                {
                    orderByCommand = "order by newsID desc";
                    WhereCommand = null;
                    Session["showPassageType"] = "All";
                    lblSortTpe.Text = "نمایش مطالب و مقاله ها";
                }
                else
                    if (showType == "Matlab")
                    {
                        orderByCommand = "order by newsID desc,newsTitle";
                        WhereCommand = "newsBranchName <>'مقاله روانشناسی' and newsBranchName<>'آموزشی-پژوهشی' and newsBranchName<>'خبر-رویداد'";
                        Session["showPassageType"] = "Matlab";
                        lblSortTpe.Text = "نمایش مطالب ";

                    }
                    else
                    if (showType == "Magale")
                    {
                        orderByCommand = "order by newsID desc,newsTitle";
                        WhereCommand = "newsBranchName='مقاله روانشناسی'";
                        Session["showPassageType"] = "Magale";
                        lblSortTpe.Text = "نمایش مقاله ها";
                    }
                    else
                    if (showType == "Dastebandi")
                    {
                        orderByCommand = "order by newsType,newsID desc,newsTitle";
                        WhereCommand = null;
                        Session["showPassageType"] = "Dastebandi";
                        lblSortTpe.Text = "نمایش مطالب و مقاله ها بر اساس مبحث";
                    }
                    else

                    if (showType == "Date")
                    {
                        orderByCommand = "order by newsDate desc,newsID desc";
                        WhereCommand = null;
                        Session["showPassageType"] = "Date";
                        lblSortTpe.Text = "نمایش مطالب و مقاله ها بر اساس تاریخ";
                    }
                    else
                    if (showType == "Bazdid")
                    {
                        orderByCommand = "order by newsViewerCounter desc,newsID desc,newsTitle";
                        WhereCommand = null;
                        Session["showPassageType"] = "Bazdid";
                        lblSortTpe.Text = "نمایش مطالب و مقاله ها بر اساس تعداد بازدید";
                    }
                    else
                    if (showType == "Mozo")
                    {
                        orderByCommand = "order by newsPriority,newsID desc,newsTitle"; 
                        WhereCommand = null;
                        Session["showPassageType"] = "Mozo";
                        lblSortTpe.Text = "نمایش مطالب و مقاله ها بر اساس موضوع";
                    }
                    else
                    if (showType == "Event")
                    {
                        orderByCommand = "order by newsDate desc,newsID desc,newsTitle";
                        WhereCommand = "newsBranchName='خبر-رویداد'";
                        Session["showPassageType"] = "Event";
                        lblSortTpe.Text = "نمایش اخبار رویدادها";
                    }
                     else
                     if (showType == "Edu")
                    {
                        orderByCommand = "order by newsDate desc,newsID desc,newsTitle";
                        WhereCommand = "newsBranchName='آموزشی-پژوهشی'";
                        Session["showPassageType"] = "Edu";
                        lblSortTpe.Text = "نمایش اخبار آموزشی - پژوهشی";
                    }
                    

                
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();

                if (WhereCommand == null)
                {
                    WhereCommand = WhereCommand + " newsBranchName<>'خبر-رویداد'  and newsBranchName<>'آموزشی-پژوهشی'";
                    WhereCommand = WhereCommand + " and newsShowingPermision=1";
                }
                else
                {
                    WhereCommand = WhereCommand + " and newsBranchName<>'خبر-رویداد'  and newsBranchName<>'آموزشی-پژوهشی'";
                    WhereCommand = WhereCommand + " and newsShowingPermision=1";
                }

                dt = myNews.showNews("TableNews", "newsShoingwToWhatMemberType,newsBranchName,newsID,newsTitle,newsPassage,newsDate,newsViewerCounter,newsPictureName,newsType,newsPriority", WhereCommand, orderByCommand);


                //for (int i = 0; i < dt.Rows.Count; i++)
                //{
                //    if (dt.Rows[i]["newsTitle"].ToString().Length > 28)
                //        dt.Rows[i]["newsTitle"] = dt.Rows[i]["newsTitle"].ToString().Substring(0, 28);

                //}


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
                Repeater2.DataSource = pgitems;
                Repeater2.DataBind();
            }
            catch
            {
            }
        }     
     

        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["pagingPageCount"] = 40;


            if (!IsPostBack)
            {
                if (Session["AllIn"]==null)
                    showPasseges("All");

                else
                {
                
                    showPasseges(Session["AllIn"].ToString());

                    if (Session["AllIn"].ToString() == "Magale")
                        orderBy.SelectedIndex = 2;

                    if (Session["AllIn"].ToString() == "Matlab")
                        orderBy.SelectedIndex = 1;
                }
            }


        }


        protected void orderBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (orderBy.Text == "مطلب روانشناسی")
            {
                PageNumber = 0;
                showPasseges("Matlab");
            }
            else
                if (orderBy.Text == "مقاله روانشناسی")
                {
                    PageNumber = 0;
                    showPasseges("Magale");
                }
                else
                    if (orderBy.Text == "مبحث")
                    {
                        PageNumber = 0;
                        showPasseges("Dastebandi");
                    }
                    else
                        if (orderBy.Text == "موضوع")
                        {
                            PageNumber = 0;
                            showPasseges("Mozo");
                        }
                        else
                            if (orderBy.Text == "تاریخ")
                            {
                                PageNumber = 0;
                                showPasseges("Date");
                            }
                            else
                                if (orderBy.Text == "تعداد بازدید")
                                {
                                    PageNumber = 0;
                                    showPasseges("Bazdid");
                                }
                                else
                                    if (orderBy.Text == "خبر-رویداد")
                                    {
                                        PageNumber = 0;
                                        showPasseges("Event");
                                    }
                                    else
                                        if (orderBy.Text == "آموزشی-پژوهشی")
                                        {
                                            PageNumber = 0;
                                            showPasseges("Edu");
                                        }
                                        else
                                        {
                                            PageNumber = 0;
                                            showPasseges("All");
                                        }

        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            LinkButton NewsTitle = new LinkButton();
            LinkButton NewsAboutMabhas = new LinkButton();
            LinkButton NewsAboutMozo = new LinkButton();
            Label NewsID = new Label();


            if (e.CommandName == "goToShowDetails")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);

                NewsTitle = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonTitle");
                NewsAboutMabhas = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonAboutMabhas");
                NewsAboutMozo = (LinkButton)Repeater2.Items[index].FindControl("LinkButtonAboutMozo");
                NewsID = (Label)Repeater2.Items[index].FindControl("LabelNewsID");

                Session["sentNewsID"] = NewsID.Text;
                Session["sentSubjectTitle"] = NewsTitle.Text.Trim();
                Session["sentMabhasAbout"] = NewsAboutMabhas.Text.Trim();
                Session["sentSubjectAbout"] = NewsAboutMozo.Text.Trim();

                Session["sentRouterSubjectAbout"] = null;

                Response.Redirect("SubjectDetails.aspx");
            }

        }

        
        


    }
}