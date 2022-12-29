<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="ShowEventList.aspx.cs" Inherits="PresentationLayer.User.ShowEventList" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">
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
<div class="content-box" id="Div1" style="margin-right:40px; margin-top:12px;">
<asp:Label ID="lblSortTpe" runat="server" Text="Label" class="content-box-title" Width="100%"></asp:Label>


<div class="sort" style="margin-bottom:8px;">
<div class="sort-item"> 


<%--<span style="float:right;">تعداد نمایش مطلب در صفحه:
    <asp:DropDownList ID="DropDownListPageCount" runat="server" AutoPostBack="true" 
        onselectedindexchanged="DropDownListPageCount_SelectedIndexChanged" >
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
    </asp:DropDownList>
</span>--%>



<span>مرتب سازی بر اساس:</span>
    <asp:DropDownList ID="orderBy" runat="server" AutoPostBack="True" 
        onselectedindexchanged="orderBy_SelectedIndexChanged" >
        <asp:ListItem>...</asp:ListItem>
        <asp:ListItem>آموزشی-پژوهشی</asp:ListItem>
        <asp:ListItem>خبر-رویداد</asp:ListItem>
        <asp:ListItem>مبحث</asp:ListItem>
        <asp:ListItem>موضوع</asp:ListItem>
        <asp:ListItem>تاریخ</asp:ListItem>
        <asp:ListItem>تعداد بازدید</asp:ListItem>
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
        runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %>
                    </asp:LinkButton>
           </ItemTemplate>
        </asp:Repeater>
</div>


<asp:Repeater id="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
     <div class="news-item">
<div class="news-item-right"> 
<img src="../NewsImages/<%#Eval("newsPictureName")%>" alt="" width="194" height="120"></div>
<div class="news-item-left">
<asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label>
<h1 class="news-title"><asp:LinkButton ID="LinkButtonNewsTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton></h1>

<div class="news-meta">
<div class="news-meta-item-small"></div>
<div class="news-meta-item-small">


 <label style="float:right;" >مبحث:</label>

 <asp:Label ID="LabelNewsAboutMabhas" runat="server" style="margin-right:0px;   float:right; width:145px;"  Text=<%#Eval("newsType")%>></asp:Label>



<label style="float:right;">موضوع:</label>

<asp:Label ID="LabelNewsAbout" runat="server" style="margin-right:0px;  float:right;  width:165px; " Text= <%#Eval("newsPriority")%>></asp:Label>

<label style="margin-right:0px;  float:right;">بازدید: <%#Eval("newsViewerCounter")%></label>



<%--<a style="margin-right:100px;float:right;"">

<asp:LinkButton ID="LinkButton1"  runat="server" Text=<%#Eval("newsPriority")%>></asp:LinkButton></a>--%>




















</div>
</div>

<div class="news-content">
<%#Eval("newsPassage")%>  ...
</div>

<div class="news-meta" style="border-top:1px dashed #999;">
<div class="news-meta-item">

<label style="margin-right:0px;float:right;"><%#Eval("newsBranchName")%></label>


<label style="margin-left:330px;float:left;">تاریخ :<%#Eval("newsDate")%></label></div>

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
        runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %>
                    </asp:LinkButton>
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