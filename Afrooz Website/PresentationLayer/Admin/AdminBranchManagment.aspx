<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="AdminBranchManagment.aspx.cs" Inherits="PresentationLayer.Admin.AdminBranchManagment" %>
  
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
    تعریف مبحث برای موضوع های روانشناسی</h1>
<p>
    &nbsp;</p>

                           
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate> 

<div style="width:100%; position:relative;">
<table width="100%" align="right" class="register-form" >
                    <tr>
                        <td colspan="4" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" ></asp:Label>
            
           
                   
             
           
                                <asp:Label ID="lblNewsFileName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
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
                            *
                            مبحث روانشناسی:<td rowspan="5"  >
                    <asp:DropDownList ID="drlistDaste" runat="server" 
                         TabIndex="6" >
                            <asp:ListItem>اختلالات روانی</asp:ListItem>
                            <asp:ListItem>روانشناسی اجتماعی</asp:ListItem>
                            <asp:ListItem>روانشناسی سلامت</asp:ListItem>
                            <asp:ListItem>روانشناسی زناشویی</asp:ListItem>
                            <asp:ListItem>روانشناسی کودکان</asp:ListItem>
                            <asp:ListItem>مشاوره ازدواج</asp:ListItem>
                            <asp:ListItem>مشاوره خانواده</asp:ListItem>
                            <asp:ListItem>مهارتهای زندگی</asp:ListItem>
                    </asp:DropDownList>

                                <br />
                                <br />
                                <br />

                    <br />
                                <asp:TextBox ID="txtMozo" runat="server" Cssclass="text-field short-text-input" 
                                    size="30" style="direction:rtl;text-align:right" TabIndex="1" type="text" 
                                    value=""></asp:TextBox>

                                <br />
                                <br />
                                <br />
                                <br />

                 <br />
                                <asp:Button ID="btnSave" runat="server" CausesValidation="True" 
                                    CssClass="submit-field" onclick="btnSave_Click" 
                                    style="margin-right: 0px; margin-bottom: 16px;" TabIndex="13" Text="ارسال" />
                                <br />
                        </td>
                        <td class=""  align="right">
                            &nbsp;</td>
                        <td class=""  align="right" rowspan="5" valign="top">

                      
                      
                      
                            <asp:GridView ID="GridView1" runat="server" 
                                AlternatingRowStyle-BackColor="#C2D69B" AutoGenerateColumns="False" 
                                Width="500px">
                                <RowStyle HorizontalAlign="Right" Wrap="False" />
                                <AlternatingRowStyle BackColor="#FFFFFF" />
                                <Columns>
                                    <asp:BoundField ConvertEmptyStringToNull="False" DataField="UniversityAddress" 
                                        HeaderText="مبحث روانشناسی" ReadOnly="True">
                                    <HeaderStyle HorizontalAlign="Right" />
                                    <ItemStyle Width="1000px" />
                                    </asp:BoundField>
                                    <asp:BoundField ConvertEmptyStringToNull="False" DataField="UniversityName" 
                                        HeaderText="موضوع" ReadOnly="True">
                                    <HeaderStyle HorizontalAlign="Right" />
                                    <ItemStyle Width="1000px" />
                                    </asp:BoundField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkRemove" runat="server" 
                                                CommandArgument='<%# Eval("UniversityName")%>' OnClick="deleteRow" 
                                                OnClientClick="return confirm('حذف مورد انتخابی را تایید می نمایید؟')" 
                                                Text="حذف"></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                        </HeaderTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#00b1b2" Font-Bold="True" Font-Names="BYekan" 
                                    Font-Size="18px" ForeColor="White" HorizontalAlign="Center" />
                            </asp:GridView>
                            
       



                                </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;مبحث مطلب:
                            &nbsp;<td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td class=""  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" >
                    
                            
                    
                            &nbsp;</td>
                        <td class="style1"  align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td  >
                            &nbsp;</td>
                        <td  colspan="3" align="right">
                            
                            &nbsp;</td>
                    </tr>
                    </table>
</div>

</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "btnSave" /> 
        </Triggers> 

    </asp:UpdatePanel>





</div>
</div>



</asp:Content>

