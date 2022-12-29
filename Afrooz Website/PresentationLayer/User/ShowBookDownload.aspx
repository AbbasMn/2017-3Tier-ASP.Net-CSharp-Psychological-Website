<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="ShowBookDownload.aspx.cs" Inherits="PresentationLayer.User.ShowBookDownload" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<script src="../WebsiteLayout/Interface/javascripts/design-attachment.js"></script>
<script src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>

    <style>   
  blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          @-webkit-keyframes  blink { to { visibility: hidden; } }
           @-moz-keyframes blink { to { visibility: hidden; } } 
           @-o-keyframes blink { to { visibility: hidden; } } 
           @keyframes blink { to { visibility: hidden; } }
           }

</style> 
</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">



<div class="sidebar" style="margin-top:12px;">

<h1 class="content-box-title" style="width:160px; margin-bottom:-6px;">دسته بندی 
   ویدیوها</h1>
<div class="ver-ravan-category-list">
<ul>
<%
    DataBaseLayer.DataBaseOperations dbo = new DataBaseLayer.DataBaseOperations();
    System.Data.DataTable dt1 = new System.Data.DataTable();


    dt1 = dbo.selectQueryDataTable("TableVideo", "videoMabhas,count(videoMabhas) as Newscounter", null, "group by videoMabhas");

    for (int i = 0; i < dt1.Rows.Count; i++)
    {
        if (dt1.Rows[i]["videoMabhas"].ToString() == "مشاوره ازدواج")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?مشاوره ازدواج'>مشاوره ازدواج (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/heart_PNG696.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي زناشويي")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي زناشويي'>روانشناسي زناشويي (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/eye_PNG6184.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "مشاوره خانواده")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?مشاوره خانواده'>مشاوره خانواده (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/rose.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي کودکان")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي کودکان'>روانشناسي کودکان (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/girls_PNG6458.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي اجتماعي")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي اجتماعي'>روانشناسي اجتماعي (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/key_PNG3379.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي سلامت")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي سلامت'>روانشناسي سلامت (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/lips_PNG6225.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "اختلالات رواني")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?اختلالات رواني'>اختلالات رواني (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/book_PNG2109.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "مهارتهاي زندگي")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?مهارتهاي زندگي'>مهارتهاي زندگي (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/tree8.png' />
        }
    }


     %>
</ul>
</div>








<h1 class="content-box-title" style="width:160px; margin-bottom:-6px;">دسته بندی 
    مطالب</h1>

<div class="ver-ravan-category-list">
<ul>
<%
    LogicalLayer.News myNews = new LogicalLayer.News();
    System.Data.DataTable dt = new System.Data.DataTable();


    dt = myNews.showNews("TableNews","newsType,count(newsType) as Newscounter", null, "group by newsType");

    for (int i = 0; i < dt.Rows.Count; i++)
    {
        if (dt.Rows[i]["newsType"].ToString() == "مشاوره ازدواج")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?مشاوره ازدواج'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/heart_PNG696.png' />مشاوره ازدواج (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
           
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي زناشويي")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي زناشويي'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/eye_PNG6184.png' />روانشناسي زناشويي (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "مشاوره خانواده")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?مشاوره خانواده'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/rose.png' />مشاوره خانواده (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي کودکان")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي کودکان'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/girls_PNG6458.png' />روانشناسي کودکان (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي اجتماعي")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي اجتماعي'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/key_PNG3379.png' />روانشناسي اجتماعي (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي سلامت")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي سلامت'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/lips_PNG6225.png' />روانشناسي سلامت (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "اختلالات رواني")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?اختلالات رواني'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/book_PNG2109.png' />اختلالات رواني (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "مهارتهاي زندگي")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?مهارتهاي زندگي'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/tree8.png' />مهارتهاي زندگي (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }
    }


     %>
</ul>
</div>


</div>









<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<div class="content-box" id="Div1" style="margin-top:0px; margin-right:40px; margin-top:12px;">
<asp:Label ID="lblSortTpe" runat="server" Text="Label" class="content-box-title" Width="100%"></asp:Label>


    <blink>
    <asp:Label ID="lblMessage" runat="server" 
        style="font-size:17px; color:#ff0066;"></asp:Label>
    </blink>
&nbsp;<div class="sort" style="margin-bottom:8px;">
<div class="sort-item"> 




  
<span>

    <asp:Label ID="LabelNemayesh" runat="server" Text="نمایش بر اساس:"></asp:Label>
</span>
    <asp:DropDownList ID="orderBy" runat="server" AutoPostBack="True" 
        onselectedindexchanged="orderBy_SelectedIndexChanged" >
        <asp:ListItem>همه</asp:ListItem>
        <asp:ListItem>روانشناسی</asp:ListItem>
        <asp:ListItem>سلامت</asp:ListItem>
    </asp:DropDownList>

</div>
</div>





<div align="center">
<asp:Repeater ID="rptPagingUp" runat="server" 
            onitemcommand="rptPagingUp_ItemCommand" >
            <ItemTemplate>
                    <asp:LinkButton ID="btnPage"
        style="padding:5px; margin:2px; background:#00b1b2; border:solid 1px #ccc; font:8pt tahoma;"
    CommandName="Page" CommandArgument="<%# Container.DataItem %>"
        runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %></asp:LinkButton>
           </ItemTemplate>
        </asp:Repeater>
</div>


<asp:Repeater id="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
     <div class="news-item">
<div class="news-item-right"> 
<img src="../BookFiles/BooksImages/<%#Eval("bookPicName")%>" alt="" ></div>

<div class="news-item-left">
<asp:Label ID="LabelbookID" Visible="false"    runat="server" Text=<%#Eval("bookID")%>></asp:Label>
<h1 class="news-title">

<asp:Label ID="bookTitle"  runat="server" Text=<%#Eval("bookTitle")%> ></asp:Label></h1>

<div class="news-meta">
<div class="news-meta-item-small"></div>
<div class="news-meta-item-small">

 <label style="float:right;" >نویسنده:</label>

 <asp:Label ID="LabelbookAboutMabhas" runat="server" style="margin-right:0px;   float:right; width:145px;"  Text=<%#Eval("bookWriter")%>></asp:Label>





<label style="margin-right:140px;  float:right;">تعداد صفحه: <%#Eval("bookPageCount")%></label>




</div>
</div>

<div class="news-content">
<%#Eval("bookPassage")%> 
</div>

<div class="news-meta" style="border-top:1px dashed #999;">
<div class="news-meta-item">


    
     
     <asp:ImageButton ID="Image" style="margin-right:20px;float:right;"  width="40" height="40" runat="server" ImageUrl="../WebsiteLayout/Pic/Icons/download.png" 
     CommandName="goToShowDetails" />


<asp:Label ID="LabelBookFileName" runat="server"  Visible="false" Text=<%#Eval("bookFileName")%>></asp:Label>

<%-- <a style="margin-right:20px;float:right;" target="_blank" title="دانلود فایل">

    
 </a>--%>


<label style="margin-left:360px;float:left;">تعداد دانلود: <%#Eval("bookDownloadCounter")%></label>
</div>



</div>
</div>

</div>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 



<div align="center" >
<asp:Repeater ID="rptPagingDown" runat="server" 
            onitemcommand="rptPagingDown_ItemCommand" >
            <ItemTemplate>
                    <asp:LinkButton ID="btnPage"
        style="padding:5px; margin:2px; background:#00b1b2; border:solid 1px #ccc; font:8pt tahoma;"
    CommandName="Page" CommandArgument="<%# Container.DataItem %>"
        runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %></asp:LinkButton>
           </ItemTemplate>
        </asp:Repeater>
    </div>

        


</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "orderBy" /> 
        </Triggers> 

    </asp:UpdatePanel> 

</div>






</asp:Content>