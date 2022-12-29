using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentationLayer.PresentationLayer.User
{
    public partial class SubjectRouter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["sentRouterSubjectAbout"] = Request.QueryString[0];
            Session["sentSubjectAbout"] = null;
            Session["sentMabhasAbout"] = null;


            Response.Redirect("SubjectDetails.aspx");
            //Response.Write(Session["Subject"].ToString());

        }
    }
}