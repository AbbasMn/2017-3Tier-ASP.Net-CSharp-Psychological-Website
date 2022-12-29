<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="AdminInserVideo.aspx.cs" Inherits="PresentationLayer.Admin.AdminInserVideo" %>
  
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">




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
"<li><a href='AdminInservideo.aspx'><img id='Img5'  runat='server'   src='../WebsiteLayout/Pic/Icons/peresentedCourse.png' alt='' />ثبت کتاب جدید</a></li>" +
"<li><a href='AdminEditvideo.aspx'><img id='Img6'  runat='server' src='../WebsiteLayout/Pic/Icons/marks.png' alt='' />ویرایش مطالب</a></li>" +
"<li><a href='AdminInsertEvent.aspx'><img id='Img7'  runat='server' src='../WebsiteLayout/Pic/Icons/video.png' alt='' />ثبت خبر / رویداد جدید</a></li>" +
"<li><a href='AdminEditEvent.aspx'><img id='Img8'  runat='server' src='../WebsiteLayout/Pic/Icons/responseToMessage.png' alt='' />ویرایش رویدادها</a></li>" +
"</ul>"+
"</div> </div>"+
"</div> ";
        
        Response.Write(s);
    
    }
        
        %>


<div class="single-content-box" style="margin-top:12px;">

<h1 class="content-box-title">
ارسال ویدیو روانشناسی </h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<p class="content-box-PassageMy">لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی <strong>فیلدهای ستاره دار</strong> را پر نمایید. اگر  <strong>عکس ویدیو </strong>را انتخاب نکنید عکس پیش فرض برای ویدیو نمایش داده می شود. 
</p>

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
            
           
                   
             
           
                                <asp:Label ID="lblvideoFileName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblvideoPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
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
                            عنوان ویدیو:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtvideoTitle" ErrorMessage="عنوان ویدیو را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <td  >
                    <asp:TextBox ID="txtvideoTitle" runat="server"  TabIndex="1"
                         value="" type="text" Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"></asp:TextBox>
                        </td>
                            <td  >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class=""  align="right">
                            سخنران ویدیو:</td>
                        <td class=""  align="right">
                            
                    <asp:TextBox ID="txtvideoOwner" runat="server"  TabIndex="2"
                         value="" type="text" Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"></asp:TextBox>
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
                            &nbsp;مدت زمان ویدیو:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td  >
                    <asp:TextBox ID="txtvideoTime" runat="server"  TabIndex="3"
                         value="" type="text" Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"></asp:TextBox>
                        </td>
                            <td  >
                                &nbsp;</td>
                        <td class=""  align="right">
                            فايل 
                            ویدیوی&nbsp; اختصاصی شما:</td>
                        <td class=""  align="right">
                            <asp:FileUpload ID="FileUpLAttachFile" runat="server"  
                ToolTip="فايل ضميمه را انتخاب نماييد" EnableTheming="True" TabIndex="4" Cssclass="text-field short-text-input"
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
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1" >
                            مبحث ویدیو:</td>
                        <td class="style1"  >
                    <asp:DropDownList ID="drlistvideoDaste" runat="server" 
                         TabIndex="5" AutoPostBack="True" ontextchanged="drlistvideoType_TextChanged" 
                                DataTextField="UniversityAddress" >
                    </asp:DropDownList>
                        </td>
                        <td class="style1"  >
                            </td>
                        <td class="style1"  align="right">
                            موضوع ویدیو:</td>
                        <td class="style1"  align="right">

                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                           <asp:DropDownList ID="drlistvideoPriority" runat="server"  TabIndex="6" 
                               DataTextField="UniversityName" >
                           </asp:DropDownList>
                      </ContentTemplate>
                        
                            <Triggers>
                             <asp:AsyncPostBackTrigger ControlID = "drlistvideoDaste" /> 
                             </Triggers> 

                      </asp:UpdatePanel> 
                       
                    
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
                            آدرس دانلود ویدیو از سایر سایتها:</td>
                        <td >
                    
                                <asp:TextBox ID="txtvideoRelatedLink" runat="server" 
                                 value="" type="text" 
                                    Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"
                         TabIndex="7" ></asp:TextBox>
                    
                        </td>
                        <td >
                    
                                &nbsp;</td>
                        <td class="" align="right">
                            عکس ویدیو:</td>
                        <td class="" align="right">
                            <asp:FileUpload ID="FileUpLdPic" runat="server"  Cssclass="text-field short-text-input"
                ToolTip="عکس ویدیوي را انتخاب نماييد" EnableTheming="True" TabIndex="8" 
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
                            دانلود 
                            ویدیو برای:</td>
                        <td >
                    
                    <asp:DropDownList ID="drlistvideoDownloadingFileByWhatMemberType" runat="server" TabIndex="9" 
                         >
                        
                        <asp:ListItem>اعضای ویژه</asp:ListItem>
                        <asp:ListItem>اعضای عادی</asp:ListItem>
                        <asp:ListItem>همه</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td >
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                </td>
                        <td class="" align="right" >
                            * تاریخ انتشار:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="PersianDatePickup1" ErrorMessage="تاريخ انتشار را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td class="" align="right">
                    
                            
                    
                            <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                             value="" type="text" 
                                Cssclass="text-field short-text-input" 
                                style="direction:rtl;text-align:right" size="30"
                               ReadOnly="True" TabIndex="10" Wrap="False" ></pcal:PersianDatePickup>
                    
                            
                    
                                </td>
                    </tr>
                    <tr>
                        <td  dir="rtl">
                            &nbsp;</td>
                        <td  dir="rtl">
                            &nbsp;</td>
                        <td >
                    
                            &nbsp;</td>
                        <td >
                    
                            &nbsp;</td>
                        <td class="" align="right" >
                            &nbsp;</td>
                        <td class="" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            *&nbsp;متن معرفی ویدیو:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtvideoPassage" ErrorMessage="متن ویدیو را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td >
                    
                            
                    
                            &nbsp;</td>
                        <td >
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px; margin-bottom: 16px;" Text="ارسال" 
                          TabIndex="12" CssClass="submit-field" CausesValidation="True" 
                                onclick="btnSave_Click" />
                    
                            
                    
                                </td>
                    </tr>
                    <tr>
                        <td  >
                            &nbsp;</td>
                        <td  >
                            &nbsp;</td>
                        <td  colspan="4" align="right">
                            
                    <asp:TextBox ID="txtvideoPassage" runat="server" Width="750px" TabIndex="11" 
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
    </Triggers>

</asp:UpdatePanel> --%> 





</div>
</div>



</asp:Content>

