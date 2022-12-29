using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using LogicalLayer;
using System.Web.Script.Serialization;

namespace PresentationLayer
{
    public partial class JSONAndroidIncrementNewsViewrCounter : System.Web.UI.Page
    {

        LogicalLayer.News myNews = new LogicalLayer.News();

        public class News
        {
            // Fields

            public string newsID;
            public Boolean newsIfViewerCounterUpdated;
        }
 

        protected void Page_Load(object sender, EventArgs e)
        {


                this.ProcessJSONRequest(HttpContext.Current);

            
        }


        protected Boolean updateNewsViewerCounter(String newsID, String newsCounter)
        {


            if (myNews.updateNews("TableNews", " newsViewerCounter=newsViewerCounter+" + newsCounter + " where newsID=" + newsID) == null)
                return true;
            else
                return false;
        }


        public void ProcessJSONRequest(HttpContext context)
        {
            object[] objArray = new object[1];

                objArray[0] = new News
                {
                    newsID = base.Request.QueryString[0].ToString(),
                    newsIfViewerCounterUpdated=updateNewsViewerCounter(base.Request.QueryString[0].ToString(),base.Request.QueryString[1].ToString())
                };
            
            context.Response.ContentType = "application/json";
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            serializer.MaxJsonLength = 2147483644;
            try
            {
                context.Response.Write(serializer.Serialize(objArray));
            }
            catch (Exception exception)
            {
                base.Response.Write(exception.Message);
            }
        }


    }
}