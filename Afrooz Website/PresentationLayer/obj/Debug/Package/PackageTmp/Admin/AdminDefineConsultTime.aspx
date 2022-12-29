<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="AdminDefineConsultTime.aspx.cs" Inherits="PresentationLayer.Admin.AdminDefineConsultTime" %>
  
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">


    <style type="text/css">
        .style1
        {
            color: #FF0066;
        }
    </style>

    <style>   
  blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          @-webkit-keyframes  blink { to { visibility: hidden; } }
           @-moz-keyframes blink { to { visibility: hidden; } } 
           @-o-keyframes blink { to { visibility: hidden; } } 
           @keyframes blink { to { visibility: hidden; } }
           }



        </style> 

    </asp:Content>



<asp:Content ID="MainBody" ContentPlaceHolderID="FullMainBody" runat="server">


<div class="main" style="margin-top:0px;">



<div class="single-content-box" style="margin-top:12px;">


<p>

<div class="" dir="" align="right" dir="rtl">
<%--<p  class="content-box-titleMy"> کاربر گرامی:</p>--%>


</div>

</p>

<%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
<ContentTemplate>--%>

<div style="width:45%; position:relative; float:right;">
<h1 class="content-box-title">
تعریف وقت مشاوره  </h1>
<p class="content-box-PassageMy">۱- لطفا تمامی <strong>فیلدهای ستاره دار</strong> 
    را پر نمایید.</p>
<table width="100%" align="right" class="register-form" >
                    <tr>
                        <td colspan="2" align="center">
          
                 
          
           
                   
             
           
                   <blink > <asp:Label ID="lblMessage" runat="server" Font-Size="15px"></asp:Label></blink>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td  >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            
                            *
                            
                            تاریخ مشاوره:<td  >
                            
                            <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                             value="" type="text" 
                                Cssclass="text-field short-text-input" 
                                style="direction:rtl;text-align:right" size="30"
                               ReadOnly="True" TabIndex="1" Wrap="False" ></pcal:PersianDatePickup>
                    


                            </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td  >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            
                            *
                            
                           روز مشاوره:<td  >
                            
                    <asp:DropDownList ID="drlistnewsRooz" runat="server" 
                         TabIndex="2" ontextchanged="drlistnewsType_TextChanged" >
                        <asp:ListItem>شنبه</asp:ListItem>
                        <asp:ListItem>یکشنبه</asp:ListItem>
                        <asp:ListItem>دوشنبه</asp:ListItem>
                        <asp:ListItem>سه شنبه</asp:ListItem>
                        <asp:ListItem>چهارشنبه</asp:ListItem>
                        <asp:ListItem>پنج شنبه</asp:ListItem>
                        <asp:ListItem>جمعه</asp:ListItem>
                    </asp:DropDownList>
                    


                                </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td  >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            *
                            زمان شروع مشاوره:<td  >
                    <asp:DropDownList ID="drlistnewsStart" runat="server" 
                         TabIndex="3" ontextchanged="drlistnewsType_TextChanged" >
                        <asp:ListItem>08:00</asp:ListItem>
                        <asp:ListItem>08:15</asp:ListItem>
                        <asp:ListItem>08:30</asp:ListItem>
                        <asp:ListItem>08:45</asp:ListItem>
                        <asp:ListItem>09:00</asp:ListItem>
                        <asp:ListItem>09:15</asp:ListItem>
                        <asp:ListItem>09:30</asp:ListItem>
                        <asp:ListItem>09:45</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>10:15</asp:ListItem>
                        <asp:ListItem>10:30</asp:ListItem>
                        <asp:ListItem>10:45</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>11:15</asp:ListItem>
                        <asp:ListItem>11:30</asp:ListItem>
                        <asp:ListItem>11:45</asp:ListItem>
                        <asp:ListItem>12:00</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td  >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            *
                            زمان پایان مشاوره:<td  >
                    
                            
                    
                    <asp:DropDownList ID="drlistnewsEnd" runat="server" 
                         TabIndex="4" ontextchanged="drlistnewsType_TextChanged" >
                        <asp:ListItem>08:00</asp:ListItem>
                        <asp:ListItem>08:15</asp:ListItem>
                        <asp:ListItem>08:30</asp:ListItem>
                        <asp:ListItem>08:45</asp:ListItem>
                        <asp:ListItem>09:00</asp:ListItem>
                        <asp:ListItem>09:15</asp:ListItem>
                        <asp:ListItem>09:30</asp:ListItem>
                        <asp:ListItem>09:45</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>10:15</asp:ListItem>
                        <asp:ListItem>10:30</asp:ListItem>
                        <asp:ListItem>10:45</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>11:15</asp:ListItem>
                        <asp:ListItem>11:30</asp:ListItem>
                        <asp:ListItem>11:45</asp:ListItem>
                        <asp:ListItem>12:00</asp:ListItem>
                    </asp:DropDownList>
                                </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;<td  >
                    
                            
                    
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;*
                            صبح / بعداز ظهر:</td>
                        <td >
                    
                    <asp:DropDownList ID="drlistnewsSobhAsr" runat="server" 
                         TabIndex="5" ontextchanged="drlistnewsType_TextChanged" >
                        <asp:ListItem>صبح</asp:ListItem>
                        <asp:ListItem>بعداز ظهر</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                    
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td >
                    
                            
                    
                            &nbsp;</td>
                        <td >
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px; margin-bottom: 16px;" Text="ایجاد وقت مشاوره" 
                          TabIndex="6" CssClass="submit-field" CausesValidation="True" 
                                onclick="btnSave_Click" />
                    
                            
                    
                            </td>
                    </tr>
                    </table>
</div>



<div style="width:50%; position:relative; float:left;">
<h1 class="content-box-title">
وقتهای مشاوره تعریف شده </h1>

<p class="content-box-PassageMy">۱- فقط وقتهای مشاوره ای که <span class="style1">
    <strong>رزرو نشده</strong></span> هستند قابل حذف می 
    باشند.<br />
    ۲- اگر وقتی را اشتباه وارد کرده اید آن را حذف و دوباره وارد کنید.<br />
    

    <table width="100%" align="right" class="register-form" >

    <tr>
                        <td >
                           نمایش وقتهای تعریف شده:<td  >
                            <asp:DropDownList ID="drlistnewsTedad" runat="server" 
                         TabIndex="2" ontextchanged="drlistnewsTedad_TextChanged" AutoPostBack="True" >
                        <asp:ListItem>۳ تای آخر</asp:ListItem>
                        <asp:ListItem>۶ تای آخر</asp:ListItem>
                        <asp:ListItem>۹ تای آخر</asp:ListItem>
                        <asp:ListItem>۱۲ تای آخر</asp:ListItem>
                        <asp:ListItem>۱۵ تای آخر</asp:ListItem>
                        <asp:ListItem>۱۸ تای آخر</asp:ListItem>
                    </asp:DropDownList></td>
                    </tr>

    <tr>
                        <td >
                            &nbsp;<td  >
                            &nbsp;</td>
                    </tr>
    </table>
                            
                    
                    


           <blink ><asp:Label ID="lblError" runat="server" Font-Size="15px"></asp:Label></blink >
            
           
               
           
                   
             
           
                                </p>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False"   
        EnableViewState="False" TabIndex="-1" 
                                BackColor="White" BorderColor="#CCCCCC" 
                        BorderStyle="None" BorderWidth="1px" Width="100%" 
          DataKeyNames="RowID" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                PageSize="20" EnableModelValidation="False" >
                            <RowStyle HorizontalAlign="Right" Wrap="False" ForeColor="#000066" />
                            <Columns>

                                <asp:BoundField DataField="Date" HeaderText="تاريخ مشاوره" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>


                              <asp:BoundField DataField="Rooz" HeaderText="روز" >
                                    <ItemStyle Width="40px" />
                                </asp:BoundField>


                                <asp:BoundField DataField="StartTelTime" HeaderText="شروع" >
                                    <ItemStyle Width="50px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="EndTelTime" HeaderText="پایان" >
                                    <ItemStyle Width="50px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="SobhAsr" HeaderText="" >
                                    <ItemStyle Width="50px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="VaziatReserve" HeaderText="رزرو" >
                                    <ItemStyle Width="50px" />
                                </asp:BoundField>

                              <asp:BoundField DataField="CodeReserved" HeaderText="کد متقاضی" >
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>


                                <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkAdd" runat="server"
                                        CommandArgument='<%# Eval("RowID")%>' OnClick="deleteTime" 
                                         Text="حذف وقت" Width="30px"></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderTemplate>
                                </HeaderTemplate>                           
                                    <ControlStyle Font-Underline="True" />
                                    <ItemStyle Font-Underline="False" Wrap="False" />
                            </asp:TemplateField>

<%--                                <asp:BoundField DataField="newsTitle" HeaderText="عنوان مطلب" 
                                    ConvertEmptyStringToNull="False" ReadOnly="True" >
                               <ItemStyle Wrap="True" Width="350px"></ItemStyle>
                                </asp:BoundField>


                                <asp:TemplateField HeaderText="تایید نهایی">
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
                                </asp:TemplateField>--%>
                                
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

<%--</ContentTemplate>
                        
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID = "btnSave" /> 
    </Triggers>

</asp:UpdatePanel> --%> 





</div>


</div>



</asp:Content>

