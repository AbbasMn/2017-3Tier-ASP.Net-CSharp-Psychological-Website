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
    public partial class JSON : System.Web.UI.Page
    {
        public class News
        {
            // Fields
            public int newsAouthorID;
            public string newsAouthorLastName;
            public string newsAouthorName;
            public string newsAouthorType;
            public bool newsArchieve;
            public string newsBranchName;
            public string newsDate;
            public string newsDownloadingFileByWhatMemberType;
            public bool newsDownloadingFilePermision;
            public int newsID;
            public string newsPassage;
            public string newsPictureName;
            public string newsPriority;
            public string newsRelatedLink;
            public string newsShoingwToWhatMemberType;
            public bool newsShowingPermision;
            public string newsTitle;
            public string newsType;
            public string newsUploadedFileName;
            public string newsUploadedFileType;
            public int newsViewerCounter;
        }

 

 

        protected void Page_Load(object sender, EventArgs e)
        {
           this.ProcessJSONRequest(HttpContext.Current);
            
        }



        public void ProcessJSONRequest(HttpContext context)
        {
            object[] objArray = new object[5000];
            DataTable table = new DataTable();
            table = showStudentsNewsComputer();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                objArray[i] = new News
                {
                    newsTitle = table.Rows[i]["newsTitle"].ToString(),
                    newsDate = table.Rows[i]["newsDate"].ToString(),
                    newsPassage = table.Rows[i]["newsPassage"].ToString(),
                    newsAouthorID = int.Parse(table.Rows[i]["newsAouthorID"].ToString()),
                    newsAouthorLastName = table.Rows[i]["newsAouthorLastName"].ToString(),
                    newsAouthorName = table.Rows[i]["newsAouthorName"].ToString(),
                    newsArchieve = bool.Parse(table.Rows[i]["newsArchieve"].ToString()),
                    newsBranchName = table.Rows[i]["newsBranchName"].ToString(),
                    newsID = int.Parse(table.Rows[i]["newsID"].ToString()),
                    newsPictureName = table.Rows[i]["newsPictureName"].ToString(),
                    newsRelatedLink = table.Rows[i]["newsRelatedLink"].ToString(),
                    newsShowingPermision = bool.Parse(table.Rows[i]["newsShowingPermision"].ToString()),
                    newsType = table.Rows[i]["newsType"].ToString(),
                    newsPriority = table.Rows[i]["newsPriority"].ToString(),
                    newsViewerCounter = int.Parse(table.Rows[i]["newsViewerCounter"].ToString())
                };
            }
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


        protected DataTable showStudentsNewsComputer()
        {
            SqlCommand command = new SqlCommand();
            SqlConnection connection = new SqlConnection();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable dataTable = new DataTable();
            News news = new News();

            if (Request.QueryString.Count==2)    
            
                command.CommandText = " select *  from TableNews where newsID >" + base.Request.QueryString[0].ToString() + " and newsShowingPermision=1  order by newsID asc";
            
            else   
                command.CommandText = " select *  from TableAtieNoo where newsID >" + base.Request.QueryString[0].ToString() + " and newsShowingPermision=1  order by newsID asc";
            



            command.Connection = connection;
            command.CommandType = CommandType.Text;
            adapter.SelectCommand = new SqlCommand();
            adapter.SelectCommand.Connection = connection;
            adapter.SelectCommand = command;
            try
            {
                connection.ConnectionString = "Data Source=74.63.251.194,1533;Network Library=DBMSSOCN;Initial Catalog=accrahezend_BusinessSite;User ID=accrahezend_abas454933abas;Password= abas454933@;";
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                    adapter.Fill(dataTable);
                    connection.Close();
                    return dataTable;
                }
                dataTable.Clear();
                return dataTable;
            }
            catch (Exception)
            {
                dataTable.Clear();
                return dataTable;
            }
        }


    }
}