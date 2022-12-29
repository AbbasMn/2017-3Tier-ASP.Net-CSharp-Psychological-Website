<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="AdminInsertEvent.aspx.cs" Inherits="PresentationLayer.Admin.AdminInsertEvent" %>
  
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">


    <style type="text/css">
        .style1
        {
            height: 6px;
        }
    </style>


</asp:Content>



<asp:Content ID="MainBody" ContentPlaceHolderID="FullMainBody" runat="server">

<div class="main" style="margin-top:0px;">
<% 
    if(Session["UserType"]=="Admin") 
    {
        string s = "<div class='wrapper' style='margin-top:-10px;'>" +
"<div class='top-ravan' style='margin-right:19px;'>" +
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

<div class="single-content-box" style="margin-top:12px;">

<h1 class="content-box-title">
    ثبت و نمایش رویدادها و اخبار حوزه روانشناسی </h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<p  class="content-box-titleMy"> کاربر گرامی:</p>
<p class="content-box-PassageMy">لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی <strong>فیلدهای ستاره دار</strong> را پر نمایید. اگر  <strong>عکس خبر / رویداد </strong>را انتخاب نکنید عکس پیش فرض برای خبر / رویداد نمایش داده می شود. 
<strong>فایل ضمیمه </strong>را برای مطالبی که برای آنها فایل و یا منبعی برای دانلود توسط اعضا می خواهید معرفی کنید انتخاب نمایید.<br/></p>

</div>

</p>

<%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
<ContentTemplate>--%>

<div style="width:100%; position:relative;">
<table width="100%" align="right" class="register-form" >
                    <tr>
                        <td align="center">
          
                 
          
                            &nbsp;</td>
                        <td colspan="5" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" ></asp:Label>
            
           
                   
             
           
                                <asp:Label ID="lblNewsFileName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td  >
                            &nbsp;</td>
                        <td  >
                            &nbsp;</td>
                        <td class="" >
                            &nbsp;</td>
                        <td class="" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td >
                            *
                            عنوان خبر / رویداد:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtnewsTitle" ErrorMessage="عنوان خبر / رویداد را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <td  >
                    <asp:TextBox ID="txtnewsTitle" runat="server"  TabIndex="1"
                         value="" type="text" Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"></asp:TextBox>
                        </td>
                            <td  >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class=""  align="right">
                            نوع:</td>
                        <td class=""  align="right">
                            
                            &nbsp;<asp:RadioButton 
                                ID="rdioTypeEvent" runat="server"  
                                    GroupName="rdioType" Text="  خبر / رویداد"  
                                    Checked="True" TabIndex="2"  />



                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                                <asp:RadioButton ID="rdioTypeAmozeshi" runat="server"  
                                    GroupName="rdioType" Text="آموزشی / پژوهشی" TabIndex="3" 
                                     />
                            </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;<td  >
                            &nbsp;</td>
                            <td  >
                                &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            نمایش برای:<td  >
                    <asp:DropDownList ID="drlistnewsShoingwToWhatMemberType" runat="server" TabIndex="4">
                        <asp:ListItem>اعضای ویژه</asp:ListItem>
                        <asp:ListItem>اعضای عادی</asp:ListItem>
                        <asp:ListItem>همه</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                            <td  >
                                &nbsp;</td>
                        <td class=""  align="right">
                            * تاریخ انتشار:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="PersianDatePickup1" ErrorMessage="تاريخ انتشار را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td class=""  align="right">
                            <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                             value="" type="text" 
                                Cssclass="text-field short-text-input" 
                                style="direction:rtl;text-align:right" size="30"
                               ReadOnly="True" TabIndex="5" Wrap="False" ></pcal:PersianDatePickup>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td  >
                            &nbsp;</td>
                            <td  >
                                &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1" >
                            مبحث خبر / رويداد:</td>
                        <td class="style1"  >
                    <asp:DropDownList ID="drlistnewsType" runat="server" 
                         TabIndex="6" AutoPostBack="false" >
                            <asp:ListItem>برگزاری کارگاه آموزشی</asp:ListItem>
                            <asp:ListItem>اطلاع رسانی برگزاری کنفرانس و سمینار</asp:ListItem>
                            <asp:ListItem>راهنمایی دانشجویان</asp:ListItem>
                            <asp:ListItem>معرفی کتاب</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="style1"  >
                            </td>
                        <td class="style1"  align="right">
                            آدرس وب مربوطه:</td>
                        <td class="style1"  align="right">

                              <asp:TextBox ID="txtnewsRelatedLink" runat="server" 
                                  Cssclass="text-field short-text-input" size="30" 
                                  style="direction:rtl;text-align:right" TabIndex="7" type="text" value=""></asp:TextBox>
         
                       
                    
                        </td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1"  >
                            &nbsp;</td>
                        <td class="style1"  >
                            &nbsp;</td>
                        <td class="style1"  align="right">
                            &nbsp;</td>
                        <td class="style1"  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            عکس خبر / رویداد:</td>
                        <td >
                    
                            <asp:FileUpload ID="FileUpLdPic" runat="server"  Cssclass="text-field short-text-input"
                ToolTip="عکس خبر / رویدادي را انتخاب نماييد" EnableTheming="True" TabIndex="8" 
                                />
       
                        </td>
                        <td >
                    
                                &nbsp;</td>
                        <td class="" align="right">
                            فايل ضميمه:</td>
                        <td class="" align="right">
                            <asp:FileUpload ID="FileUpLAttachFile" runat="server"  
                ToolTip="فايل ضميمه را انتخاب نماييد" EnableTheming="True" TabIndex="9" Cssclass="text-field short-text-input"
                                />
       
                                </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td >
                    
                                &nbsp;</td>
                        <td >
                    
                                &nbsp;</td>
                        <td class="" align="right">
                            &nbsp;</td>
                        <td class="" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td  dir="rtl">
                            &nbsp;</td>
                        <td  dir="rtl">
                            دانلود فایل برای:</td>
                        <td >
                    
                    <asp:DropDownList ID="drlistnewsDownloadingFileByWhatMemberType" runat="server" TabIndex="10" 
                         >
                        
                        <asp:ListItem>اعضای عادی</asp:ListItem>
                        
                        <asp:ListItem>اعضای ویژه</asp:ListItem>
                        <asp:ListItem>کاربران مهمان</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td >
                    
                            &nbsp;</td>
                        <td class="" align="right" >
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px; margin-bottom: 16px;" Text="ارسال" 
                          TabIndex="12" CssClass="submit-field" CausesValidation="True" 
                                onclick="btnSave_Click" />
                    
                            
                    
                                </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            *&nbsp;متن خبر / رویداد:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtnewsPassage" ErrorMessage="متن خبر / رویداد را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td >
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                </td>
                        <td >
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td  >
                            &nbsp;</td>
                        <td  >
                            &nbsp;</td>
                        <td  colspan="4" align="right">
                            
                    <asp:TextBox ID="txtnewsPassage" runat="server" Width="750px" TabIndex="11" 
                    value="" type="text" Cssclass="text-field short-text-input" 
                                style="direction:rtl;text-align:right" size="30"
                         Height="200px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                    </tr>
                    </table>
</div>

<%--</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "btnSave" /> 
    </Triggers>--%> 

</asp:UpdatePanel> 





</div>
</div>



</asp:Content>

