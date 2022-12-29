<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
 CodeBehind="AdminControlPanelPage.aspx.cs" Inherits="PresentationLayer.Admin.AdminControlPanelPage" %>

<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<!--    up-down text slider -->
<script type="text/javascript" src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../WebsiteLayout/Interface/javascripts/jquery.cycle.js"></script>

<script src="../WebsiteLayout/Interface/javascripts/Wce10b40154b31.htm"></script>  <!-- left pic slider -->
<script>    eval(mod_pagespeed_0jriLnLQ6q);</script> <!-- left news slider && Tabs Panel -->
<script src="../WebsiteLayout/Interface/javascripts/Wc1dd34ae1395d.htm"></script> <!-- left news slider && Tabs Panel -->
<script>    eval(mod_pagespeed_8S0DVjbKH0);</script>
<!--    up-down text slider -->



    </asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">

<div class="main" style="margin-top:0px;">

<% 
    if(Session["UserType"]=="Admin") 
    {
        string s = "<div class='wrapper' style='margin-top:-10px;'>" +
"<div class='top-ravan'>" +
"<div class='container'>"+
"<div class='top-ravan-category-list'>"+
"<ul>"+
"<li><a href='../Main.aspx'><img id='Img2'  runat='server' src='../WebsiteLayout/Pic/Icons/homeMain.png' alt=''  />صفحه اصلی</a></li>" +
"<li><a href='AdminControlPanelPage.aspx'><img id='Img1'  runat='server' src='../WebsiteLayout/Pic/Icons/examDate.png' alt=''  />کنترل پانل</a></li>" +
"<li><a href='AdminProfile.aspx'><img id='Img3'  runat='server' src='../WebsiteLayout/Pic/Icons/editprofile.png' alt=''  />پروفایل</a></li>" +
"<li><a href='AdminBranchManagment.aspx'><img id='Img4'  runat='server' src='../WebsiteLayout/Pic/Icons/softdownload2.png' alt=''  />مبحث</a></li>" +
"<li><a href='AdminInserNews.aspx'><img id='Img5'  runat='server'   src='../WebsiteLayout/Pic/Icons/peresentedCourse.png' alt='' />ثبت مطلب جدید</a></li>" +
"<li><a href='AdminEditNews.aspx'><img id='Img6'  runat='server' src='../WebsiteLayout/Pic/Icons/marks.png' alt='' />ویرایش مطالب</a></li>" +
"<li><a href='AdminInsertEvent.aspx'><img id='Img7'  runat='server' src='../WebsiteLayout/Pic/Icons/news.png' alt='' />ثبت خبر / رویداد جدید</a></li>" +
"<li><a href='AdminEditEvent.aspx'><img id='Img8'  runat='server' src='../WebsiteLayout/Pic/Icons/responseToMessage.png' alt='' />ویرایش رویدادها</a></li>" +
"</ul>"+
"</div> </div>"+
"</div> ";
        
        Response.Write(s);
    
    }
        
        %>

<div class="content" style="margin-top:12px;">


 <div class="content-box-left">
<h1 class="content-box-title">
 آمار مدیریت سایت</h1>
<p>
 <asp:Label ID="lblMessage" CssClass="content-box-lableBigBlackMy" runat="server"></asp:Label>
</p>
</div>
 

<div class="content-box-left">
<h1 class="content-box-title">
 صفحه کنترل پانل مدیریت وب سایت </h1>
<div class="" align="right" dir="rtl">

</div>
   


                                                  
                                 <div class="content-box-PassageMy">

                                 
                                    
                                 </div>
                                 

                                 <div class="content-box-PassageMy">

                                
                                 </div>
                                
                                 
                                 <div class="content-box-PassageMy">
                                 </div>

</div>


</div>



<div class="sidebar" style="margin-top:12px;">

    <div class="content-box-right">

         <div class="content-box-right-title">
       امکانات مدیریت سایت
    </div>

         <table width="100%" align="right" dir="rtl"  >
                                  <tr>
                                    <td align="center" valign="top" >
                                                                        <asp:ImageButton ID="ImageButton12" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/logout.png" 
                                            Width="38px" onclick="ImageButton12_Click" />
                                        <br />
                                        خروج<br />
                                    </td>

                                    <td align="center" valign="top">
                                        <asp:ImageButton ID="ImageButton11" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/homeMain.png" 
                                            Width="38px" onclick="ImageButton11_Click" />
                                        <br />
                                        صفحه اصلي
                                       </td>
                          
                                    <tr>                          

                          
                                    <td align="center" valign="top">
                                        <asp:ImageButton ID="ImageButton28" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/peresentedCourse.png" 
                                            Width="38px" onclick="ImageButton28_Click" />
                                        <br />
                                       ثبت مطلب جدید</td>
                 
                                    <td align="center" valign="top">

                                        <asp:ImageButton ID="ImageButton13" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/news.png" 
                                            Width="38px" onclick="ImageButton13_Click" />
                                        <br />
                                        ثبت خبر / رویداد جدید<br />
                                        </td>

                                                                                                     
                          
                                  </tr>
                          
                                    <tr>                          

                          
                                    <td align="center" valign="top">
                                    
                                    <asp:ImageButton ID="ImageButton29" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/marks.png" 
                                            Width="38px" onclick="ImageButton29_Click"/>
                                        <br />
                                        ویرایش مطالب</td>
                 
                                    <td align="center" valign="top">

                                    <asp:ImageButton runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/responseToMessage.png" 
                                            Width="38px" onclick="Unnamed1_Click"/>
                                        <br />
                                        ویرایش رویدادها<br />
                                        </td>

                                                                                                     
                          
                                  </tr>
                          
                                    <tr>                          

                          
                                    <td align="center" valign="top">
                                    
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/selectCourse.png" 
                                            Width="38px" onclick="ImageButton1_Click" />
                                        <br />
                                        مطالب نوشته شده</td>
                 
                                    <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/softdownload2.png" 
                                            Width="38px" onclick="ImageButton2_Click"/>
                                        <br />
                                       مبحث </td>

                                                                                                     
                          
                                  </tr>
                          
                                    <tr>                          

                          
                                    <td align="center" valign="top">
                                    
                                    <asp:ImageButton ID="ImageButton31" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/Tadris.png" 
                                            Width="38px" onclick="ImageButton31_Click"/>
                                        <br />
                                        تعریف /حذف مشاوره تلفنی<br />
                                        </td>
                 
                                    <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton32" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/protest.png" 
                                            Width="38px" onclick="ImageButton32_Click"/>
                                        <br />
                                        مدیریت مشاوره تلفی</td>

                                                                                                     
                          
                                  </tr>
                                  <tr>                          

                          
                                    <td align="center" valign="top">


                          
                                        <asp:ImageButton ID="ImageButton22" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/editprofile.png" 
                                            Width="38px" onclick="ImageButton22_Click" />
                                        <br />
                                        پروفایل</td>
                 
                                    <td align="center" valign="top">


                                    
                                    <asp:ImageButton ID="ImageButton30" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/student.png" 
                                            Width="38px" onclick="ImageButton30_Click" />
                                        
                                        <br />
                                        اعضای سایت</td>


                          
                                  </tr>
                                  <tr>                          

                          
                                    <td align="center" valign="top">


                                    
                                    <asp:ImageButton ID="ImageButton33" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/student.png" 
                                            Width="38px" onclick="ImageButton33_Click" />
                                        
                                        <br />
                                        ارسال پیام کلینیک آتیه نو</td>


                          
                                    <td align="center" valign="top">


                                    
                                        <asp:ImageButton ID="ImageButton34" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/protest.png" onclick="ImageButton34_Click" 
                                            Width="38px" />
                                        <br />
                                        تایید واریزهای اعضای سایت</td>


                          
                                  </tr>
                                  <tr>                          

                          
                                    <td align="center" valign="top">


                                    
                                        <asp:ImageButton ID="ImageButton35" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/book.png" 
                                            onclick="ImageButton35_Click" Width="38px" />
                                        <br />
                                        تعریف کتاب برای دانلود</td>


                          
                                    <td align="center" valign="top">


                                    
                                        <asp:ImageButton ID="ImageButton36" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/wefwe.png" onclick="ImageButton36_Click" 
                                            Width="38px" />
                                        <br />
                                        تعریف ویدیو&nbsp;</td>


                          
                                  </tr>
                              </table>
    </div>




    


    </div>



</div>




</asp:Content>


