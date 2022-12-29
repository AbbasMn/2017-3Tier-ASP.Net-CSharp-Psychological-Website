<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
 CodeBehind="EditPassword.aspx.cs" Inherits="PresentationLayer.User.EditPassword" %>

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

<h1 class="content-box-title">
    تغییر کلمه عبور (Password)</h1>
<div class="" align="right" dir="rtl">

                               
<table width="100%" align="right" class="register-form" 
        style="margin-right:10px; top: 2px; right: 0px;">

                    <tr>
                        <td align="right"    >
                                &nbsp;<td  valign="top" align="right"  >
                                
                        <asp:Label ID="lblMessage" CssClass="content-box-lableBigBlackMy" runat="server"></asp:Label>
                                </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                                &nbsp;<td  valign="top" align="right"  >
                                
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
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;<td  valign="top" align="right"  >
                                
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right"    >
                                * کلمه عبور جدید:<td  valign="top" align="right"  >
                                
                                <asp:TextBox ID="txtAdminPasswordNew" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20" 
                                TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtAdminPasswordNew" 
                                    ErrorMessage="کلمه عبور جدید را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;<td  valign="top" align="right"  >
                                
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td    >
                                * تکرار کلمه عبور جدید:</td>
                        <td  valign="top" >
                                <asp:TextBox ID="txtAdminPasswordNewRepeat" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20" 
                                TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtAdminPasswordNewRepeat" 
                                    ErrorMessage="کلمه عبور جدید را تکرار کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        

                                </td>
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
                                    style="margin-right: 0px" Text="ویرایش" onclick="btnSave_Click" />
                    
                            
                    
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


