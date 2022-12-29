<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="AdminInserBook.aspx.cs" Inherits="PresentationLayer.Admin.AdminInserBook" %>
  
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
"<li><a href='AdminInserbook.aspx'><img id='Img5'  runat='server'   src='../WebsiteLayout/Pic/Icons/peresentedCourse.png' alt='' />ثبت کتاب جدید</a></li>" +
"<li><a href='AdminEditbook.aspx'><img id='Img6'  runat='server' src='../WebsiteLayout/Pic/Icons/marks.png' alt='' />ویرایش مطالب</a></li>" +
"<li><a href='AdminInsertEvent.aspx'><img id='Img7'  runat='server' src='../WebsiteLayout/Pic/Icons/book.png' alt='' />ثبت خبر / رویداد جدید</a></li>" +
"<li><a href='AdminEditEvent.aspx'><img id='Img8'  runat='server' src='../WebsiteLayout/Pic/Icons/responseToMessage.png' alt='' />ویرایش رویدادها</a></li>" +
"</ul>"+
"</div> </div>"+
"</div> ";
        
        Response.Write(s);
    
    }
        
        %>


<div class="single-content-box" style="margin-top:12px;">

<h1 class="content-box-title">
ارسال کتاب روانشناسی </h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<p  class="content-box-titleMy"> کاربر گرامی:</p>
<p class="content-box-PassageMy">لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی <strong>فیلدهای ستاره دار</strong> را پر نمایید. اگر  <strong>عکس کتاب </strong>را انتخاب نکنید عکس پیش فرض برای کتاب نمایش داده می شود. 
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
            
           
                   
             
           
                                <asp:Label ID="lblbookFileName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblbookPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
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
                            عنوان کتاب:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtbookTitle" ErrorMessage="عنوان کتاب را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <td  >
                    <asp:TextBox ID="txtbookTitle" runat="server"  TabIndex="1"
                         value="" type="text" Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"></asp:TextBox>
                        </td>
                            <td  >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class=""  align="right">
                            نویسنده کتاب:</td>
                        <td class=""  align="right">
                            
                    <asp:TextBox ID="txtbookWriter" runat="server"  TabIndex="2"
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
                            &nbsp;تعداد صفحه کتاب:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td  >
                    <asp:TextBox ID="txtbookPageCount" runat="server"  TabIndex="3"
                         value="" type="text" Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"></asp:TextBox>
                        </td>
                            <td  >
                                &nbsp;</td>
                        <td class=""  align="right">
                            فايل 
                            کتاب:</td>
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
                            مبحث کتاب:</td>
                        <td class="style1"  >
                    <asp:DropDownList ID="drlistbookDaste" runat="server" 
                         TabIndex="5" AutoPostBack="True" ontextchanged="drlistbookType_TextChanged" 
                                DataTextField="UniversityAddress" >
                    </asp:DropDownList>
                        </td>
                        <td class="style1"  >
                            </td>
                        <td class="style1"  align="right">
                            موضوع کتاب:</td>
                        <td class="style1"  align="right">

                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                           <asp:DropDownList ID="drlistbookPriority" runat="server"  TabIndex="6" 
                               DataTextField="UniversityName" >
                           </asp:DropDownList>
                      </ContentTemplate>
                        
                            <Triggers>
                             <asp:AsyncPostBackTrigger ControlID = "drlistbookDaste" /> 
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
                            آدرس 
                            دانلود برای کتابهای با حجم بالا:</td>
                        <td >
                    
                                <asp:TextBox ID="txtbookRelatedLink" runat="server" 
                                 value="" type="text" 
                                    Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"
                         TabIndex="7" ></asp:TextBox>
                    
                        </td>
                        <td >
                    
                                &nbsp;</td>
                        <td class="" align="right">
                            عکس کتاب:</td>
                        <td class="" align="right">
                            <asp:FileUpload ID="FileUpLdPic" runat="server"  Cssclass="text-field short-text-input"
                ToolTip="عکس کتابي را انتخاب نماييد" EnableTheming="True" TabIndex="8" 
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
                    
                    <asp:DropDownList ID="drlistbookDownloadingFileByWhatMemberType" runat="server" TabIndex="9" 
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
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px; margin-bottom: 16px;" Text="ارسال" 
                          TabIndex="11" CssClass="submit-field" CausesValidation="True" 
                                onclick="btnSave_Click" />
                    
                            
                    
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
                            *&nbsp;متن معرفی کتاب:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtbookPassage" ErrorMessage="متن کتاب را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
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
                        <td  >
                            &nbsp;</td>
                        <td  >
                            &nbsp;</td>
                        <td  colspan="4" align="right">
                            
                    <asp:TextBox ID="txtbookPassage" runat="server" Width="750px" TabIndex="10" 
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

