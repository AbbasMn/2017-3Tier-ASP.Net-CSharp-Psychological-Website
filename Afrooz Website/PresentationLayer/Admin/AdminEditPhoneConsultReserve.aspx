<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/WebsiteLayout/MainMaster.Master"
  CodeBehind="AdminEditPhoneConsultReserve.aspx.cs" Inherits="PresentationLayer.AdminEditPhoneConsultReserve" %>
  
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



<div class="single-content-box" style="margin-top:12px;">

<h1 class="content-box-title">
رزرو نهایی مشاوره تلفنی </h1>
<p>
<div class="" dir="" align="right" dir="rtl">
<%--<p  class="content-box-titleMy"> کاربر گرامی:</p>--%>
<%--<p class="content-box-PassageMy">۱- لطفا در درج اطلاعات نهایت دقت را انجام دهید و تمامی <strong>فیلدهای ستاره دار</strong> 
    را پر نمایید.
    

    
    </p>--%>

</div>

</p>

<%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
<ContentTemplate>--%>

<div style="width:100%; position:relative;">
<div>

 <asp:Label ID="lblError" runat="server" ></asp:Label>    <asp:Label ID="lblMessage" runat="server" ></asp:Label>
</div>
<asp:Repeater id="Repeater1" runat="server" >
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
        
         <table width="100%" align="center" class="register-form" >
                    
                    
                    <tr>
                        <td >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<td >
                            
                           روز مشاوره:<td  >
                            <asp:Label ID="LabelRooz" Visible="true"   Text=<%#Eval("Rooz")%>  runat="server" style="font-size:20px; color:#00b1b2;"> </asp:Label>
                            </td>
                        <td class=""  align="right">
                            تاریخ مشاوره:</td>
                        <td class=""  align="right">
                            
                            <asp:Label ID="LabelDate" Visible="true"  Text=<%#Eval("Date")%> runat="server" style="font-size:20px; color:#00b1b2;"> </asp:Label>



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
                            زمان شروع مشاوره:<td  >
                             <asp:Label ID="LabelStartTelTime" Text=<%#Eval("StartTelTime")%> runat="server" style="font-size:20px; color:#00b1b2;" ></asp:Label></td>
                        <td class=""  align="right">
                            زمان پایان مشاوره:</td>
                        <td class=""  align="right">
                            <asp:Label ID="LabelEndTelTime" Text= <%#Eval("EndTelTime")%> runat="server" style="font-size:20px; color:#00b1b2;"></asp:Label>
                             <asp:Label ID="LabelSobhAsr" Text=<%#Eval("SobhAsr")%> runat="server" style="font-size:20px; color:#00b1b2;"></asp:Label>
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
                        <td class="style1" >
                            &nbsp;</td>
                        <td class="style1" >
                            مبحث 
                            مشاوره روانشناسی:</td>
                        <td class="style1"  style="font-size:20px; color:#00b1b2;">
                        <%#Eval("MabhasMoshavere")%>
                        </td>
                        <td class="style1"  align="right" >
                            موضوع مشاوره روانشناسی:</td>
                        <td class="style1"  align="right" style="font-size:20px; color:#00b1b2;">

                      <%#Eval("MozooMoshavere")%> 
                       
                    
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
                        <td >
                            &nbsp;</td>
                        <td >
                            توضیحات مقدماتی برای مشاور (اختیاری):</td>
                        <td >
                    
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
                        <td  colspan="3" align="right" style="font-size:20px; color:#00b1b2;">
                                  <%#Eval("TozihatBimar")%>
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
                        <td >
                            &nbsp;</td>
                        <td colspan="4" >
                       
                         <hr style="width:80%; border-color:#0099ff; border-width:1px" />
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
                        <td >
                            &nbsp;</td>
                        <td >
                            
                            شماره فیش یا تراکنش واریز:
                            </td>
                        <td style="font-size:20px; color:#00b1b2;">
                    
                                <%#Eval("Tarakonesh")%>
                    
                        </td>
                        <td class="" align="right">
                            نوع واریز:</td>
                        <td class="" align="right" style="font-size:20px; color:#00b1b2;">
                                <%#Eval("NoeVariz")%>
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
                        <td style="font-size:20px; color:#00b1b2;" >
                                 <%#Eval("KardNumber")%>
                    
                        </td>
                        <td class="" align="right">
                            &nbsp;
                            مبلغ واریز شده (تومان):
                            </td>
                        <td style="font-size:20px; color:#00b1b2;">
                    
                                <%#Eval("Mablagh")%>
                    
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
                            &nbsp;
                            تاریخ واریز:
                            </td>
                        <td style="font-size:20px; color:#00b1b2;">
                                <%#Eval("TarikhVariz")%>
                    
                        </td>
                        <td class="" align="right">
                            &nbsp; ساعت واریز:
                            </td>
                        <td align="right" style="font-size:20px; color:#00b1b2;">
                    
                                    <%#Eval("SaeatVariz")%>
                    
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
                        <td colspan="4" >
                       
                         <hr style="width:80%; border-color:#0099ff; border-width:1px" />
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
                        <td >
                            
                            شماره موبایل:
                            </td>
                        <td style="font-size:20px; color:#00b1b2;">
                    
                            <%#Eval("CellNumber")%>
                    
                        </td>
                        <td class="" align="right">
                            شماره تلفن ثابت:</td>
                        <td class="" align="right" style="font-size:20px; color:#00b1b2;">
                                <%#Eval("TelNumber")%>
                            </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >

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
                            &nbsp;<td >
                            کد رزرو:<td  >
                             <asp:Label ID="Label1" Text=<%#Eval("CodeReserved")%> runat="server" style="font-size:20px; color:#00b1b2;" ></asp:Label></td>
                        <td class=""  align="right">
                            وضعیت رزرو:</td>
                        <td class=""  align="right">
                            <asp:Label ID="Label2" Text= <%#Eval("VaziatReserve")%> runat="server" style="font-size:20px; color:#00b1b2;"></asp:Label>

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
                            &nbsp;<td >
                           تایید واریز:<td  >
                             <asp:Label ID="Label3" Text=<%#Eval("TozihatReserveAdmin")%> runat="server" style="font-size:20px; color:#00b1b2;" ></asp:Label></td>
                        <td class=""  align="right">
                          </td>
                        <td class=""  align="right">
                
                

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
                        <td >
                            &nbsp;</td>
                        <td >
                    
                                &nbsp;</td>
                        <td class="" align="right">
                            &nbsp;</td>
                        <td class="" align="right">
</td>
                    </tr>



                    </table>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater>

<table width="100%"  class="register-form" align="left" dir="rtl" >
<tr>
                        <td align="left">
                              &nbsp;&nbsp; &nbsp;<td align="left">
                              وضعیت جدید تایید واریز:&nbsp;&nbsp;&nbsp;&nbsp; <td >

                              <asp:DropDownList ID="drlistTaeedeVariz" runat="server" TabIndex="1">
                                  <asp:ListItem>عدم تایید واریز و آزاد شدن وقت</asp:ListItem>                                                
                                    <asp:ListItem>واریز تایید شد</asp:ListItem>
                              </asp:DropDownList>
                              <td>
                             <asp:Label ID="Label3" Text=<%#Eval("TozihatReserveAdmin")%> runat="server" style="font-size:20px; color:#00b1b2;" ></asp:Label></td>
                        <td class=""  align="left">
                            </td>
                        <td class=""  align="left">
                
                                        <asp:Button ID="btnSave" runat="server" CssClass="submit-field" 
                                    onclick="btnSave_Click" style="margin-right: 0px" Text="تایید نهایی" />

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

