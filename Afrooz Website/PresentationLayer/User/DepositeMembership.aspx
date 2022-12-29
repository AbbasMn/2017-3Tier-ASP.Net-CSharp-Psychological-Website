<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="DepositeMembership.aspx.cs" Inherits="PresentationLayer.User.DepositeMembership" %>
  
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">


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
    ثبت واریز حق عضویت ويژه</h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<%--<p  class="content-box-titleMy"> کاربر گرامی:</p>--%>
<p class="content-box-PassageMy">۱- لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی<span 
        class="blue"> <strong>فیلدهای ستاره دار</strong></span> 
    را پر نمایید.
    
    <br/>

    ۲- برای سهولت در بررسی واریز انجام شده، حتی الامکان از روش 
    <span class="blue"> <strong>کارت به 
    کارت</strong></span> استفاده نمایید.<br />
    ۳- حق عضویت ويژه 
    <span class="b1b2"> <strong>برای ۴ ماه</strong></span>
    
     به مبلغ ۲۰/۰۰۰ تومان، را به شماره 
     
     <span class="b1b2"><strong>ملت کارت&nbsp; ۵۵۴۴ - 
    ۰۵۸۹ - ۳۳۷۹ - ۶۱۰۴</strong></span> و یا <span class="b1b2"><strong>شماره 
    حساب 5346938935&nbsp;بانک ملت</strong></span> بنام <span class="b1b2"><strong>افروز 
    احرامی</strong></span> واریز نمایید.<br/>

    ۴- پس از 
    تایید واریز انجام گرفته، عضویت شما از 
    <span class="blue"> <strong>عضویت ساده</strong></span>
     به 
     <span class="b1b2"> <strong>عضویت ويژه</strong></span> 
     تغییر داده خواهد 
    شد.<br />
    
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
                            &nbsp;واریز برای:</td>
                        <td >
                    
                    <asp:DropDownList ID="drlistVarizFor" runat="server" 
                         TabIndex="11" >
                        <asp:ListItem>حق عضویت ویژه</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="" align="right" colspan="2">
                    
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                onclick="Button1_Click" Text="دوره عضویت" CssClass="submit-field" 
                                Width="100px" />
                            از:<asp:Label ID="LabelDateStart" runat="server" 
                                style="font-size:25px; color:#00b1b2;"></asp:Label>



                                تا:<asp:Label ID="LabelDateFinish" runat="server" 
                                style="font-size:25px; color:#00b1b2;"></asp:Label>



                        </td>
                    </tr>
                    <tr>
                        <td  dir="rtl">
                            &nbsp;</td>
                        <td  dir="rtl">
                            &nbsp;</td>
                        <td >
                    
                            &nbsp;</td>
                        <td class="" align="right" >
                    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ShowMessageBox="True" ShowSummary="False" />
                        </td>
                        <td class="" align="right">
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px; margin-bottom: 16px;" Text="ثبت اطلاعات واریز" 
                          TabIndex="13" CssClass="submit-field" CausesValidation="True" 
                                onclick="btnSave_Click" />
                    
                            
                    
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

