<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="SubjectDetails.aspx.cs" Inherits="PresentationLayer.User.SubjectDetails" %>

<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">
<!--    up-down text slider -->
<script type="text/javascript" src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../WebsiteLayout/Interface/javascripts/jquery.cycle.js"></script>

<script src="../WebsiteLayout/Interface/javascripts/Wce10b40154b31.htm"></script>  <!-- left pic slider -->
<script>    eval(mod_pagespeed_0jriLnLQ6q);</script> <!-- left news slider && Tabs Panel -->
<script src="../WebsiteLayout/Interface/javascripts/Wc1dd34ae1395d.htm"></script> <!-- left news slider && Tabs Panel -->
<script>    eval(mod_pagespeed_8S0DVjbKH0);</script>
<!--    up-down text slider -->



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


<div class="main" style="margin-top:0px;">


      
<div class="sidebar">


<div class="content-box-right">

         <div class="content-box-right-title">
       <asp:Label ID="LabelSubjects" runat="server" Text="امکانات کاربر"></asp:Label>
    </div>


<div class="price-list-table-list">


<div class="price-list-table-list-cyclist">

<ul> 


<asp:Repeater id="Repeater2" runat="server" onitemcommand="Repeater2_ItemCommand">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
<li>

<asp:LinkButton ID="LinkButtonNewsTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails" ToolTip=<%#Eval("newsTitle")%>></asp:LinkButton>
<asp:Label ID="LableNewsID"  runat="server" Text=<%#Eval("newsID")%> Visible="false"></asp:Label>

</li>


    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 

</ul>


</div>



</div>

</div>
    



    
<div class="content-box-right">

         <div class="content-box-right-title">
       <asp:Label ID="lblMabahes" runat="server" Text="امکانات کاربر"></asp:Label>
    </div>


<div class="price-list-table-list">



<div class="price-list-table-list-cyclist">

<ul>


<asp:Repeater id="Repeater3" runat="server" onitemcommand="Repeater3_ItemCommand">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
<li>

<asp:LinkButton ID="LinkButtonNewsTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails" ToolTip=<%#Eval("newsTitle")%>> </asp:LinkButton>
<asp:Label ID="LableNewsID"  runat="server" Text=<%#Eval("newsID")%> Visible="false"></asp:Label>


</li>


    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 

</ul>


</div>



</div>

</div>
    

</div>



<div class="content" style="margin-top:40px;">



<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>


<div class="news-meta-item" style="margin-bottom:-40px;">

 
 
  <asp:HyperLink ID="HyperLinkFile" runat="server"  Font-Underline="True" 
        Font-Size="15px" Font-Names="Times New Roman" Font-Bold="True" Target="_blank"
        NavigateUrl="~/WebsiteLayout/Pic/Icons/admin.png"  style="float:left;"></asp:HyperLink> 



<asp:Label ID="lblFile" runat="server" Text="دانلود فایل :" style="float:left;"></asp:Label>


    
   

<asp:HyperLink ID="HyperLinkManba" runat="server"  Font-Underline="True" Font-Size="15px" Font-Names="Times New Roman" Font-Bold="true" style="float:left;" Target="_blank"></asp:HyperLink>

<asp:Label ID="lblManba" runat="server" Text="منبع و آدرس :" style="float:left;"></asp:Label>


</div>


<asp:Repeater id="Repeater1" runat="server">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
<h1 class="content-box-title"><%#Eval("newsTitle")%></h1>

<div class="news-meta news-meta-single"></div>

<div class="news-meta news-meta-single">

<div class="news-meta-item">
مبحث : &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LinkButtonNewsCategory" Font-Size="14px" Font-Bold="true" runat="server" Text=<%#Eval("newsType")%>></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
موضوع : &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LinkButton1" Font-Size="14px" Font-Bold="true" runat="server" Text=<%#Eval("newsPriority")%>></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   تاریخ : &nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("newsDate")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   بازدید : &nbsp;&nbsp; &nbsp;&nbsp;<%#Eval("newsViewerCounter")%></div>

</div>



<div class="news-content-single"> 

<a>

<img width="400" height="200"  border="0" src="../NewsImages/<%#Eval("newsPictureName")%>" alt="" align="right" style="padding:10px 0px 10px 20px;"></a>

<div class="content-box-PassageMy">


<%#Eval("newsPassage")%>

</div>


</div>

<div class="news-meta news-meta-single"></div>

<div class="news-meta news-meta-single">

<div class="news-meta-item">



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;





    </ItemTemplate>
                 
    <FooterTemplate>
                
</FooterTemplate>

</asp:Repeater> 


</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "Repeater2" /> 
        </Triggers> 

    </asp:UpdatePanel> 


</div>



</div>

</div>
</asp:Content>