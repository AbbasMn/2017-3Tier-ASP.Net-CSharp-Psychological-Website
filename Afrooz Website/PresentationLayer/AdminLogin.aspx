<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master" 
CodeBehind="AdminLogin.aspx.cs" Inherits="PresentationLayer.AdminLogin" %>
 
<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

  
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

 <asp:Content ID="MainBody" ContentPlaceHolderID="FullMainBody" runat="server">


<div class="main" style="margin-top:0px;">
<div class="single-content-box">

<h1 class="content-box-title">
 صفحه ورود مدیر سایت</h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<p  class="content-box-titleMy"> مدیریت محترم سایت:</p>
<p class="content-box-PassageMy">لطفا پس از اتمام عملیات با کلیک بر روی <strong>دکمه خروج</strong> از سایت خارج شوید.   
    </p>

</div>

<br />

                               




 </div>
</div>

</asp:Content>
