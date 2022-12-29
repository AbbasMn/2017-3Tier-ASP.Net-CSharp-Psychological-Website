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
    public partial class ShowBookDownload : System.Web.UI.Page
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
                    orderByCommand = "order by bookID desc";
                    WhereCommand = null;
                    Session["showPassageType"] = "All";
                    lblSortTpe.Text = "نمایش کتاب ها";
                }
                else
                    if (showType == "Matlab")
                    {
                        orderByCommand = "order by bookID desc,bookTitle";
                        WhereCommand = "bookMozoo <>'مقاله روانشناسی' and bookMozoo<>'آموزشی-پژوهشی' and bookMozoo<>'خبر-رویداد'";
                        Session["showPassageType"] = "Matlab";
                        lblSortTpe.Text = "نمایش مطالب ";

                    }
                    else
                    if (showType == "Magale")
                    {
                        orderByCommand = "order by bookID desc,bookTitle";
                        WhereCommand = "bookMozoo='مقاله روانشناسی'";
                        Session["showPassageType"] = "Magale";
                        lblSortTpe.Text = "نمایش مقاله ها";
                    }
                    else
                    if (showType == "Dastebandi")
                    {
                        orderByCommand = "order by bookMabhas,bookID desc,bookTitle";
                        WhereCommand = null;
                        Session["showPassageType"] = "Dastebandi";
                        lblSortTpe.Text = "نمایش کتاب ها بر اساس مبحث";
                    }
                    else
                    if (showType == "Download")
                    {
                        orderByCommand = "order by bookDownloadCounter desc,bookID desc,bookTitle";
                        WhereCommand = null;
                        Session["showPassageType"] = "Download";
                        lblSortTpe.Text = "نمایش کتاب ها بر اساس تعداد دانلود";
                    }
                    else
                    if (showType == "Mozo")
                    {
                        orderByCommand = "order by bookMozoo,bookID desc,bookTitle"; 
                        WhereCommand = null;
                        Session["showPassageType"] = "Mozo";
                        lblSortTpe.Text = "نمایش کتاب ها بر اساس موضوع";
                    }
                    else
                    if (showType == "Event")
                    {
                        orderByCommand = "order by bookID desc,bookTitle";
                        WhereCommand = "bookMozoo='خبر-رویداد'";
                        Session["showPassageType"] = "Event";
                        lblSortTpe.Text = "نمایش اخبار رویدادها";
                    }
                     else
                     if (showType == "Edu")
                    {
                        orderByCommand = "order by bookID desc,bookTitle";
                        WhereCommand = "bookMozoo='آموزشی-پژوهشی'";
                        Session["showPassageType"] = "Edu";
                        lblSortTpe.Text = "نمایش اخبار آموزشی - پژوهشی";
                    }
                    

                
                LogicalLayer.News myNews = new LogicalLayer.News();
                DataTable dt = new DataTable();


                if (Request.QueryString.Count==1)
                {
                    if (Request.QueryString[0].ToString().Length <= 3)
                    {
                        dt = myNews.showNews("TableBook", "*", "bookID=" + Request.QueryString[0].ToString(), orderByCommand);
                        orderBy.Visible = false;
                        LabelNemayesh.Visible = false;
                    }
                }
                else
                if (Request.QueryString.Count == 0)

                {
                    orderBy.Visible = true;
                    LabelNemayesh.Visible = true;
                    dt = myNews.showNews("TableBook", "*", WhereCommand, orderByCommand);
                }


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
                    rptPagingDown.Visible = true;

                    ArrayList pages = new ArrayList();
                    for (int i = 0; i <= pgitems.PageCount - 1; i++)
                    {
                        pages.Add((i + 1).ToString());
                    }
                    rptPagingUp.DataSource = pages;
                    rptPagingUp.DataBind();

                    rptPagingDown.DataSource = pages;
                    rptPagingDown.DataBind();
                }
                else
                {
                    rptPagingUp.Visible = false;
                    rptPagingDown.Visible = false;
                }

                //Finally, set the datasource of the repeater               
                Repeater1.DataSource = pgitems;
                Repeater1.DataBind();
            }
            catch
            {
            }
        }     
     

        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["pagingPageCount"] = 10;
                //DropDownListPageCount.Text;

           

            if (!IsPostBack)
                showPasseges("All");  


        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label LabelBookFileName = new Label();
            Label LabelbookID = new Label();

            DataBaseOperations dbo = new DataBaseOperations();



            if (e.CommandName == "goToShowDetails")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);

               LabelBookFileName = (Label)Repeater1.Items[index].FindControl("LabelBookFileName");
               LabelbookID = (Label)Repeater1.Items[index].FindControl("LabelbookID");


               if (Session["UserType"] == null)
                   Response.Redirect("~/Registration.aspx");
               else
               {
                   if (Session["UserRegistrationType"].ToString() != "عضويت ساده")
                   {
                       dbo.updateQuery("TableBook", "bookDownloadCounter=bookDownloadCounter+1  where bookID=" + LabelbookID.Text);
                       Response.Redirect("../BookFiles/Books/" + LabelBookFileName.Text);
                   }
                   else
                       lblMessage.Text = "برای دانلود فایلها، عضویت ویژه لازم است.";

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
                                if (orderBy.Text == "تعداد دانلود")
                                {
                                    PageNumber = 0;
                                    showPasseges("Download");
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



    }
}