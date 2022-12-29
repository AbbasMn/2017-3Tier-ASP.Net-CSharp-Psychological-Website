<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="ShowVideo.aspx.cs" Inherits="PresentationLayer.ShowVideo" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

   <!-- player skin -->
    <link href="WebsiteLayout/FilmPlayer/playful.css" rel="stylesheet" type="text/css" />
   
   
   <style>
   /* site specific styling 
   
     body {
      font: 12px "Myriad Pro", "Lucida Grande", "Helvetica Neue", sans-serif;
      padding-top: 1%;
      color: #999;     
   }*/

   /* custom player skin */
   .flowplayer { width: 100%; background-color: #222; background-size: cover; max-width: 970px; height:400px; }
   .flowplayer .fp-controls { background-color: rgba(17, 17, 17, 1)}
   .flowplayer .fp-timeline { background-color: rgba(204, 204, 204, 1)}
   .flowplayer .fp-progress { background-color: rgba(0, 177, 178, 1)}
   .flowplayer .fp-buffer { background-color: rgba(249, 249, 249, 1)}

   </style>

   <!-- flowplayer depends on jQuery 1.7.2+ -->
    <script src="WebsiteLayout/FilmPlayer/jquery-1.10.2.min.js" type="text/javascript"></script>

   <!-- flowplayer javascript component -->
    <script src="WebsiteLayout/FilmPlayer/flowplayer.min.js" type="text/javascript"></script>

    <!-- player skin -->


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

   

                  <h1 class="content-box-title" style="width:250px;">نمایش بر اساس
                         <div class="sort" style="margin-bottom:-5px;margin-top:-25px;">
                <div class="sort-item"> 


                    <asp:DropDownList ID="orderBy" runat="server" AutoPostBack="True" 
        onselectedindexchanged="orderBy_SelectedIndexChanged" >
                            <asp:ListItem>همه</asp:ListItem>
                            <asp:ListItem>اختلالات روانی</asp:ListItem>
                            <asp:ListItem>روانشناسی اجتماعی</asp:ListItem>
                            <asp:ListItem>روانشناسی سلامت</asp:ListItem>
                            <asp:ListItem>روانشناسی زناشویی</asp:ListItem>
                            <asp:ListItem>روانشناسی کودکان</asp:ListItem>
                            <asp:ListItem>مشاوره ازدواج</asp:ListItem>
                            <asp:ListItem>مشاوره خانواده</asp:ListItem>
                            <asp:ListItem>مهارتهای زندگی</asp:ListItem>
    </asp:DropDownList>

</div>
</div>   
                  </h1>  

                
                    
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

                    <div class="sidebar-video-list">
                  <ul>

                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>

                                  <asp:Repeater id="RepeaterAllVideo" runat="server" OnItemCommand="RepeaterAllVideo_ItemCommand">
                
                                    <HeaderTemplate>
                               
                                    </HeaderTemplate>

                                    <ItemTemplate>
                                           <li>
                                                <div class="sidebar-video-list-right">                                                                                                   
                                                 <a>
                                                     
                                                 <asp:Label ID="LabelVideoID" Visible="false"    runat="server" Text=<%#Eval("videoID")%>></asp:Label>
                                                <img src="VideoClips/VideoImages/<%#Eval("videoPicName")%>" 
                                                alt="" 
                                                width="90" height="70"></a> </div>


                                                <article class="sidebar-video-list-left">
                                                    <h1>
                                                        <asp:LinkButton ID="LinkButtonVideo" runat="server"><%#Eval("videoTitle")%></asp:LinkButton>
                                                        <%--<a href="VideoRouter.aspx?"><%#Eval("videoTitle")%></a>--%>
                                                    
                                                    </h1>
                                                    <div class="sidebar-video-list-meta"> <span>بازدید :<%#Eval("videoViewerCounter")%></span><%--<span>دانلود : <%#Eval("videoDownloadCounter")%></span>--%></div>
                                                </article>
                                          </li> 

                                   </ItemTemplate>

                                 
                                <FooterTemplate>
                
                                </FooterTemplate>
                                </asp:Repeater>
</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "rptPagingUp" /> 
        </Triggers> 

    </asp:UpdatePanel> 

                   </ul>
                </div>





</div>








<div class="content-box"  style="margin-top:0px; margin-right:80px; margin-top:12px;">
 
                                                             <blink>
                                                                <asp:Label ID="lblMessage" runat="server" 
                                                                    style="font-size:17px; color:#ff0066; margin-right:200px;"  ></asp:Label>

                                                                    <asp:Label ID="LabelDownloadLink" runat="server" Visible="false"></asp:Label>
                                                             </blink>                                 
                             
<article>
                                  <asp:Repeater id="RepeaterVideo" runat="server">
                
                                    <HeaderTemplate>
                               
                                    </HeaderTemplate>

                                    <ItemTemplate>
                                                <h1 class="content-box-title"  id="A"><%Response.Write(videoType);%> <%#Eval("videoTitle")%>  </h1>

                                                <div class="video-box-content">


                                                    <div class="video-meta" style="width:650px; margin-right:5px;">
                                                        <div class="video-meta-item" style="width:200px"> مبحث : <span > <a href=""><%#Eval("videoMabhas")%> </a> </span> </div>
                                                        <div class="video-meta-item" style="width:180px"> موضوع : <span> <a href=""><%#Eval("videoMozoo")%> </a> </span> </div>
                                                        <div class="video-meta-item" style="width:105px"> 
                        	                                تاریخ : <span><%#Eval("videoDate")%></span></div>
                                                        <div class="video-meta-item" style="width:80px"> بازدید : <span><%#Eval("videoViewerCounter")%></span> </div>
                                                        <%--<div class="video-meta-item" style="width:75px">دانلود : <span><%#Eval("videoDownloadCounter")%></span></div>--%>
                        
                                                    </div>


                                                    <div class="review-video-box" style="margin-top:20px;  margin-right:15px; direction:ltr;">

                                                       <div   class="flowplayer play-button"    data-ratio="0.416" data-analytics="[Your analytics ID]">

                                                         <video poster="VideoClips/VideoImages/<%#Eval("videoPicName")%>">
                                                             <source type="video/mp4" src="<%#Eval("videoFileDownloadLink")%>">

                                                             <%--<source type="video/mp4" src="http://hw15.asset.aparat.com/aparat-video/9cf78bb9df7d55329fbe8d8e51a3dab42756642-352p__41287.mp4">--%>
                                                             
                                                         </video>
      
                                                      </div>
					                    
                                                    </div>


                                                <div class="video-content" style="font-size:13px;"><%#Eval("videoPassage")%></div>
                   
                                                    
                                                </div>

                                    </ItemTemplate>

                                 
                                <FooterTemplate>
                
                                </FooterTemplate>
                                </asp:Repeater>

<%--                                <div class="video-option">
                                                        <div class="video-share"> <a href=""></a></div>    
                                                        
       
                                                                            
                                                         
                                                              <asp:Button ID="btnDownLoad" runat="server"  onclick="btnDownLoad_Click"
                                                                 style="width:275px;
                                                                height:35px;
                                                                padding:0 10px;
                                                                line-height:35px;
                                                                background:#fff;
                                                                border:0;
                                                                border-radius:5px;
                                                                -moz-border-radius:5px;
                                                                -webkit-border-radius:5px;
                                                                cursor:pointer;
                                                                background:#00b1b2;
                                                                color:#fff;
                                                                font-family:BYekan;
                                                                font-size:17px;
                                                                margin-right:180px;
                                                                " Text="دانلود" /> 
                                                           

                                  </div>--%>

</article>

             
</div>

  


</asp:Content>