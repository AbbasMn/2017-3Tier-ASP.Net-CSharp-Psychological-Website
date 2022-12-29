<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
 CodeBehind="ControlPanelPage.aspx.cs" Inherits="PresentationLayer.User.ControlPanelPage" %>

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
        .style1
        {
            width: 117px;
        }
        .style2
        {
            width: 129px;
            text-align: center;
        }
        
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

    </style>



</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">

<div class="main" style="margin-top:0px;">

<div class="content">

<div class="content-box-left">
<h1 class="content-box-title">
 کنترل پانل عضو وب سایت </h1>
<div class="" align="right" dir="rtl">

</div>
   


                                                  
                                 <div class="content-box-PassageMy">

                                 
                                    <asp:Label ID="lblMessage" CssClass="content-box-lableBigBlackMy" runat="server"></asp:Label>
                                 </div>
                                 

                                 <div class="content-box-PassageMy">

                                
                                 <a href="ControlPanelPage.aspx#Varizha">
                                 <blink><asp:Label ID="lblMessageAdmin"  runat="server"  
                                         ForeColor="#FF3300"></asp:Label></blink>
                                 </a>
                                 </div>
                                
                                 
                                 <div class="content-box-PassageMy">
                                 <a href="DepositeMembership.aspx">
                                 <blink><asp:Label ID="lblMessageTeacher"  runat="server" 
                                         ForeColor="#FF3300"></asp:Label></blink>
                                 </a>
                                 </div>

</div>


 <div class="content-box-left">
<h1 class="content-box-title">
 مشخصات عضو</h1>
<p>

</p>


<table 
                                            align="right" dir="rtl" style="margin-bottom:10px; width: 100%">
 
                                                        <tr>
                                                            <td  rowspan="21" valign="top" dir="rtl" class="style2" 
                                                                style="border: 1px solid #00b1b2;">
                                            <asp:Image ID="imgStudentImage" runat="server" Height="104px" 
                                                                        style="margin-right: 0px" Width="102px" BorderColor="White" 
                                                                        BorderStyle="Outset" BorderWidth="1px" />
                                             
                                                             
                                                                <br />
                                             
                                                             
                                                                <br />
                                           <asp:FileUpload ID="FileUpLdPic" runat="server" Width="100px" 
                                            ToolTip="عکس کاربري را انتخاب نماييد" EnableTheming="True" />
                                   
                                               
                                            
                                                                <br />
                                                                <br />
                                                                پس از انتخاب عکس برای تغییر عکس کاربری<br />
&nbsp;<asp:LinkButton CssClass="LinkButtonMy" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" 
                                                                CausesValidation="False"  
                                                                Font-Names="Tahoma" Font-Size="8pt" Font-Bold="True" >اینجا </asp:LinkButton>
                                                            &nbsp;کلیک کنید.<br />
                                   
                                               
                                            
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
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
                                                                    <asp:Label ID="lblUserStudentName" runat="server" Text="Label" 
                                                                        CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    &nbsp;نام خانوادگي:&nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblStudentLastName" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
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
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
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
                                                                    <asp:Label ID="lblUserStudentUserName" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    کد کاربری:&nbsp;
                                                                            </td>
                                                            <td align="right"  dir="rtl">
                                                                    <asp:Label ID="lblUserStudentRowID" runat="server" Text="Label" 
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
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
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
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
                                                                    <asp:Label ID="lblStudentUniversity" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                            </td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    شهر/شهرستان/روستا:</td>
                                                            <td align="right" dir="rtl" class="noUi-horizontal">
                                                                    <asp:Label ID="lblStudentBranch" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
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
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
                                                                    &nbsp;</td>
                                                            <td align="right" class="noUi-horizontal" >
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
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    کدپستی: </td>
                                                            <td align="right" dir="rtl" class="style7" >
                                                                    <asp:Label ID="lblCodePosti" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                            </td>
                                                            <td align="right" >
                                                                    ايميل:&nbsp; 
                                                                            </td>
                                                            <td align="right" dir="rtl">
                                                                                <asp:Label ID="lblUserStudentEmail" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
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
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    تلفن همراه:</td>
                                                            <td align="right" dir="rtl" class="style7" >
                                                                    <asp:Label ID="lblMobile" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    تلفن ثابت:</td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblTel" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
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
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    آدرس پستی:</td>
                                                            <td align="right" dir="rtl" class="style1" colspan="3" >
                                                                    <asp:Label ID="lblAddressPosti" runat="server" Text="Label" CssClass="content-box-lableMy"></asp:Label>
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl" class="style1" colspan="3" >
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    نوع عضویت:</td>
                                                            <td align="right" dir="rtl" class="style1" colspan="3" >
                                                                    <asp:Label ID="lblNoeOzviat" runat="server" Text="Label" 
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
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" >
                                                                    &nbsp;</td>
                                                            <td align="right" dir="rtl" class="style1" colspan="3" >
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
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" class="style1" colspan="2" >
                                                            <asp:Label ID="lblCurrentStudentImageName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                                                    <asp:Label ID="lblError" runat="server" CssClass="content-box-lableMy"></asp:Label>
                                                                                    </td>
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
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" class="style1" colspan="2" >
                                                                &nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                                &nbsp;</td>
                                                        </tr>
                                                        
                                                    </table>

                                                   

</div>






<div class="content-box-left" style="margin-top:20px;">

<div class="single-content-box-left">
<h1 class="content-box-title" style="width:100%;"> خدمات ویژه کاربران عضو و تعرفه 
    عضویت</h1>


<table border="0" cellpadding="0" cellspacing="0" 

        width="100%" dir="rtl">

        <tbody style="margin: 0px; padding: 0px; list-style-type: none;">
            
            <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                <td background="WebsiteLayout/Pic/Icons/green2.png" 
                    style="margin: 0px; padding: 0px; list-style-type: none;" valign="top">
                    <div align="center" style="margin: 0px; padding: 0px; list-style-type: none;">



                        <table border="0" style="margin: 0px; padding: 0px; list-style-type: none;" 
                            width="100%" dir="ltr">


                            <tbody style="margin: 0px; padding: 0px; list-style-type: none;">
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  colspan="3" dir="rtl" 
                                        
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid; border-radius: 5px;">
                                        <p style="margin: 0px; padding: 0px; list-style-type: none; line-height: 24px;">
                                            <font color="#00b1b2" face="" style="font-size: 14pt;font-weight:bold;">نوع عضویت و 
                                            تعرفه</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" rowspan="2" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid; border-radius: 5px;" 
                                        width="595">
                                        <p style="margin: 0px; padding: 0px; list-style-type: none; line-height: 24px;">
                                            <font color="#00b1b2" face="" style="font-size: 14pt; font-weight:bold;">عنوان خدمات</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" rowspan="2" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid; border-radius: 5px;" 
                                        width="36">
                                        <p style="margin: 0px; padding: 0px; list-style-type: none; line-height: 24px;">
                                            <font color="#00b1b2" face="" style="font-size: 14pt;font-weight:bold;">ردیف</font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center" bgcolor="#FFFAE6" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="40">
                                        <p style="margin: 10px 0px; padding: 0px; list-style-type: none;font-weight:bold;">
                                            عضویت ويژه</p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border-left-width: 1px; border-left-style: solid; border-color: #000; border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-radius: 5px;" 
                                        width="56">
                                        <p style="margin: 10px 0px; padding: 0px; list-style-type: none;font-weight:bold;">
                                            عضویت ساده</p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border-left-width: 1px; border-left-style: solid; border-color: ; border-top-width: 1px; border-top-style: solid; border-bottom-width: 1px; border-bottom-style: solid; border-radius: 5px;" 
                                        width="55">
                                        <p style="margin: 10px 0px; padding: 0px; list-style-type: none;font-weight:bold;">
                                            غیرعضو</p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="55">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td bgcolor="#F3FCFC" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="595">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="" style="font-size: 10pt;">
                                            <img border="0" height="17" 
                                                src="../WebsiteLayout/Pic/Icons/jadid.gif" 
                                                style="margin: 0px; padding: 0px; list-style-type: none;" width="35" />امکان 
                                            مشاوره تلفنی ( ازدواج - جنسی و زناشوئی<span lang="en-us" 
                                                style="margin: 0px; padding: 0px; list-style-type: none;"><span 
                                                class="Apple-converted-space">&nbsp;</span>-<span class="Apple-converted-space">&nbsp;</span></span>اعتیاد 
                                            - افسردگی - وسواس)</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="36">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="">
                                            <span style="margin: 0px; padding: 0px; list-style-type: none; font-size: 10pt;">
                                            7</span></font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="55">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="595">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="" style="font-size: 10pt;">امکان دریافت مقالات 
                                            سایت بر روی ایمیل</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="36">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="">
                                            <span style="margin: 0px; padding: 0px; list-style-type: none; font-size: 10pt;">
                                            14</span></font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="55">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="595">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="" style="font-size: 10pt;">امکان مشاهده ویدئو 
                                            های آموزشی و سلامت ویژه بزرگسالان</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="36">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="">
                                            <span style="margin: 0px; padding: 0px; list-style-type: none; font-size: 10pt;">
                                            16</span></font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="55">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td bgcolor="#F3FCFC" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="595">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="" style="font-size: 10pt;">امکان دریافت نرم 
                                            افزار مقالات سایت جهت گوشی تلفن همراه</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="36">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="">
                                            <span style="margin: 0px; padding: 0px; list-style-type: none; font-size: 10pt;">
                                            17</span></font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="55">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <img border="0" height="18" 
                                            src="../WebsiteLayout/Pic/Icons/no.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /></td>
                                    <td bgcolor="#F3FCFC" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="595">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="" style="font-size: 10pt;">امکان&nbsp; مشاهده 
                                            اخبار سلامت</font></p>
                                    </td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="36">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#000" face="">
                                            <span style="margin: 0px; padding: 0px; list-style-type: none; font-size: 10pt;">
                                            23</span></font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="55">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td align="center"  dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /></td>
                                    <td  colspan="2" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 5px;" 
                                        width="635">
                                        <p align="center" 
                                            style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#008000" face="" style="font-size: 10pt; font-weight: 700;">
                                            امکان فعالسازی خدمات غیر فعال یا ارتقاء حساب کاربری</font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center"  bordercolor="#E0EEFE" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="40">
                                        <img border="0" height="20" 
                                            src="../WebsiteLayout/Pic/Icons/6.png" 
                                            style="margin: 0px; padding: 0px; list-style-type: none;" width="50" /></td>
                                    <td align="center"  bordercolor="#E0EEFE" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border-width: 1px; border-radius: 3px;" 
                                        valign="top" width="55">
                                        &nbsp;</td>
                                    <td align="center"  bordercolor="#E0EEFE" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        &nbsp;</td>
                                    <td align="center"  colspan="2" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid #000; border-radius: 5px;" 
                                        width="635">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#4988CD" face="" style="font-size: 10pt; font-weight: 700;">
                                            مدت دوره عضویت ( قابل تمدید )</font></p>
                                    </td>
                                </tr>
                                <tr style="margin: 0px; padding: 0px; list-style-type: none;">
                                    <td align="center" bgcolor="#F0F9DD" bordercolor="#D8CC7A" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="middle" width="40">
                                          <font color="#008000" face="" style="font-size: 10pt; font-weight: 700;">
                                           ۲۰/۰۰۰ تومان</font>
                                       </td>
                                    <td align="center" bgcolor="#F0F9DD" bordercolor="#D8CC7A" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="middle" width="55">
                                        &nbsp;</td>
                                    <td align="center" bgcolor="#F0F9DD" bordercolor="#D8CC7A" dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 3px;" 
                                        valign="top" width="54">
                                        <p style="margin: 5px 0px; padding: 0px; list-style-type: none;">
                                            &nbsp;</p>
                                    </td>
                                    <td align="center" bgcolor="#F0F9DD" bordercolor="#D8CC7A" colspan="2" 
                                        dir="rtl" 
                                        style="margin: 0px; padding: 0px; list-style-type: none; border: 1px solid ; border-radius: 5px;" 
                                        width="635">
                                        <p style="margin: 2px 10px; padding: 0px; list-style-type: none;">
                                            <font color="#78862D" face="" style="font-size: 10pt; font-weight: 700;">
                                            تعرفه عضویت </font></p>
                                    </td>
                                </tr>
                            </tbody>



                        </table>






                    </div>
                    <p align="right" dir="rtl" style="text-align:justify;"
                        style="margin: 2px 15px 2px 5px; padding: 0px; list-style-type: none;">
                        &nbsp;</p>
                    <p align="right" dir="rtl" style="text-align:justify;"
                        style="margin: 2px 15px 2px 5px; padding: 0px; list-style-type: none;">
                        &nbsp;</p>
                    <p align="right" dir="rtl" style="text-align:justify;"
                        style="margin: 2px 15px 2px 5px; padding: 0px; list-style-type: none;">
                        <font color="#000" face="" style="font-size: 12pt; text-align:justify;">علامت<span 
                            class="Apple-converted-space">&nbsp;</span><img border="0" height="20" 
                            src="../WebsiteLayout/Pic/Icons/yes.png" 
                            style="margin: 0px; padding: 0px; list-style-type: none;" width="20" /><span 
                            class="Apple-converted-space">&nbsp;</span>نشانه فعال بودن امکان مد نظر و علامت<span 
                            class="Apple-converted-space">&nbsp;</span><img border="0" height="18" 
                            src="../WebsiteLayout/Pic/Icons/no.png" 
                            style="margin: 0px; padding: 0px; list-style-type: none;" width="18" /><span 
                            class="Apple-converted-space">&nbsp;</span>نشانه غیر فعال بودن خدمات مورد نظر است 
                        ، در پنل کاربری این<span class="Apple-converted-space">&nbsp;</span></font><font 
                            color="#000" face="" style="font-size: 12pt;"><b 
                            style="margin: 0px; padding: 0px; list-style-type: none;">امکان فراهم است</b></font><font 
                            color="#000" face="" style="font-size: 12pt;"><span 
                            class="Apple-converted-space">&nbsp;</span>که کاربران بتوانند خدمات<span 
                            class="Apple-converted-space">&nbsp;</span></font><font color="#D42626" 
                            face="" style="font-size: 12pt;">غیر فعال</font><font color="#000" 
                            face="" style="font-size: 12pt;"><span class="Apple-converted-space">&nbsp;</span>را<span 
                            class="Apple-converted-space">&nbsp;</span></font><font color="#427D08" 
                            face="" style="font-size: 12pt;">فعال</font><font color="#000" 
                            face="" style="font-size: 12pt;"><span class="Apple-converted-space">&nbsp;</span>نمایند 
                        یا دوره عضویت خود را تمدید نمایند.</font></p>
                </td>
            </tr>
        </tbody>
    </table>
</div>

</div>






<div class="content-box-left" style="margin-top:20px;">

<h1 class="content-box-title" id="Varizha">
 واریزهای شما برای امکانات سایت</h1>
<p>


<div align="center" style="margin-top:15px;">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False"   
        EnableViewState="False" TabIndex="-1" 
                                BackColor="White" BorderColor="#CCCCCC" 
                        BorderStyle="None" BorderWidth="1px" Width="100%" 
          DataKeyNames="RowID" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                PageSize="20" EnableModelValidation="True" >
                            <RowStyle HorizontalAlign="center" Wrap="False" ForeColor="#000066" />
                            <Columns>
                                
                              <asp:BoundField DataField="TarikhVariz" HeaderText=" تاریخ شروع دوره عضویت" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>


                              <asp:BoundField DataField="TarikhEngheza" HeaderText="تاریخ پایان دوره عضویت " >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="SaeatVariz" HeaderText="ساعت واریز" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="Mablagh" HeaderText="مبلغ واریز (تومان)" >
                                    <ItemStyle Width="130px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="VarizFor" HeaderText="واریز برای" >
                                    <ItemStyle Width="130px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="NoeVariz" HeaderText="نوع واریز" >
                                    <ItemStyle Width="130px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="TaeedeVariz" HeaderText="تایید واریز" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <PagerSettings FirstPageText="اول    " LastPageText="آخر  " 
                                NextPageText=" بعد  " PageButtonCount="5" PreviousPageText="قبل  " />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" 
                                Font-Size="10px" Font-Underline="False" VerticalAlign="Bottom" />
                            <SelectedRowStyle Font-Bold="True" ForeColor="White" 
                                Wrap="False" BackColor="#669999" />
                            <HeaderStyle  Font-Bold="True" BackColor="#00b1b2" HorizontalAlign="center"
                                 ForeColor="White"  />
                        </asp:GridView>
                
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



<div class="sidebar">

    <div class="content-box-right">

         <div class="content-box-right-title">
       امکانات کاربر
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
                                            PostBackUrl="~/Main.aspx" Width="38px" />
                                        <br />
                                        صفحه اصلي
                                       </td>
                          
                                    <tr>                          

                          
                                    <td align="center" valign="top">

                                        <asp:ImageButton ID="ImageButton36" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/video.png" onclick="ImageButton36_Click" 
                                            Width="38px" />
                                        <br />
                                        ویدیوها</td>
                 
                                    <td align="center" valign="top">

                                        <asp:ImageButton ID="ImageButton13" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/selectCourse.png" 
                                            PostBackUrl="~/User/ShowAllin.aspx"
                                            Width="38px" />
                                        <br />
                                        جدیدترین مطالب<br />
                                        </td>


                          
                                  </tr>
                                  <tr>                          

                          
                                    <td align="center" valign="top">


                          
                                        <asp:ImageButton ID="ImageButton29" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/marks.png" onclick="ImageButton29_Click" 
                                            Width="38px" />
                                        <br />
                                        تغییر کلمه عبور</td>
                 
                                    <td align="center" valign="top">


                          
                                        <asp:ImageButton ID="ImageButton22" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/editprofile.png" 
                                            PostBackUrl="" 
                                            Width="38px" onclick="ImageButton22_Click" />
                                        <br />
                                        ويرايش مشخصات</td>


                          
                                  </tr>
                                  <tr>                          

                          
                                    <td align="center" valign="top">


                          
                                        <asp:ImageButton ID="ImageButton30" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/exercise.png" onclick="ImageButton30_Click" 
                                            Width="38px" />
                                        <br />
                                        ثبت اطلاعات واریز حق عضویت ویژه</td>
                 
                                    <td align="center" valign="top">

                                      <asp:ImageButton ID="ImageButton35" runat="server" Height="28px" 
                                            ImageUrl="~/WebsiteLayout/Pic/Icons/book.png" 
                                            onclick="ImageButton35_Click" Width="38px" />
                                        <br />
                                        دانلود کتاب
                          
                                       </td>


                          
                                  </tr>
                                  <tr>                          

                          
                                    <td align="center" valign="top">


                          
                                        &nbsp;</td>
                 
                                    <td align="center" valign="top">

                                        <br />
                                        </td>


                          
                                  </tr>
                              </table>
    </div>



<h1 class="content-box-title" style="width:160px; margin-bottom:-6px;">دسته بندی 
   ویدیوها</h1>
<div class="ver-ravan-category-list">
<ul>
<%
    DataBaseLayer.DataBaseOperations dbo = new DataBaseLayer.DataBaseOperations();
    System.Data.DataTable dt1 = new System.Data.DataTable();


    dt1 = dbo.selectQueryDataTable("TableVideo", "videoMabhas,count(videoMabhas) as Newscounter", null, "group by videoMabhas");

    for (int i = 0; i < dt1.Rows.Count; i++)
    {
        if (dt1.Rows[i]["videoMabhas"].ToString() == "مشاوره ازدواج")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?مشاوره ازدواج'>مشاوره ازدواج (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/heart_PNG696.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي زناشويي")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي زناشويي'>روانشناسي زناشويي (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/eye_PNG6184.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "مشاوره خانواده")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?مشاوره خانواده'>مشاوره خانواده (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/rose.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي کودکان")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي کودکان'>روانشناسي کودکان (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/girls_PNG6458.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي اجتماعي")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي اجتماعي'>روانشناسي اجتماعي (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/key_PNG3379.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "روانشناسي سلامت")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?روانشناسي سلامت'>روانشناسي سلامت (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/lips_PNG6225.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "اختلالات رواني")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?اختلالات رواني'>اختلالات رواني (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/book_PNG2109.png' />
        }

        if (dt1.Rows[i]["videoMabhas"].ToString() == "مهارتهاي زندگي")
        {
            Response.Write("<li><a href='ShowAllVidoe.aspx?مهارتهاي زندگي'>مهارتهاي زندگي (" + dt1.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
            //<img ID='Img0' runat='server' src='WebsiteLayout/Pic/png1/tree8.png' />
        }
    }


     %>
</ul>
</div>








<h1 class="content-box-title" style="width:160px; margin-bottom:-6px;">دسته بندی 
    مطالب</h1>

<div class="ver-ravan-category-list">
<ul>
<%
    LogicalLayer.News myNews = new LogicalLayer.News();
    System.Data.DataTable dt = new System.Data.DataTable();


    dt = myNews.showNews("TableNews","newsType,count(newsType) as Newscounter", null, "group by newsType");

    for (int i = 0; i < dt.Rows.Count; i++)
    {
        if (dt.Rows[i]["newsType"].ToString() == "مشاوره ازدواج")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?مشاوره ازدواج'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/heart_PNG696.png' />مشاوره ازدواج (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
           
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي زناشويي")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي زناشويي'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/eye_PNG6184.png' />روانشناسي زناشويي (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "مشاوره خانواده")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?مشاوره خانواده'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/rose.png' />مشاوره خانواده (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي کودکان")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي کودکان'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/girls_PNG6458.png' />روانشناسي کودکان (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي اجتماعي")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي اجتماعي'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/key_PNG3379.png' />روانشناسي اجتماعي (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "روانشناسي سلامت")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?روانشناسي سلامت'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/lips_PNG6225.png' />روانشناسي سلامت (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "اختلالات رواني")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?اختلالات رواني'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/book_PNG2109.png' />اختلالات رواني (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }

        if (dt.Rows[i]["newsType"].ToString() == "مهارتهاي زندگي")
        {
            Response.Write("<li><a href='../User/ShowAllMabhas.aspx?مهارتهاي زندگي'><img ID='Img0' runat='server' src='/WebsiteLayout/Pic/png1/tree8.png' />مهارتهاي زندگي (" + dt.Rows[i]["Newscounter"].ToString() + ")</a></li><br />");
        }
    }


     %>
</ul>
</div>










<%--<div class="price-list-table">
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
</div>--%>
      



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


