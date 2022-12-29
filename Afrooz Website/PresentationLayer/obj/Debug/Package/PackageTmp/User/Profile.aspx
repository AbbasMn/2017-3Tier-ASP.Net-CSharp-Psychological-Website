<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
 CodeBehind="Profile.aspx.cs" Inherits="PresentationLayer.User.Profile" %>

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

          .style1
        {
            height: 49px;
        }

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
    ویرایش مشخصات </h1>
<div class="" align="right" dir="rtl">

                               
<table width="100%" align="center" class="register-form" style="margin-right:30px;">

<tr>
                        <td align="center" colspan="4"   >
          
                 
          
             <blink>
           
                    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblError" runat="server" ></asp:Label>
            
           
              </blink>     
             
           
                        </tr>





<tr>
                        <td  colspan="4"   >
          
                       <p class="content-box-PassageMy" style="color:#00b1b2; width:95%;">نام و نام خانوادگی را میتوانید به صورت مستعار وارد کنید ولی توجه داشته باشید که برای دریافت بسته های پستی و CD های آموزشی مشخصات وارد شده به عنوان گیرنده مرسوله در نظر گرفته خواهند شد.</p>
          
                            </tr>





<tr>
                        <td align="right" valign="top"    >
                            * نام:    
                        <td  valign="top" align="right" >
                    <asp:TextBox ID="txtUserStudentName" runat="server"  
                        CssClass="text-field short-text-input" ></asp:TextBox>
                            
                            
                                
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtUserStudentName" ErrorMessage="نام را وارد کنید" 
                                SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td  valign="top" >
                            * نام خانوادگی:</td>
                        <td  valign="top" align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtUserStudentLastName" 
                                ErrorMessage="نام خانوادگی را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUserStudentLastName" runat="server"  
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
                        <td align="right" class="style1" >
                            * نام کاربري:<td align="right"  valign="top" class="style1">
                                <asp:TextBox ID="txtUserStudentUserName" runat="server" 
                                    CssClass="text-field short-text-input" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtUserStudentUserName" 
                                    ErrorMessage="نام کاربری را وارد کنید" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                            <td valign="top" class="style1">
                                &nbsp;</td>
                            <td align="right" valign="top" class="style1">
                            </td>
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
                            شخص حقیقی/حقوقی:</td>
                        <td  valign="top" >
                                <asp:RadioButton ID="rdioMemberShipTypeStudent" runat="server"  
                                    GroupName="MemberShipType" Text="  شخص حقیقی"  
                                    Checked="True"  />



                                <asp:RadioButton ID="rdioMemberShipTypeProud" runat="server"  
                                    GroupName="MemberShipType" Text="شخص حقوقی" 
                                     />

                                </td>
                        <td  valign="top" >
                            جنسيت:                       
                            </td>
                        <td  valign="top" align="right">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdioUserStudentSexMale" runat="server"  
                                    GroupName="Gender" Text="مرد  " Textalign="right" 
                                    Checked="True"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:RadioButton ID="rdioUserStudentSexFemale" runat="server"  
                                    GroupName="Gender" Text="زن  " Textalign="right" />
                    


                        </td>
                    </tr>
                    <tr>
                        <td colspan="4"    >
                        
                          <p class="content-box-PassageMy" style="color:#00b1b2; width:95%;"> برای 
                              دریافت بسته های پُستی و CD های آموزشی کد پُستی و آدرس پُستی 
                              وارد شود و ایمیل (Email) را برای ارسال پیامهای مهم (ارسال بسته پُستی و ...) وارد 
                              کنید.</p>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            کدپُستی:</td>
                        <td  valign="top" align="right" >

                            <asp:TextBox ID="txtUserStudentOfficeName" runat="server" 
                                CssClass="text-field short-text-input" MaxLength="20"></asp:TextBox>

                    <%--<asp:TextBox ID="txtUserStudentID" runat="server"  
                         MaxLength="10" CssClass="text-field short-text-input" ></asp:TextBox>--%>


<%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtUserStudentID" 
                                ErrorMessage="کد ملی را وارد کنید">*</asp:RequiredFieldValidator>--%>
                        </td>
                        <td  valign="top" class="search-autocomplete" >
                    
                            
                    
                            * ايميل 
                            (Email):</td>
                        <td  valign="top" align="right" class="search-autocomplete">
                    
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtUserStudentEmail" ErrorMessage="ایمیل را وارد کنید" 
                                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    
                                <asp:TextBox ID="txtUserStudentEmail" runat="server" 
                         CssClass="text-field short-text-input" MaxLength="50" ></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            &nbsp;</td>
                        <td  valign="top" align="right" >

                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtUserStudentID" Display="None" 
                                ErrorMessage="کد ملی ۱۰ رقمی وارد شود" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>--%>
                        </td>
                        <td  valign="top" >
                            &nbsp;</td>
                        <td  valign="top" align="right">
                    
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtUserStudentEmail" Display="None" 
                                    ErrorMessage="ایمیل درست وارد شود" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            
                                </td>
                    </tr>
                    <tr>
                        <td align="right"    >
                            استان: </td>
                        <td  valign="top" align="right" >

                        <asp:DropDownList ID="drliStudentUniversity" runat="server" AutoPostBack="True" 
                              
                                 ontextchanged="drliStudentUniversity_TextChanged">
                            <asp:ListItem Value="1">آذربایجان شرقی</asp:ListItem>
                            <asp:ListItem Value="2">آذربایجان غربی</asp:ListItem>
                            <asp:ListItem Value="3">اردبیل</asp:ListItem>
                            <asp:ListItem Value="4">اصفهان</asp:ListItem>
                            <asp:ListItem Value="5">ایلام</asp:ListItem>
                            <asp:ListItem Value="6">بوشهر</asp:ListItem>
                            <asp:ListItem Value="7">تهران</asp:ListItem>
                            <asp:ListItem Value="8">چهارمحال و بختیاری</asp:ListItem>
                            <asp:ListItem Value="9">خراسان جنوبی</asp:ListItem>
                            <asp:ListItem Value="10">خراسان رضوی</asp:ListItem>
                            <asp:ListItem Value="11">خراسان شمالی</asp:ListItem>
                            <asp:ListItem Value="12">خوزستان</asp:ListItem>
                            <asp:ListItem Value="13">زنجان</asp:ListItem>
                            <asp:ListItem Value="14">سمنان</asp:ListItem>
                            <asp:ListItem Value="15">سیستان و بلوچستان</asp:ListItem>
                            <asp:ListItem Value="16">فارس</asp:ListItem>
                            <asp:ListItem Value="17">قزوین</asp:ListItem>
                            <asp:ListItem Value="18">قم</asp:ListItem>
                            <asp:ListItem Value="19">کردستان</asp:ListItem>
                            <asp:ListItem Value="20">کرمان</asp:ListItem>
                            <asp:ListItem Value="21">کرمانشاه</asp:ListItem>
                            <asp:ListItem Value="22">کهگیلویه و بویراحمد</asp:ListItem>
                            <asp:ListItem Value="23">گلستان</asp:ListItem>
                            <asp:ListItem Value="24">گیلان</asp:ListItem>
                            <asp:ListItem Value="25">لرستان</asp:ListItem>
                            <asp:ListItem Value="26">مازندران</asp:ListItem>
                            <asp:ListItem Value="27">مرکزی</asp:ListItem>
                            <asp:ListItem Value="28">هرمزگان</asp:ListItem>
                            <asp:ListItem Value="29">همدان</asp:ListItem>
                            <asp:ListItem Value="30">یزد</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                        <td  valign="top" >
                            شهر/شهرستان:</td>
                        <td  valign="top" align="right">

                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>


                                <asp:DropDownList ID="drliUserStudentEducationBranchName" runat="server" AutoPostBack="True"  
                                        >
                                </asp:DropDownList>

                          </ContentTemplate>
                        
                            <Triggers>
                             <asp:AsyncPostBackTrigger ControlID = "drliStudentUniversity" /> 
                             </Triggers> 

                           </asp:UpdatePanel> 

                        </td>
                    </tr>
                    <tr>
                        <td colspan="4"    >
                             <p class="content-box-PassageMy" style="color:#00b1b2; width:95%;">تلفن همراه و ثابت را برای دریافت مشاوره تلفنی و تماس مستقیم با ما وارد کنید.</p>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            تلفن همراه (ارقام 0 تا 9):</td>
                        <td >
                            <asp:TextBox ID="txtUserStudentCellPhone" runat="server" 
                                CssClass="text-field short-text-input" MaxLength="20"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtUserStudentCellPhone" 
                                ErrorMessage="تلفن همراه را وارد کنید">*</asp:RequiredFieldValidator>--%>
                        </td>
                        <td>
                            تلفن ثابت (ارقام 0 تا 9):</td>
                        <td>
                            <asp:TextBox ID="txtUserStudentPhone" runat="server" 
                                CssClass="text-field short-text-input" MaxLength="20"></asp:TextBox>
                        </td>
    </tr>
    <tr>
        <td >
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtUserStudentCellPhone" Display="None" 
                ErrorMessage="شماره تلفن همراه ۱۱ رقمی وارد شود" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
        </td>
        <td >
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
                    <tr>
                        <td valign="top"    >
                            آدرس پُستی (خیابان ...): </td>
                        <td  >
                    
                            
                    
                                <asp:TextBox ID="txtUserStudentAddress" runat="server" 
                         CssClass="text-field short-text-input" Height="116px" MaxLength="300" 
                                TextMode="MultiLine"></asp:TextBox>
                    
                        </td>
                        <td valign="top"  >
                    
                            
                    
                            <br />
                            <br />
                        </td>
                        <td align="right" valign="top" >
                    
                            
                    
                                <asp:Button ID="btnSave" runat="server" CssClass="submit-field" 
                                    onclick="btnSave_Click" style="margin-right: 0px" Text="ویرایش مشخصات" />
                    
                            
                    
                                </td>
                    </tr>
                    

        </table>



</div>
   


                                                  
</div>



</div>




</asp:Content>


