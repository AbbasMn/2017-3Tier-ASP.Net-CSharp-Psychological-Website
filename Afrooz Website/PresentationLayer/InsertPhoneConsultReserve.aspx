<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="InsertPhoneConsultReserve.aspx.cs" Inherits="PresentationLayer.InsertPhoneConsultReserve" %>
  
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">


    <style type="text/css">
        .style1
        {
            height: 6px;
        }
    </style>

            <style>
            
            .b1b2
            {
                color:#00b1b2;
            }
            
            .red
            {
                color:#ff0066;
            } 
            
            .blue
            {
                color:#0099ff;
            }                         
        
        </style>

</asp:Content>



<asp:Content ID="MainBody" ContentPlaceHolderID="FullMainBody" runat="server">


    <div class="main" style="margin-top:0px;">



<div class="single-content-box" style="margin-top:12px;">

<h1 class="content-box-title">
رزرو نهایی مشاوره تلفنی </h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<%--<p  class="content-box-titleMy"> کاربر گرامی:</p>--%>
<p class="content-box-PassageMy">۱- لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی<span 
        class="blue"> <strong>فیلدهای ستاره دار</strong></span> 
    را پر نمایید.
    
    <br/>

    ۲- <span class="blue"> <strong>چهار رقم آخر</strong></span> شماره تلفن همراه و یا تلفن ثابت شما به عنوان 
    <span class="blue"> 
    <strong>کد شما در سیستم</strong></span> در نظر گرفته خواهد شد.<br />
    ۴- اگر به هر دلیلی مشاوره تلفنی انجام نشد <span class="blue"> <strong>ملبغ واریزی شما محفوظ می باشد</strong></span> 
    و وقت جدیدی توسط ما برای شما تعیین می گردد.<br />
    5- <span class="blue"> <strong>حداکثر</strong></span> زمان مشاوره تلفنی 
    <span class="b1b2"> <strong>۳۰ دقیقه </strong></span>در نظر گرفته شده است و 
    هزینه آن <span class="b1b2"> <strong>18 هزار تومان</strong></span> می باشد.<br />
    6- برای سهولت در بررسی واریزهای انجام شده، حتی الامکان از روش 
    <span class="blue"> <strong>کارت به 
    کارت</strong></span> استفاده نمایید.<br />
    7- هزینه مشاوره را به شماره <span class="b1b2"><strong>ملت کارت&nbsp; ۵۵۴۴ - 
    ۰۵۸۹ - ۳۳۷۹ - ۶۱۰۴</strong></span> و یا <span class="b1b2"><strong>شماره 
    حساب 5346938935&nbsp;بانک ملت</strong></span> بنام <span class="b1b2"><strong>افروز 
    احرامی</strong></span> واریز نمایید.<br/>

    8-

   لطفاً <span class="blue"> <strong>قبل از رزرو</strong></span> مشاوره عملیات 
    <span class="blue"> <strong>واریز وجه</strong></span> را انجام دهید و سپس اقدام به رزو نمایید.<br />
    9- لطفاً&nbsp;تنها در وقتهای تعیین شده برای مشاوره تلفنی تماس بگیرید. شماره تماس برای 
    مشاوره تلفنی <span class="b1b2"><strong>۰۹۱۷۰۹۱۰۳۳۶</strong></span> می باشد.<br/>
    
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
                        <td colspan="4" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" ></asp:Label>
            
           
               
           
                   
             
           
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
                        <td class="" >
                            &nbsp;</td>
                        <td class="" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td >
                            
                           روز مشاوره:<td  >
                            <asp:Label ID="LabelRooz" Visible="true"    runat="server" style="font-size:25px; color:#00b1b2;"> </asp:Label>
                            </td>
                        <td class=""  align="right">
                            تاریخ مشاوره:</td>
                        <td class=""  align="right">
                            
                            <asp:Label ID="LabelDate" Visible="true" runat="server" style="font-size:25px; color:#00b1b2;"> </asp:Label>



                                </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;<td  >
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;<td  >
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;<td  >
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            زمان شروع مشاوره:<td  >
                             <asp:Label ID="LabelStartTelTime" runat="server" style="font-size:25px; color:#00b1b2;" ></asp:Label></td>
                        <td class=""  align="right">
                            زمان پایان مشاوره:</td>
                        <td class=""  align="right">
                            <asp:Label ID="LabelEndTelTime" runat="server" style="font-size:25px; color:#00b1b2;"></asp:Label>
                             <asp:Label ID="LabelSobhAsr" runat="server" style="font-size:25px; color:#00b1b2;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td  >
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;<td  >
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td >
                            &nbsp;<td  >
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right">
                            &nbsp;</td>
                    </tr>
<%--                    <tr>
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1" >
                            مبحث 
                            مشاوره روانشناسی:</td>
                        <td class="style1"  >
                    <asp:DropDownList ID="drlistnewsDaste" runat="server" 
                         TabIndex="1" AutoPostBack="True" ontextchanged="drlistnewsType_TextChanged" 
                                DataTextField="UniversityAddress" >
                    </asp:DropDownList>
                        </td>
                        <td class="style1"  align="right">
                            موضوع مشاوره روانشناسی:</td>
                        <td class="style1"  align="right">

                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                           <asp:DropDownList ID="drlistnewsPriority" runat="server"  TabIndex="2" 
                               DataTextField="UniversityName" >
                           </asp:DropDownList>
                      </ContentTemplate>
                        
                            <Triggers>
                             <asp:AsyncPostBackTrigger ControlID = "drlistnewsDaste" /> 
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
                        <td class="style1"  align="right">
                            &nbsp;</td>
                        <td class="style1"  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            </td>
                        <td class="style1" >
                            </td>
                        <td class="style1"  >
                            </td>
                        <td class="style1"  align="right">
                            </td>
                        <td class="style1"  align="right">
                            </td>
                    </tr>
                    <tr>
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1"  >
                            &nbsp;</td>
                        <td class="style1"  align="right">
                            &nbsp;</td>
                        <td class="style1"  align="right">
                            &nbsp;</td>
                    </tr>--%>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            *
                            شماره موبایل:<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtNewsCellPhone" ErrorMessage=" شماره موبایل را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td >
                    
                            <asp:TextBox ID="txtNewsCellPhone" runat="server" 
                                CssClass="text-field short-text-input" MaxLength="20" TabIndex="3"></asp:TextBox>
                    
                        </td>
                        <td class="" align="right">
                            شماره تلفن ثابت:</td>
                        <td class="" align="right">
                            <asp:TextBox ID="txtNewsPhone" runat="server" 
                                CssClass="text-field short-text-input" MaxLength="20" TabIndex="4"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtNewsCellPhone" Display="None" 
                ErrorMessage="شماره تلفن همراه ۱۱ رقمی وارد شود" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
                        </td>
                        <td >
                    
                                &nbsp;</td>
                        <td class="" align="right">
                            &nbsp;</td>
                        <td class="" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                        <td >
                            *
                            شماره فیش یا تراکنش واریز:<asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtnewsTrakonesh" ErrorMessage="شماره فیش یا تراکنش واریز را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td >
                    
                                <asp:TextBox ID="txtnewsTrakonesh" runat="server" 
                                 value="" type="text" 
                                    Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"
                         TabIndex="5" MaxLength="20" ></asp:TextBox>
                    
                        </td>
                        <td class="" align="right">
                            نوع واریز:</td>
                        <td class="" align="right">
                    <asp:DropDownList ID="drlistNoeVariz" runat="server" 
                         TabIndex="6" >
                        <asp:ListItem>انتقال کارت به کارت</asp:ListItem>
                        <asp:ListItem>واریز به حساب</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                        <td class="" align="right">
                            شماره کارت در انتقال کارت به کارت:</td>
                        <td >
                    
                                <asp:TextBox ID="txtnewsKartNumber" runat="server" 
                                 value="" type="text" 
                                    Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"
                         TabIndex="7" MaxLength="20" ></asp:TextBox>
                    
                        </td>
                        <td class="" align="right">
                            *&nbsp;
                            مبلغ واریز شده (تومان):<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtnewsTrakonesh" ErrorMessage="مبلغ واریز  شده را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td >
                    
                                <asp:TextBox ID="txtnewsMablagh" runat="server" 
                                 value="" type="text" 
                                    Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"
                         TabIndex="8" MaxLength="20" ></asp:TextBox>
                    
                        &nbsp;تومان</td>
                    </tr>
                    <tr>
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
                        <td >
                            &nbsp;</td>
                        <td >
                            *&nbsp;
                            تاریخ واریز:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="PersianDatePickup1" ErrorMessage="تاريخ واریز را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td >
                    
                            <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                             value="" type="text" 
                                Cssclass="text-field short-text-input" 
                                style="direction:rtl;text-align:right" size="30"
                               ReadOnly="True" TabIndex="9" Wrap="False" ></pcal:PersianDatePickup>
                    
                        </td>
                        <td class="" align="right">
                            *&nbsp; ساعت واریز:<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtnewsSaeat" ErrorMessage="ساعت واریز را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        <td align="right">
                    
                            
                    
                                <asp:TextBox ID="txtnewsSaeat" runat="server" 
                                 value="" type="text" 
                                    Cssclass="text-field short-text-input" 
                                    style="direction:rtl;text-align:right" size="30"
                         TabIndex="10" MaxLength="20" ></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td class="noUi-horizontal" >
                            </td>
                        <td class="noUi-horizontal" >
                            </td>
                        <td class="noUi-horizontal" >
                    
                                </td>
                        <td class="noUi-horizontal" align="right">
                            </td>
                        <td class="noUi-horizontal" align="right">
                            مثال:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ۶:5 بعد از ظهر&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            یا&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ۱۰:۲۳&nbsp; صبح</td>
                    </tr>
                    <tr>
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
                            &nbsp;</td>
                        <td >
                    
                            &nbsp;</td>
                        <td class="" align="right" >
                            &nbsp;</td>
                        <td class="" align="right">
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px; margin-bottom: 16px;" Text="رزرو نهایی مشاوره" 
                          TabIndex="12" CssClass="submit-field" CausesValidation="True" 
                                onclick="btnSave_Click" />
                    
                            
                    
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            توضیحات مقدماتی برای مشاور (اختیاری):</td>
                        <td >
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                </td>
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
                        <td  colspan="3" align="right">
                            
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
    </Triggers>

</asp:UpdatePanel> --%> 





</div>
</div>



</asp:Content>

