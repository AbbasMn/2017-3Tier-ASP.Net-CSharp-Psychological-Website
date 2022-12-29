<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
 CodeBehind="ForgetPassword.aspx.cs" Inherits="PresentationLayer.ForgetPassword" %>

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
                        
        blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          </style>



</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">

<div class="main" style="margin-top:12px;">



 <%--<div class="single-content-box">
<h1 class="content-box-title">
 آمار مدیریت سایت</h1>
<p>
 <asp:Label ID="lblMessage" CssClass="content-box-lableBigBlackMy" runat="server"></asp:Label>
 
</p>
</div>--%>



<div class="single-content-box">

<h1 class="content-box-title">ارسال کلمه عبور به ایمیل </h1>
<div class="" align="right" dir="rtl">



<p class="content-box-PassageMy">در صورتی که <strong>نام کاربری </strong>و <strong>
    ایمیل </strong>را درست وارد نمایید، مشخصات کامل شما به <strong>آدرس ایمیل 
    (Email) </strong>ارسال خواهد شد.</p>

&nbsp;<table width="100%" align="right" class="register-form" 
        style="margin-right:10px; top: 2px; right: 0px;">

                    <tr>
                        <td align="right"    >
                                * نام کاربری:<td  valign="top" align="right"  >
                                
                                <asp:TextBox ID="txtUserStudentUserName" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20" 
                                    EnableViewState="False" EnableTheming="False"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtUserStudentUserName" 
                                    ErrorMessage="نام کاربری را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                &nbsp;<blink><asp:Label ID="lblMessage" runat="server" ></asp:Label>
            
           
                   
             
           
              </blink>     
             
           
                                </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;<td  valign="top" align="right"  >
                                
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right"    >
                    
                            
                    
                            * ايميل 
                            (Email):<td  valign="top" align="right"  >
                                
                                <asp:TextBox ID="txtUserStudentEmail" runat="server" 
                         CssClass="text-field short-text-input" MaxLength="50" EnableViewState="False" 
                                    EnableTheming="False" ></asp:TextBox>
                    
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtUserStudentEmail" ErrorMessage="ایمیل را وارد کنید" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    
                                </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;<td  valign="top" align="right"  >
                                
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td    >
                            &nbsp;</td>
                        <td  valign="top" >
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td    >
                            &nbsp;</td>
                        <td  valign="top" >
                    
                            
                    
                                <asp:Button ID="btnSave" runat="server" CssClass="submit-field" 
                                    style="margin-right: 0px" Text="ارسال کلمه عبور به ایمیل" 
                                    onclick="btnSave_Click"  />
                    
                            
                    
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2"    >
                    
                            
                    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ShowMessageBox="True" ShowSummary="False" />
                        </td>
                    </tr>
                                        

        </table>



</div>
   


                                                  
</div>



</div>




</asp:Content>


