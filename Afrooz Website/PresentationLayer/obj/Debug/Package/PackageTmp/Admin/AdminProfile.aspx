<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
 CodeBehind="AdminProfile.aspx.cs" Inherits="PresentationLayer.Admin.AdminProfile" %>

<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<!--    up-down text slider -->
<script type="text/javascript" src="../WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../WebsiteLayout/Interface/javascripts/jquery.cycle.js"></script>

<script src="../WebsiteLayout/Interface/javascripts/Wce10b40154b31.htm"></script>  <!-- left pic slider -->
<script>    eval(mod_pagespeed_0jriLnLQ6q);</script> <!-- left news slider && Tabs Panel -->
<script src="../WebsiteLayout/Interface/javascripts/Wc1dd34ae1395d.htm"></script> <!-- left news slider && Tabs Panel -->
<script>    eval(mod_pagespeed_8S0DVjbKH0);</script>
<!--    up-down text slider -->



    <style type="text/css">
                        
        .style4
        {
            font-size: 2px;
            background-color: #FFFFFF;
        }

        .style6
        {
            height: 14px;
            width: 199px;
        }
        .style7
        {
            width: 199px
        }

    blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          </style>



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
 مشخصات مدیریت سایت</h1>
<p>

                                 
                                   

</p>


<table 
                                            align="right" dir="rtl" style="width: 100%;">
 
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    نام:&nbsp;</td>
                                                            <td align="right" dir="rtl" class="style7" >
                                                                    <asp:Label ID="lblAdminName" runat="server" Text="Label" 
                                                                        CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    &nbsp;نام خانوادگي:&nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblAdminLastName" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl" class="style7" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                    &nbsp;</td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    نام کاربري:</td>
                                                            <td align="right"  dir="rtl" class="style7">
                                                                    <asp:Label ID="lblAdminUserName" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    کد کاربری:&nbsp;
                                                                            </td>
                                                            <td align="right"  dir="rtl">
                                                                    <asp:Label ID="lblAdminRowID" runat="server" Text="Label" 
                                                                        CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right"  dir="rtl" class="style7">
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right"  dir="rtl">
                                                                    &nbsp;</td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    استان:</td>
                                                            <td align="right" dir="rtl" class="style6" >
                                                                    <asp:Label ID="lblAdminUniversity" runat="server" Text="فارس" 
                                                                        CssClass="content-box-lableMy"></asp:Label>
                                                            </td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    شهر/شهرستان/روستا:</td>
                                                            <td align="right" dir="rtl" class="noUi-horizontal">
                                                                    <asp:Label ID="lblAdminBranch" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl" class="style6" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl" class="noUi-horizontal">
                                                                    &nbsp;</td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    ايميل:&nbsp; 
                                                                            </td>
                                                            <td align="right" dir="rtl" class="style7" >
                                                                                <asp:Label ID="lblAdminEmail" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                            </td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                                &nbsp;</td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" class="style4" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl" class="style7" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                                &nbsp;</td>
                                                        </tr>
                                                        
                                                        </table>

                                                   

</div>

<div class="content-box-left">
<h1 class="content-box-title">
    ویرایش مشخصات مدیریت سایت </h1>
<div class="" align="right" dir="rtl">

                               
<table width="100%" align="right" class="register-form" style="margin-right:10px;">

<tr>
                        <td align="center" colspan="4"   >
          
                 
          
                            &nbsp;</tr>





<tr>
                        <td align="right" valign="top"    >
                            * نام:    
                        <td  valign="top" align="right" >
                    <asp:TextBox ID="txtAdminName" runat="server"  
                        CssClass="text-field short-text-input" ></asp:TextBox>
                            
                            
                                
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtAdminName" ErrorMessage="نام را وارد کنید" 
                                SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td  valign="top" >
                            * نام خانوادگی:</td>
                        <td  valign="top" align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtAdminLastName" 
                                ErrorMessage="نام خانوادگی را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtAdminLastName" runat="server"  
                        CssClass="text-field short-text-input" ></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;<td  valign="top" align="right"  >
                                
                                &nbsp;</td>
                        <td  valign="top"  >
                            &nbsp;</td>
                        <td  valign="top" align="right" >
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" >
                            * نام کاربري:<td align="right"  valign="top">
                                <asp:TextBox ID="txtAdminUserName" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtAdminUserName" 
                                    ErrorMessage="نام کاربری را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td valign="top">
                    
                            
                    
                            * ايميل 
                            (Email):</td>
                            <td align="right" valign="top">
                    
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtAdminEmail" ErrorMessage="ایمیل را وارد کنید" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    
                                <asp:TextBox ID="txtAdminEmail" runat="server" 
                         CssClass="text-field short-text-input" MaxLength="50" ></asp:TextBox>
                    
                            </td>
                        </td>
    </tr>
                    <tr>
                        <td align="right" >
                            &nbsp;<td align="right"  valign="top">
                                &nbsp;</td>
                            <td valign="top">
                    
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtAdminEmail" Display="None" 
                                    ErrorMessage="ایمیل درست وارد شود" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            
                                </td>
                            <td align="right" valign="top">
                                &nbsp;</td>
    </tr>
                    <tr>
                        <td align="right"    >
                                * کلمه عبور فعلی:<td  valign="top" align="right"  >
                                
                            <asp:TextBox ID="txtAdminPassword" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtAdminPassword" 
                                    ErrorMessage="کلمه عبور فعلی را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                        <td  valign="top"  >
                                * کلمه عبور جدید:</td>
                        <td  valign="top" align="right" >
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtAdminPasswordNew" 
                                    ErrorMessage="کلمه عبور جدید را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtAdminPasswordNew" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20" 
                                TextMode="Password"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;<td  valign="top" align="right"  >
                                
                            &nbsp;</td>
                        <td  valign="top"  >
                            &nbsp;</td>
                        <td  valign="top" align="right" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td    >
                            جنسيت:                       
                            </td>
                        <td  valign="top" >
                                &nbsp;
                        <asp:RadioButton ID="rdioAdminSexMale" runat="server"  
                                    GroupName="Gender" Text="مرد  " Textalign="right" 
                                    Checked="True"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:RadioButton ID="rdioAdminSexFemale" runat="server"  
                                    GroupName="Gender" Text="زن  " Textalign="right" />
                    


                                </td>
                        <td  valign="top" >
                    
                            
                    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ShowMessageBox="True" ShowSummary="False" />
                        </td>
                        <td  valign="top" align="right" class="search-autocomplete">
                    
                            
                    
                                <asp:Button ID="btnSave" runat="server" CssClass="submit-field" 
                                    style="margin-right: 0px" Text="ویرایش" onclick="btnSave_Click" />
                    
                            
                    
                        </td>
                    </tr>
                    <tr>
                        <td    >
                            &nbsp;</td>
                        <td  valign="top" >
                                &nbsp;</td>
                        <td  valign="top" >
                    
                            
                    
                            &nbsp;</td>
                        <td  valign="top" align="right" class="search-autocomplete">
                    
                            
                    
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4"    >
                        <asp:Label ID="lblError" CssClass="content-box-lableBigBlackMy" runat="server"></asp:Label>
                        </td>
                    </tr>
                                        

        </table>



</div>
   


                                                  
</div>

<%--<div class="content-box-left">
<h1 class="content-box-title">
 صفحه کنترل پانل عضو وب سایت </h1>
<p>
<div class="" align="right" dir="rtl">

<p> <strong>کاربر گرامی:</strong></p>
<p align="justify">لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی <br/></p>
</div>
   


</div>--%>
</div>



<div class="sidebar" style="margin-top:12px;">

    <div class="content-box-right">

         <div class="content-box-right-title">
       امکانات کاربر
    </div>

         نتدتندت</div>



<div class="price-list-table">
<div class="price-list-table-title">مبحث مطالب</div>
<div class="price-list-table-list">


<div class="price-list-table-list-cyclist">

<ul>
<li><a href="SubjectRouter.aspx?اختلالات روانی - آلزایمر">
اختلالات روانی - آلزایمر
</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - استرس">
اختلالات روانی - استرس</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - اضطراب">
اختلالات روانی - اضطراب</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - اختلالات تبدیلی">
اختلالات روانی - اختلالات تبدیلی</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - اختلالات دوقطبی">
اختلالات روانی - اختلالات دوقطبی</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - افسردگی">
اختلالات روانی - افسردگی</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - اوتیسم">
اختلالات روانی - اوتیسم</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - خیالبافی">
اختلالات روانی - خیالبافی</a></li>


<li><a href="SubjectRouter.aspx?اختلالات روانی - خودبیمارانگاری">
اختلالات روانی - خودبیمارانگاری</a></li>

<li><a href="SubjectRouter.aspx?اختلالات روانی - جوع (بولیما)">
اختلالات روانی - جوع (بولیما)</a></li>


<li><a href="SubjectRouter.aspx?اختلالات روانی - لکنت زبان">
اختلالات روانی - لکنت زبان</a></li>


</ul>

<ul>
<li><a href="SubjectRouter.aspx?اختلالات روانی - وسواس">
اختلالات روانی - وسواس</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - بازی نوزاد">
روانشناسی رشد - بازی نوزاد</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - بلوغ">
روانشناسی رشد - بلوغ</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - پدر موفق">
روانشناسی رشد - پدر موفق</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - ترس کودکان">
روانشناسی رشد - ترس کودکان</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - تنبیه و تشویق">
روانشناسی رشد - تنبیه و تشویق</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - ضربه عاطفی">
روانشناسی رشد - ضربه عاطفی</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی رشد - کودک دردسرساز">
روانشناسی رشد - کودک دردسرساز</a></li>


<li><a href="SubjectRouter.aspx?روانشناسی رشد - عزت نفس کودکان">
روانشناسی رشد - عزت نفس کودکان</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی فیزیولوژیک - انگیزش و هیجان">
روانشناسی فیزیولوژیک - انگیزش و هیجان</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی فیزیولوژیک - خواب">
روانشناسی فیزیولوژیک - خواب</a></li>
</ul>

<ul>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - آنیما و آنیموس">
روانشناسی اجتماعی - آنیما و آنیموس</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - اسطوره شناسی">
روانشناسی اجتماعی - اسطوره شناسی</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - اعتماد به نفس">
روانشناسی اجتماعی - اعتماد به نفس</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - اعتیاد">
روانشناسی اجتماعی - اعتیاد </a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - پیشگیری از اعتیاد">
روانشناسی اجتماعی - پیشگیری از اعتیاد</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - تمرکز">
روانشناسی اجتماعی - تمرکز </a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - خشم">
روانشناسی اجتماعی - خشم</a></li>


<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - خودشناسی">
روانشناسی اجتماعی - خودشناسی</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - چگونه'نه' گفتن">
روانشناسی اجتماعی - چگونه'نه' گفتن</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - رضایت شغلی">
روانشناسی اجتماعی - رضایت شغلی</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - فرهنگ و شخصیت">
روانشناسی اجتماعی - فرهنگ و شخصیت</a></li>
</ul>

<ul>
<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - کم رویی">روانشناسی اجتماعی - کم رویی</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - محبوبیت بین دیگران">روانشناسی اجتماعی - محبوبیت بین دیگران</a></li>

<li><a href="SubjectRouter.aspx?روانشناسی اجتماعی - موفقیت">روانشناسی اجتماعی - موفقیت</a></li>

<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - انحراف جنسی">راهنمای مسائل زندگی - انحراف جنسی</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - شاد زیستن">راهنمای مسائل زندگی - شاد زیستن</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - خواستگاری">راهنمای مسائل زندگی - خواستگاری</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - خودشکوفایی">راهنمای مسائل زندگی - خودشکوفایی</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - رفتار با همسر">راهنمای مسائل زندگی - رفتار با همسر</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - زنان">راهنمای مسائل زندگی - زنان</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - زندگی زناشویی">راهنمای مسائل زندگی - زندگی زناشویی</a></li>
<li><a href="SubjectRouter.aspx?راهنمای مسائل زندگی - طلاق">راهنمای مسائل زندگی - طلاق</a></li>
</ul>

<ul>
<li><a href="SubjectRouter.aspx?بهداشت روان - آرام سازی (Relaxation)">بهداشت روان - آرام سازی (Relaxation)</a></li>
<li><a href="SubjectRouter.aspx?بهداشت روان - یوگا">بهداشت روان - یوگا</a></li>

</ul>
</div>


<div class="price-list-table-bottom"> 
<a href="price/default.htm">نمایش تمامی مطالب</a> 
<a href="#" class="price-list-table-next"></a> 
<a href="#" class="price-list-table-prev"></a> 
</div>
</div>
</div>
      



    <%--<div class="content-box-right">

         <div class="content-box-right-title">
       امکانات کاربر
    </div>

        شش
         <br />
         بیسب<br />
         یبیس<br />
         یزیسز<br />
    </div>--%>









    <%--<div class="price-list-table">
      <div class="price-list-table-title"> 
        <span class="price-list-table-title-right">عنوان مطلب</span> 
        <span class="price-list-table-title-left">تعداد بازدید</span>
    </div>

      <div class="price-list-table-list">
    <div class="price-list-table-list-cyclist">

    <ul>
    <li>
    روانشناسی کودک <span>
    ۱ </span></li>

    <li>
    روانشناسی کودک <span>
    ۲ </span></li>

    <li>
    روانشناسی کودک <span>
    ۳ </span></li>

    <li>
    روانشناسی کودک <span>
    ۴ </span></li>

    <li>
    روانشناسی کودک <span>
    ۵ </span></li>

    <li>
    روانشناسی کودک <span>
    ۶ </span></li>

    <li>
    روانشناسی کودک <span>
    ۷ </span></li>

    <li>
    روانشناسی کودک <span>
    ۸ </span></li>


    <li>
    روانشناسی کودک <span>
    ۹ </span></li>

    <li>
    روانشناسی کودک <span>
    ۱۰ </span></li>
    </ul>


    <ul>
    <li>
    روانشناسی آموزشی <span>
    ۱ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۲ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۳ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۴ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۵ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۶ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۷ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۸ </span></li>


    <li>
    روانشناسی آموزشی <span>
    ۹ </span></li>

    <li>
    روانشناسی آموزشی <span>
    ۱۰ </span></li>
    </ul>

    <ul>
    <li>
    روانشناسی رشد <span>
    ۱ </span></li>

    <li>
    روانشناسی رشد <span>
    ۲ </span></li>

    <li>
    روانشناسی رشد <span>
    ۳ </span></li>

    <li>
    روانشناسی رشد <span>
    ۴ </span></li>

    <li>
    روانشناسی رشد <span>
    ۵ </span></li>

    <li>
    روانشناسی رشد <span>
    ۶ </span></li>

    <li>
    روانشناسی رشد <span>
    ۷ </span></li>

    <li>
    روانشناسی رشد <span>
    ۸ </span></li>


    <li>
    روانشناسی رشد <span>
    ۹ </span></li>

    <li>
    روانشناسی رشد <span>
    ۱۰ </span></li>
    </ul>

    </div>


    <div class="price-list-table-bottom"> 
    <a href="../price/default.htm">نمایش تمامی مطالب</a> 
    <a href="#" class="price-list-table-next"></a> 
    <a href="#" class="price-list-table-prev"></a> 
    </div>
    </div>
    </div>--%>


    </div>



</div>




</asp:Content>


