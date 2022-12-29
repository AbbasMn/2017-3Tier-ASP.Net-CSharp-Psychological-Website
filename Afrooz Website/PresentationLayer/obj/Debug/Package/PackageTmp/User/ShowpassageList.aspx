<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="ShowpassageList.aspx.cs" Inherits="PresentationLayer.User.ShowpassageList" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<script src="../WebsiteLayout/Interface/javascripts/design-attachment.js"></script>
<script src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">



<div class="sidebar" style="margin-top:12px;">

<h1 class="content-box-title">اخبار و رویدادها</h1>

<asp:Repeater id="Repeater2" runat="server" onitemcommand="Repeater2_ItemCommand" >
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>

<div class="tab-news-item" runat="server" >

 <a>
 <img id="Img1" src="../NewsImages/<%#Eval("newsPictureName")%>" alt="" width="170" height="75" >    
  </a>
                                &nbsp;<h2 class="tab-news-item-title">
                                    <asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label>

                                	<asp:LinkButton ID="LinkButtonTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton>
                                    
                                </h2>
                                <div class="tab-news-item-meta"> 
                                    <a class="news-more">
                                    
                                    <asp:LinkButton ID="LinkButtonAboutMabhas" Visible="false" runat="server" Text=<%#Eval("newsType")%> > </asp:LinkButton>

                                    <asp:LinkButton ID="LinkButtonAboutMozo"  CommandName="goToShowDetails" runat="server" Text=<%#Eval("newsPriority")%> > </asp:LinkButton>
                                    
                                    </a>
                                        <ul class="tab-news-item-meta-link">

                                        <%--<%#Eval("newsViewerCounter")%> بازدید--%>

                                            <li class="tooltip" title="<%#Eval("newsViewerCounter")%> بازدید">
                                                <a class="view">
                                                    <div class="tooltipInfo"><%#Eval("newsViewerCounter")%> بازدید
                                                    </div>
                                                 </a></li>
                                         </ul>
                                </div>
                            </div>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater>


</div>









<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<div class="content-box" id="Div1" style="margin-top:0px; margin-right:40px; margin-top:12px;">
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
        <asp:ListItem>مطلب روانشناسی</asp:ListItem>
        <asp:ListItem>مقاله روانشناسی</asp:ListItem>
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
<img src="../NewsImages/<%#Eval("newsPictureName")%>" alt="" ></div>
<div class="news-item-left">
<asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label>
<h1 class="news-title">

<asp:LinkButton ID="LinkButtonNewsTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton></h1>

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