<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master" 
CodeBehind="PhoneConsultReserve.aspx.cs" Inherits="PresentationLayer.PhoneConsultReserve" %>
 
<asp:Content ID="HeaderSection" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

  
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

<div     class="content-box-left" style="margin-top:-7px;">

    <div class="content">

<div id="appointments">

<h1 class="content-box-title" style="width:310px; margin-right:15px; margin-top:0px;" >
وقتهای تعیین شده برای مشاوره تلفنی</h1>

</div>


 <div align="center">

             <blink>
           
                    <asp:Label ID="lblMessage"  runat="server" style="font-size:17px; color:#ff0066;"></asp:Label>
                      
              </blink> 

</div>


<asp:Repeater id="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>

     <div class="news-item" style="margin-right:18px; width:736px;">

<div class="news-item-right"  style="margin-right:0px; ">



<asp:Label ID="LabelReserveID" Visible="false"    runat="server" Text=<%#Eval("RowID")%>></asp:Label>


<h1 class="news-title" style=" width:736px;border-top:1px dashed #999;">

<asp:LinkButton ID="LinkButtonReserve"  style="margin-right:10px;width:70px; float:left;font-size:15px;" runat="server" Text="رزرو مشاوره" CommandName="goToReserve"></asp:LinkButton>


<asp:Label ID="LabelRooz" Visible="true"  style="margin-right:0px;width:100px;"  runat="server" Text=<%#Eval("Rooz")%>></asp:Label>

<asp:Label ID="LabelDate" Visible="true" style="margin-right:0px;width:100px;"    runat="server" Text=<%#Eval("Date")%>></asp:Label>




<asp:Label ID="LabelEndTelTime" runat="server" style="margin-right:15px;width:100px; " Text= <%#Eval("EndTelTime")%>></asp:Label>


-

 <asp:Label ID="LabelStartTelTime" runat="server" style="margin-right:2px;width:100px;"  Text=<%#Eval("StartTelTime")%>></asp:Label>

 <asp:Label ID="LabelSobhAsr" runat="server" style="margin-right:1px;width:100px; margin-left:5px"  Text=<%#Eval("SobhAsr")%>></asp:Label>

<asp:Label ID="LabelVaziatReserve" Visible="true"  style="margin-right:20px;width:90px; font-size:13px; color:#ff0066;"  runat="server" Text=<%#Eval("VaziatReserve")%>></asp:Label>

<asp:Label ID="Label6" Visible="true"  style="margin-right:10px;width:80px; font-size:14px; color:#00b1b2;"  runat="server" Text=<%#Eval("CodeReserved")%>></asp:Label>

<asp:Label ID="Label1" Visible="true"  style="margin-right:10px;width:80px; font-size:14px; color:#0099ff;"  runat="server" Text=<%#Eval("TaeedeReserve")%>></asp:Label>

<asp:Label ID="Label8" Visible="true"  style="margin-right:10px;width:80px; font-size:14px; color:#0099ff;"  runat="server" Text=<%#Eval("TozihatReserveAdmin")%>></asp:Label>
</h1>




</div>

</div>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater>






<div id="impTips">

<h1 class="content-box-title" style="width:260px; margin-right:15px;margin-top:200px;" >
 نکات مهم در رزرو مشاوره تلفنی</h1>
</div>



<p class="content-box-PassageMy" style="margin-right:18px;">۱-  وقتهایی که
    <span class="red"><strong>رزرو نشده</strong></span> هستند را می توان برای 
    مشاوره رزرو نمود.<br />
    2- ۴ رقم آخر شماره تلفن همراه شما به عنوان کد در&nbsp; <span class="b1b2">
    <strong>کد رزرو:؟؟؟؟ </strong></span>،بیانگر&nbsp;رزرو وقت مشاوره توسط شما می 
    باشد.<br />
    ۳- <span class="blue"> <strong>حداکثر</strong></span> زمان مشاوره تلفنی 
    <span class="b1b2"> <strong>۳۰ دقیقه </strong></span>در نظر گرفته شده است و 
    هزینه آن <span class="b1b2"> <strong>18 هزار تومان</strong></span> می باشد.<br />
    4- برای سهولت در بررسی واریزهای انجام شده، حتی الامکان از روش 
    <span class="blue"> <strong>کارت به 
    کارت</strong></span> استفاده نمایید.<br />
    5- هزینه مشاوره را به شماره <span class="b1b2"><strong>ملت کارت&nbsp; ۵۵۴۴ - 
    ۰۵۸۹ - ۳۳۷۹ - ۶۱۰۴</strong></span>  و یا <span class="b1b2"><strong>شماره 
    حساب 5346938935&nbsp;بانک ملت</strong></span> بنام <span class="b1b2"><strong>افروز 
    احرامی</strong></span>
    واریز نمایید.<br />
    6- <span class="blue"><strong>مشخصات پرداخت هزینه </strong></span>که برای 
    رزرو مشاوره تلفنی مورد نیاز هستند در زیر آمده اند:<br />
    <span class="b1b2"><strong>الف) تاریخ واریز </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="b1b2"><strong>ب) ساعت واریز</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <span class="b1b2"><strong>ج) مبلغ واریز شده (تومان)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; د) شماره فیش یا تراکنش واریز</strong></span><br />
    7-&nbsp; 
    لطفاً&nbsp;تنها در وقتهای تعیین شده برای مشاوره تلفنی تماس بگیرید. شماره تماس برای مشاوره تلفنی <span class="b1b2"><strong>۰۹۱۷۰۹۱۰۳۳۶</strong></span> می باشد.<br />
    ۸-
    لطفاً   <strong>پس از انجام واریز</strong> به حساب تا قبل از 
    <span 
        class="blue"><strong>ساعت ۱۲ شب</strong></span><strong>
    </strong>همان روز، عملیات رزرو مشاوره را روی سایت انجام دهید تا ما پس از بررسی 
    حساب بانکی، وقت مشاوره <span class="blue"> <strong>تایید نشده</strong></span>&nbsp;شما را 
    <span class="b1b2"><strong>تایید نهایی</strong></span> کنیم.<br />
    ۹- چنانچه مشخصات پرداخت شما در بررسی حساب بانکی یافت نشود، وقت مشاوره رزرو شده 
    شما <span class="red"><strong>کنسل شده</strong></span> و وقت مورد نظر برای 
    انتخاب توسط بقیه مراجعین خالی در نظر گرفته می شود. در نتیجه در ورود مشخصات واریز 
    بانکی خود نهایت دقت را داشته باشید.<br />
    ۱۰- در صورتیکه پرداخت شما در بررسی حساب بانکی تایید شود&nbsp;با نمایش &quot;<span 
        class="b1b2"><strong>واریز تایید شد</strong></span>&quot;، رزرو شما 
    <span 
        class="b1b2"><strong>تایید نهایی </strong></span>شده است.
    <br />
    1۱- اگر در وقت رزرو شده توسط شما، بر اثر شرایط <span class="red"><strong>
    غیرقابل پیش بینی</strong></span>  قادر به ارايه مشاوره نباشیم یک روز قبل و یا در 
    همان ساعت مشاوره با تلفن همراه شما تماس گرفته شده و <span class="blue">
    <strong>نوبت دیگری</strong></span> برای شما و به انتخاب خودتان در نظر گرفته 
    خواهد شد و <span class="b1b2"><strong>مبلغ پرداختی محفوظ</strong></span> می 
    باشد.<br />
    1۲- اگر به هر دلیلی نتوانید در وقت مقرر برای مشاوره تماس بگیرید، 
    لطفاً  تا<span 
        class="blue"><strong> ۲۴ ساعت</strong></span><strong> </strong>قبل از&nbsp;وقت رزرو شده با <span class="blue"><strong>پیام کوتاه (SMS)  </strong></span>اطلاع دهید و
    <span class="blue"><strong>وقت دیگری</strong></span> را&nbsp; رزرو نمایید.<br/>


    
    </p>



    

 </div>

</div>



<div class="sidebar" style="margin-top:0px;">
<h1 class="content-box-title" style="width:160px; margin-bottom:-6px;">مباحث روانشناسی</h1>

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




<h1 class="content-box-title" style="width:160px; margin-top:20px;">مشاوره تلفنی امروز</h1>

<asp:Repeater id="Repeater3" runat="server">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
       
       <font size="2px">
         <%#Eval("CodeReserved")%> &nbsp; <%#Eval("EndTelTime")%> - <%#Eval("StartTelTime")%>
         <br />
       </font>  
    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater>

</div>
</div>

</asp:Content>
