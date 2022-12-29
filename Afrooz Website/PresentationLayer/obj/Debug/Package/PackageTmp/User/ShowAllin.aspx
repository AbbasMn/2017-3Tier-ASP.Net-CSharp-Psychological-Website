<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="ShowAllin.aspx.cs" Inherits="PresentationLayer.User.ShowAllin" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<script src="../WebsiteLayout/Interface/javascripts/design-attachment.js"></script>
<script src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">













<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<div class="single-content-box" id="Div1" style="margin-top:12px;">
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
        runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %></asp:LinkButton>
           </ItemTemplate>
        </asp:Repeater>
</div>


<asp:Repeater id="Repeater2" runat="server" onitemcommand="Repeater2_ItemCommand" >
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>

<div id="Div2" class="tab-news-item" runat="server" >

 <a>
 <img id="Img1" src="../NewsImages/<%#Eval("newsPictureName")%>" alt="" width="170" height="80" >    
  </a>
                                <h2 class="tab-news-item-title">
                                                                    
                                	<asp:LinkButton ID="LinkButtonTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton>
                                    <asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label>
                                </h2>

                                <div class="tab-news-item-meta"> 
                                    <a class="news-more">
                                    
                                    <asp:LinkButton ID="LinkButtonAboutMabhas" Visible="false" runat="server" Text=<%#Eval("newsType")%> > </asp:LinkButton>

                                    <asp:LinkButton ID="LinkButtonAboutMozo"  CommandName="goToShowDetails" runat="server" Text=<%#Eval("newsPriority")%> > </asp:LinkButton>


                                    
                                    </a>
                                    
                                    
                                        <ul class="tab-news-item-meta-link" style="margin-top:-4px;">

                                        <%#Eval("newsShoingwToWhatMemberType")%>
<%--
                                            <li class="tooltip" title="<%#Eval("newsViewerCounter")%> بازدید">
                                                <a class="view">
                                                    <div class="tooltipInfo"><%#Eval("newsViewerCounter")%> بازدید
                                                    </div>
                                                 </a></li>--%>
                                         </ul>
                                </div>
                            </div>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 



<%--<div align="center" >
<asp:Repeater ID="rptPagingDown" runat="server" 
            onitemcommand="rptPagingDown_ItemCommand" >
            <ItemTemplate>
                    <asp:LinkButton ID="btnPage"
        style="padding:5px; margin:2px; background:#00b1b2; border:solid 1px #ccc; font:8pt tahoma;"
    CommandName="Page" CommandArgument="<%# Container.DataItem %>"
        runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %></asp:LinkButton>
           </ItemTemplate>
        </asp:Repeater>
</div>--%>

        


</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "orderBy" /> 
        </Triggers> 

    </asp:UpdatePanel> 

</div>






</asp:Content>