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
    public partial class JSONUpdatedviewerCounter : System.Web.UI.Page
    {
        public class News
        {
            // Fields

            public int newsID;
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
                    newsID = int.Parse(table.Rows[i]["newsID"].ToString()),
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



            command.CommandText = " select newsID,newsViewerCounter  from TableNews where newsShowingPermision=1  order by newsID asc";



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