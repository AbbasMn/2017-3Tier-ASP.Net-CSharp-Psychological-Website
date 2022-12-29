using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace PresentationLayer
{
    public partial class FilmPlayer2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            string mp4Url = Server.MapPath("~\\VedioClips\\") + "/" + "bauhaus.mp4";

                //"http://rahe-zendegi.ir/VedioClips/bauhaus.mp4";

            //string webmUrl = "http://video-js.zencoder.com/oceans-clip.webm";
            //string oggUrl = "http://video-js.zencoder.com/oceans-clip.ogv";

            sb.AppendFormat("<source id=\"mp4\" src=\"{0}\" type='video/mp4' />", mp4Url);

            //sb.AppendFormat("<source id=\"webm\" src=\"{0}\" type='video/webm' />", webmUrl);
            //sb.AppendFormat("<source id=\"ogg\" src=\"{0}\" type='video/ogg' />", oggUrl);

            ltSources.Text = sb.ToString();

        }
    }
}