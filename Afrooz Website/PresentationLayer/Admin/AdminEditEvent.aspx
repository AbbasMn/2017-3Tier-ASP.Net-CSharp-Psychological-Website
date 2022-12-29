<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master" 
CodeBehind="AdminEditEvent.aspx.cs" Inherits="PresentationLayer.Admin.AdminEditEvent" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

</asp:Content> 
       
  
  
 <asp:Content ID="MainBody" ContentPlaceHolderID="FullMainBody" runat="server">


<div class="main">

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
 نمایش - آرشیو - حذف - ویرایش رویدادها  </h1>
<p>
<br />

                <table border="0"  width="100%" style=" " align="center" 
                     dir="rtl">
                    <tr>
                        <td align="right" rowspan="27" valign="top">
         
                 
          
                            <table 
                                width="100%">
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                                        <asp:Label ID="lblNewsFileName" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                                        <asp:Label ID="lblMessage" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <b>
                            
<asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                            onclick="btnDelete_Click" Text="حذف موارد انتخابي" 
                                CssClass="submit-field"  TabIndex="7" />
          
                 
          
                            
                            </b>
                                    </td>
                                    <td align="center">
                                        <b>
                            
                                        <asp:Button ID="btnShow" runat="server" CssClass="submit-field" 
                                            onclick="Button1_Click" Text="نمايش موارد انتخابي" 
                                            CausesValidation="False" />
                            </b>
          
                 
          
                                    </td>
                                    <td align="left">
                                        <b>
                            
<asp:Button ID="btnArchieve" runat="server" CausesValidation="False" 
                                            onclick="btnArchieve_Click" Text="اضافه کردن به آرشیو" 
                                CssClass="submit-field"  TabIndex="7" />
          
                 
          
                            
                            </b>
          
                 
          
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;
          
                 
          
                            <br />

          
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False"   EnableViewState="False" TabIndex="-1" 
                                BackColor="White" BorderColor="#CCCCCC" 
                        BorderStyle="None" BorderWidth="1px" Width="100%" 
          DataKeyNames="newsID" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                PageSize="20" >
                            <RowStyle HorizontalAlign="Right" Wrap="False" ForeColor="#000066" />
                            <Columns>
                                <asp:TemplateField HeaderText="حذف">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Choose" runat="server" />
                                    </ItemTemplate>
                                    <HeaderStyle  />
                                    <ItemStyle Width="30px" />
                                    <HeaderStyle Width="40px"/>
                                </asp:TemplateField>
                                <asp:BoundField DataField="newsDate" HeaderText="تاريخ مطلب" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>


                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAdd" runat="server" 
                                        CommandArgument='<%# Eval("newsID")%>' OnClick="editNews" 
                                         Text="ویرایش" Width="50px"></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderTemplate>
                                </HeaderTemplate>                           
                                    <ControlStyle Font-Underline="True" />
                                    <ItemStyle Font-Underline="False" Wrap="False" />
                            </asp:TemplateField>

                                <asp:BoundField DataField="newsTitle" HeaderText="عنوان مطلب" 
                                    ConvertEmptyStringToNull="False" ReadOnly="True" >
                               <ItemStyle Wrap="True" Width="350px"></ItemStyle>
                                </asp:BoundField>

                                <asp:BoundField DataField="newsType" HeaderText="مبحث روانشناسی" >
                                    <ItemStyle Width="120px"/>
                                </asp:BoundField>

                                <asp:BoundField DataField="newsPriority" HeaderText="زیر مجموعه" >
                                    <ItemStyle Width="120px"/>
                                </asp:BoundField>


                               <asp:BoundField DataField="newsShoingwToWhatMemberType" HeaderText="نمایش برای" >
                                    <ItemStyle Width="100px"/>
                                </asp:BoundField>

                                <asp:TemplateField HeaderText="نمايش">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Choose0" runat="server" Checked='<%# Eval("newsShowingPermision")%>'/>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" />
                                    <ItemStyle Width="50px" />
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="آرشیو">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ChooseArcheive" runat="server" 
                                            Checked='<%# Eval("newsArchieve")%>' />
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" />
                                    <ItemStyle Width="50px" />
                                </asp:TemplateField>
                                
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <PagerSettings FirstPageText="اول    " LastPageText="آخر  " 
                                NextPageText=" بعد  " PageButtonCount="5" PreviousPageText="قبل  " />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" 
                                Font-Size="10px" Font-Underline="False" VerticalAlign="Bottom" />
                            <SelectedRowStyle Font-Bold="True" ForeColor="White" 
                                Wrap="False" BackColor="#669999" />
                            <HeaderStyle  Font-Bold="True" BackColor="#00b1b2" HorizontalAlign="Right"
                                 ForeColor="White"  />
                        </asp:GridView>
                 

                        </td>
                        <td class="style2" align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
               
                    </table>
            

</div>
</div>
</asp:Content>