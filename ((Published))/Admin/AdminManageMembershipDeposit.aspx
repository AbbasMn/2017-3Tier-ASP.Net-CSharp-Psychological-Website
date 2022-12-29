<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master" 
CodeBehind="AdminManageMembershipDeposit.aspx.cs" Inherits="PresentationLayer.Admin.AdminManageMembershipDeposit" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

</asp:Content> 
       
  
  
 <asp:Content ID="MainBody" ContentPlaceHolderID="FullMainBody" runat="server">


<div class="main">


<div class="single-content-box" style="margin-top:12px;">

<h1 class="content-box-title">
 مدیریت واریزهای اعضای سایت</h1>
<p>


<div style="float:right;width:280px;">

<asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                            onclick="btnDelete_Click" Text="حذفا واریزهای تایید نشده" 
                                CssClass="submit-field"  TabIndex="7" />
 </div>  
    

<div style="float:left;width:280px; text-align:left;">
    
    
    <asp:Button ID="Button1" runat="server"  CausesValidation="False" 
                                            Text="تایید واریزهای انتحاب شده" 
                                CssClass="submit-field" onclick="Button1_Click" />
</div>


<br />

<div align="center" style="margin-top:25px;">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False"   
        EnableViewState="False" TabIndex="-1" 
                                BackColor="White" BorderColor="#CCCCCC" 
                        BorderStyle="None" BorderWidth="1px" Width="100%" 
          DataKeyNames="RowID" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                PageSize="20" EnableModelValidation="True" >
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

                              <asp:BoundField DataField="Name" HeaderText="نام" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="Family" HeaderText="نام خانوادگی" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="MemberID" HeaderText="کد عضویت" >
                                    <ItemStyle Width="40px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="TarikhVariz" HeaderText="تاریخ واریز" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="TarikhEngheza" HeaderText="تاریخ انقضا" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="SaeatVariz" HeaderText="ساعت واریز" >
                                    <ItemStyle Width="40px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="Mablagh" HeaderText="مبلغ واریز (تومان)" >
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="VarizFor" HeaderText="واریز برای" >
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="NoeVariz" HeaderText="نوع واریز" >
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="TaeedeVariz" HeaderText="تایید شده/نشده" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>


                                <asp:TemplateField HeaderText="تایید کردن واریز">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Taeed" runat="server" />
                                    </ItemTemplate>
                                    <HeaderStyle  />
                                    <ItemStyle Width="30px" />
                                    <HeaderStyle Width="40px"/>
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
                
 </div>           

</div>
</div>
</asp:Content>