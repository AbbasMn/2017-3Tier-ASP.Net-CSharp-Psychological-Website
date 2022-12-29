<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="ShowAllVidoe.aspx.cs" Inherits="PresentationLayer.ShowAllVidoe" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<script src="../WebsiteLayout/Interface/javascripts/design-attachment.js"></script>
<script src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">








<div class="single-content-box" id="Div1" style="margin-top:12px;">



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




                    <h1 class="content-box-title" style="width:100%;">ویدئوهای روانشناسی <%Response.Write(videoType);%></h1>

                    <div class="carousel-wrapper" style="width:100%;">

                            <ul class="video-review" style="width:100%;">

                                  <asp:Repeater id="RepeaterVideo" runat="server">
                
                                    <HeaderTemplate>
                               
                                    </HeaderTemplate>

                                    <ItemTemplate>
       
                               <li> <a href="VideoRouter.aspx?<%#Eval("videoID")%>">
                                    <div class="play-icon"></div>
                                    
                                    
                                    <img src="VideoClips/VideoImages/<%#Eval("videoPicName")%>"> </a>                                  
                                     
                                    <div class="video-review-content">
                                        <%--<h3>--%><%#Eval("videoTitle")%><%--</h3>--%>                                       
                                       <%-- <h3><%#Eval("videoOwner")%></h3>--%>
                                        <br />
                                       <%#Eval("videoTime")%> دقیقه
                                     </div>
                            	</li>
                                    </ItemTemplate>
                 
                                <FooterTemplate>
                
                                </FooterTemplate>
                                </asp:Repeater>

                           </ul>
                    </div>


</div>






</asp:Content>