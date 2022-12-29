<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WebsiteLayout/MainMaster.Master"
CodeBehind="PageContentElement.aspx.cs" Inherits="PresentationLayer.User.PageContentElement" %>

<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">
</asp:Content>

<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">


<div class="main">

<div class="container">
<div class="gallery">
<h1 class="gallery-box-title">گالری</h1>
<div class="sort">
<div class="gallerySearchBar sort-item">
<form action="" method="post">
<input class="searchTextInput" type="text" name="search[galleries]" value="" placeholder="عبارت جستجو">
<input class="searchSubmitButton" name="search[button]" type="submit" value="جستجو">
</form>
<span>مرتب سازی بر اساس</span>
<select name="sortBy" onchange="reload()" id="sortBy">
<option value="publish_datetime">جدیدترین ها</option>
<option value="hit">پربازدیدترین ها</option>
<option value="likeScore">پر طرفدارین ها</option>
<option value="comment">تعداد نظرات</option>
</select>
</div>
</div>
<ul id="main-box">
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/porsche-911-turbo-s-2014">پورشه 911 توربو S مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/porsche-911-turbo-s-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_1094334[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_1094334[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/bentley-continental-gt3-r-2015">بنتلی کانتیننتال GT3 R مدل 2015 </a></h3>
<a href="http://www.car.ir/galleries/bentley-continental-gt3-r-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_30478013[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_30478013[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/aston-martin-rapide-s-2014">آستون مارتین رپید S مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/aston-martin-rapide-s-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_6242291[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_6242291[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/buick-regal-gs-awd-2014">بیوک رگال GS AWD مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/buick-regal-gs-awd-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_3921304[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_3921304[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/audi-a6-2016">آئودی A6 مدل 2016</a></h3>
<a href="http://www.car.ir/galleries/audi-a6-2016"><img src="./گالری تصاویر خودرو_files/files_galleries_4676867[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_4676867[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/vw-golf-r-2015">فولکس واگن گلف R مدل 2015</a></h3>
<a href="http://www.car.ir/galleries/vw-golf-r-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_73643012[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_73643012[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 1 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/peugeot-onyx-concept">پژو اونیکس (سوپر اسپرت مفهومی)</a></h3>
<a href="http://www.car.ir/galleries/peugeot-onyx-concept"><img src="./گالری تصاویر خودرو_files/files_galleries_82767113[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_82767113[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="94"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 1 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/megane-rs-2014">رنو مگان RS اسپرت مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/megane-rs-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_5368332[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_5368332[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="84"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/audi-q7-2016">آئودی Q7 مدل 2016</a></h3>
<a href="http://www.car.ir/galleries/audi-q7-2016"><img src="./گالری تصاویر خودرو_files/files_galleries_9285552[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_9285552[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/mazda-6-2014">مزدا 6 مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/mazda-6-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_35881518[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_35881518[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/challenger-sxt-plus-2015">داج چلنجر SXT پلاس 2015</a></h3>
<a href="http://www.car.ir/galleries/challenger-sxt-plus-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_3973462[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_3973462[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 1 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/bmw-228i-2014">بی ام و 228i مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/bmw-228i-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_7459655[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_7459655[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="100"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/bentley-mulsanne-speed-2015">بنتلی مولسان2015</a></h3>
<a href="http://www.car.ir/galleries/bentley-mulsanne-speed-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_9463941[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_9463941[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/toyota-mirai-2016">تویوتا میرای 2016</a></h3>
<a href="http://www.car.ir/galleries/toyota-mirai-2016"><img src="./گالری تصاویر خودرو_files/files_galleries_8817731[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_8817731[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 15 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/hyunda-i20-coupe-2015">هیوندای i20 کوپه 2015</a></h3>
<a href="http://www.car.ir/galleries/hyunda-i20-coupe-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_2602071[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_2602071[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/hyundai-i30-turbo-2015">هیوندای i30 توربو 2015</a></h3>
<a href="http://www.car.ir/galleries/hyundai-i30-turbo-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_5964241[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_5964241[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 0 </div>
<div class="gallery-meta-comment"> 0 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/mitsubishi-xr-phev-2014">میتسوبیشی XR-PHEV کانسپت 2014</a></h3>
<a href="http://www.car.ir/galleries/mitsubishi-xr-phev-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_50091[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_50091[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 4 </div>
<div class="gallery-meta-comment"> 3 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/nissan-morano-2015">نیسان مورانو 2015</a></h3>
<a href="http://www.car.ir/galleries/nissan-morano-2015"><img src="./گالری تصاویر خودرو_files/files_galleries_5983561[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_5983561[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 1 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/toyota-rav-4">تویوتا راو 4 مدل 2014</a></h3>
<a href="http://www.car.ir/galleries/toyota-rav-4"><img src="./گالری تصاویر خودرو_files/files_galleries_9922281[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_9922281[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 1 </div>
<div class="gallery-meta-comment"> 2 </div>
</div>
</li>
<li>
<h3 class="gallery-title"><a href="http://www.car.ir/galleries/mitsubishi-mirage-2014">میتسوبیشی میراژ 2014</a></h3>
<a href="http://www.car.ir/galleries/mitsubishi-mirage-2014"><img src="./گالری تصاویر خودرو_files/files_galleries_8576451[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" alt="files_galleries_8576451[70885fc0f623ea1a50e1dbb8e2ee4f18].jpg" width="150" height="113"></a>
<div class="gallery-meta">
<div class="gallery-meta-like"> 2 </div>
<div class="gallery-meta-comment"> 3 </div>
</div>
</li>
</ul>
<div class="list-pagination">
<span class="statuspage">صفحه 1 از 10</span>
<span class="pagingPagesNumbersList">
<span class="currentPageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/1/sortBy/publish_datetime">
[1]</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/2/sortBy/publish_datetime">2</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/3/sortBy/publish_datetime">3</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/4/sortBy/publish_datetime">4</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/5/sortBy/publish_datetime">5</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/6/sortBy/publish_datetime">6</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/7/sortBy/publish_datetime">7</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/8/sortBy/publish_datetime">8</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/9/sortBy/publish_datetime">9</a>&nbsp;</span>
<span class="pageNumber"><a onclick="" href="http://www.car.ir/galleries/plist/10/sortBy/publish_datetime">10</a>&nbsp;</span>
<span class="jumpToNextPage"><a onclick="" href="http://www.car.ir/galleries/plist/2/sortBy/publish_datetime" title="Jump to next page"> &gt; </a> </span></span> <a href="http://www.car.ir/galleries/plist/2/sortBy/publish_datetime" class="paging-body" title="صفحه بعدی">
»</a>
</div>
</div>
</div>













<div class="content">
<div class="content-box" id="Div1">
<h1 class="content-box-title">اخبار</h1>
<div class="sort">
<div class="sort-item"> <span>مرتب سازی بر اساس</span>
<select name="sortBy" onchange="reload()" id="Select1">
<option value="publish_datetime" selected="selected">تاریخ</option>
<option value="hit">تعداد بازدید</option>
<option value="comment">نظرات</option>
</select>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/10-most-efficient-cars"><img src="./اخبار صنعت خودرو_files/files_news_Ten_Most_Efficient_Cars[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_Ten_Most_Efficient_Cars[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/10-most-efficient-cars">ده خودروی کم مصرف در کلاس های مختلف</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">956 بازدید</div>
<div class="news-meta-item">4 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">اخبار اقتصادی</a></div>
</div>
<div class="news-content">
وقتی صحبت از خودروهای مقرون ‌به ‌صرفه به میان می‌آید، نخستین انتظار ما، حداقل مصرف سوخت برای این خودروهاست. اما گاهی انتظار ما فراتر از یک خودروی کوچک شهری است وممکن است حتی از خودروی اسپرت خود نیز انتظار صرفه‌جویی ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/best-small-cars"><img src="./اخبار صنعت خودرو_files/files_news_Best_Small_Cars[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_Best_Small_Cars[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/best-small-cars">برترین خودروهای کوچک از جهات مختلف</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">2,150 بازدید</div>
<div class="news-meta-item">3 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">خودروسازان خارجی</a></div>
</div>
<div class="news-content">
چه از لحاظ محیط زیستی و چه از لحاظ فضای پارک و یا پرهیز از شتاب زیاد کاهش قیمت در خودروهای بزرگ‌تر، استفاده از خودروهای کوچک‌تر صرفه بیشتری خواهد داشت. در این رابطه وب‌سایت Departures نگاهی داشته به ۶ خودروی کوچکی که ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/cars-not-meeting-euro-4"><img src="./اخبار صنعت خودرو_files/files_news_Not_Meeting_Euro_4_Standard[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_Not_Meeting_Euro_4_Standard[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/cars-not-meeting-euro-4">توقیف شماره گذاری 5 خودرو به خاطر عدم رعایت استاندارد یورو 4</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">1,804 بازدید</div>
<div class="news-meta-item">10 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">اطلاعیه</a></div>
</div>
<div class="news-content">
معاون سازمان حفاظت محیط زیست از ممنوعیت شماره گذاری 5 خودرو تولیدی به دلیل آلایندگی خبر داد.
دکتر سعید متصدی - معاون محیط زیست انسانی سازمان حفاظت محیط زیست روز سه شنبه در گفت وگو با خبرنگار سایت خبری محیط زیست ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/Audi-RS3-Mercedes-A45-AMG"><img src="./اخبار صنعت خودرو_files/files_news_RS3_A_Threat_For_A45_AMG[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_RS3_A_Threat_For_A45_AMG[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/Audi-RS3-Mercedes-A45-AMG">آئودی RS3 جدید، تهدیدی برای مرسدس A45 AMG</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">520 بازدید</div>
<div class="news-meta-item">3 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">خودروهای آتی بازار</a></div>
</div>
<div class="news-content">
داغ‌ترین هاچ بک آئودی که اخیراً در نمایشگاه ژنو رونمایی شده می‌تواند باعث نگرانی حریف اشتوتگارتی خود باشد. اگر شما هم عاشق هاچ بک‌های داغ باشید، احتمالاً بین انتخاب این دو مردد خواهید ماند.
مرسدس بنز A 45 AMG با ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/dongfeng-s30-h30"><img src="./اخبار صنعت خودرو_files/files_news_S30_&_H30[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_S30_&amp;_H30[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/dongfeng-s30-h30">بررسی دانگ فنگ S30 و H30</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">6,823 بازدید</div>
<div class="news-meta-item">4 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">تست و بررسی</a></div>
</div>
<div class="news-content">
حتی اگر این واقعیت که کشور چین در حال حاضر یکی از برترین قطب های صنعت خودرو به لحاظ میزان تولید و فروش است را امری جدی در نظر نگیریم، به طور قطع در این‌که آینده درخشانی پیش روی خودروسازان این کشور قرار دارد را ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/Kings-car-restoration"><img src="./اخبار صنعت خودرو_files/files_news_King's_Car_Restoration[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_King&#39;s_Car_Restoration[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/Kings-car-restoration">بازسازی خودروی پادشاه اسپانیا</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">4,835 بازدید</div>
<div class="news-meta-item">2 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">خودروسازان خارجی</a></div>
</div>
<div class="news-content">
نسل اول سئات ایبیزا هاچ بک مدل 1986 با رنگ طلایی و موتور 1.5 لیتری، اولین خودروی فیلیپ ششم، پادشاه اسپانیا بود که به طور کامل بازسازی شده و در جریان بازدید وی از شرکت سئات در Martorell به وی نشان داده شد.
این ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/us-market-2104"><img src="./اخبار صنعت خودرو_files/files_news_US_Market_2014[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_US_Market_2014[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/us-market-2104">خودروهایی که کمترین میزان فروش در آمریکا در سال 2014 را داشتند</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">2,572 بازدید</div>
<div class="news-meta-item">4 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">اخبار اقتصادی</a></div>
</div>
<div class="news-content">
وقتی نوبت به میزان فروش سالانه صنعت خودرو می‌رسد، انتخاب بهترین‌ها در این زمینه بسیار آسان است. با توجه به اخبار تبلیغاتی منتشر شده از خودروسازان مختلف، خودروهای پرفروش سال چندان تعجب ‌برانگیز نبوده‌اند. در همین حال، ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/x6-lumma-design-kit"><img src="./اخبار صنعت خودرو_files/files_news_X6_Lumma_Design[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_X6_Lumma_Design[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/x6-lumma-design-kit">بی ام و X6 با کیت بدنه لوما دیزاین</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">3,009 بازدید</div>
<div class="news-meta-item">5 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">خودروسازان خارجی</a></div>
</div>
<div class="news-content">
لوما تاکنون چندین پروژه تیونینگ برای کراس آور اسپرت ب ام و یعنی مدل X6 معرفی کرده است. اما این آخرین پروژه، X را تبدیل به یک خودروی کارتونی و فانتزی می‌کند.
این کیت بدنه عجیب و غریب برای X6 حدود 33 هزار یورو هم ...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/vw-golf-r-2015-review"><img src="./اخبار صنعت خودرو_files/files_news_Golf_R_Test[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_Golf_R_Test[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/vw-golf-r-2015-review">تست و بررسی فولکس واگن گلف R</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">468 بازدید</div>
<div class="news-meta-item">1 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">تست و بررسی</a></div>
</div>
<div class="news-content">
سال 2015، فولکس واگن گلف با مدل R، شایستگی‌های گلف را به عنوان یک هاچ بک داغ و آتشین به رخ می‌کشد. گلف خودرویی با قدمتی طولانی است که بیش از همه، این ماندگاری را مدیون قابلیت اطمینان و کارایی مناسب می‌باشد.
...</div>
</div>
</div>
<div class="news-item">
<div class="news-item-right"> <a href="http://www.car.ir/news/audi-a1-activekit"><img src="./اخبار صنعت خودرو_files/files_news_Audi_A1_ActiveKit[21310d8e174fa8fb177f888e2cfde1fe].jpg" alt="files_news_Audi_A1_ActiveKit[21310d8e174fa8fb177f888e2cfde1fe].jpg" width="194" height="120"></a> </div>
<div class="news-item-left">
<h1 class="news-title"><a href="http://www.car.ir/news/audi-a1-activekit">آئودی A1 با کیت بدنه ActiveKit</a></h1>
<div class="news-meta">
<div class="news-meta-item"></div>
<div class="news-meta-item">993 بازدید</div>
<div class="news-meta-item">1 دیدگاه</div>
<div class="news-meta-item">مبحث : <a href="http://www.car.ir/news/plist/1/sortBy/publish_datetime#">خودروسازان خارجی</a></div>
</div>
<div class="news-content">
پکیج‌های ویژه اسپرت برای آئودی چیز جدیدی نیست. مخصوصاً اینکه همواره می‌توانید یکی از آن‌ها را در تریم زیبای اسپرت S بیابید. ولی این مانع این کارخانه‌ی آلمانی نشده تا ایده‌های جدید را برای بهبود تصویر مدل‌های خود ...</div>
</div>
</div>
</div>
<div class="list-pagination">
<span class="statuspage">صفحه 1 از 192</span>
<span class="PagesNumbersList">
<span class="currentPageNumber"><a href="./اخبار صنعت خودرو_files/اخبار صنعت خودرو.html" onclick="">
[1]</a></span>
,<span class="pageNumber"><a href="http://www.car.ir/news/plist/2/sortBy/publish_datetime" onclick="">2</a></span>
,<span class="pageNumber"><a href="http://www.car.ir/news/plist/3/sortBy/publish_datetime" onclick="">3</a></span>
, <span class="hasNextPage"> ... </span>,<span class="pageNumber"><a href="http://www.car.ir/news/plist/190/sortBy/publish_datetime" onclick="">190</a></span>
,<span class="pageNumber"><a href="http://www.car.ir/news/plist/191/sortBy/publish_datetime" onclick="">191</a></span>
,<span class="pageNumber"><a href="http://www.car.ir/news/plist/192/sortBy/publish_datetime" onclick="">192</a></span>
</span> <a href="http://www.car.ir/news/plist/2/sortBy/publish_datetime" class="paging-body" title="صفحه بعدی">
»</a>
</div>
</div>




















<div class="review-main-box">
<div class="review-top-box">
<div class="review-top-box-item review-box-count">
<div class="review-top-box-title"><img src="./نقد و بررسی_files/review.png">تعداد نقد و بررسی ها</div>
<div class="review-top-box-content">
<div class="review-top-box-content-detail">
<div class="review-counter">
<p>6</p>
<span>۱۹ دى ۱۳۹۳</span>
</div>
</div>
</div>
<a href="http://www.car.ir/reviews/all" class="review-top-box-more">ادامه</a>
</div>
<div class="review-top-box-item review-box-topuser">
<div class="review-top-box-title"><img src="./نقد و بررسی_files/user.png">برترین کاربران ماه جاری</div>
<div class="review-top-box-content">
<div class="review-top-box-content-detail">
<ul>
<li>پوریا ایرانی	<span>52</span>
</li>
<li>محمدماجد	<span>35</span>
</li>
<li>حسین معمار	<span>32</span>
</li>
<li>گالاردو	<span>26</span>
</li>
<li>سستو المنتو	<span>25</span>
</li>
<li>علی فلاحت <span>21</span>
</li>
<li>آفرین	<span>21</span>
</li>
</ul>
</div>
</div>
</div>
<div class="review-top-box-item review-box-topbrand">
<div class="review-top-box-title"><img src="./نقد و بررسی_files/top-brand.png">برترین برندها</div>
<div class="review-top-box-content">
<div class="review-top-box-content-detail">
<ul>
<li>جک</li>
<li>هوندا</li>
<li>مزدا</li>
<li>آلفا رومئو</li>
<li>هیوندای</li>
<li>سوزوکی</li>
<li>لکسوس</li>
</ul>
</div>
</div>
</div>
<div class="review-top-box-item review-box-addreview">
<div class="add-review-content">
<p><a href="http://www.car.ir/login/returnTo/JTNGc24lM0RyZXZpZXdzJTI2cHQlM0RuZXc" onclick="changeLink(&#39;/login/returnTo/JTNGc24lM0RyZXZpZXdzJTI2cHQlM0RuZXc&#39;)" class="my_modal_open" data-popup-order="1">جهت انجام نقد و بررسی کلیک کنید</a></p>
<p><a href="http://www.car.ir/login/returnTo/JTNGc24lM0RyZXZpZXdzJTI2cHQlM0RuZXc" onclick="changeLink(&#39;/login/returnTo/JTNGc24lM0RyZXZpZXdzJTI2cHQlM0RuZXc&#39;)" class="add-review-link my_modal_open" data-popup-order="2">Click for submit Review</a></p>
</div>
</div>
</div>
<div class="review-3-column">
<div class="review-3-column-item last-review">
<div class="review-3-column-title">
<img src="./نقد و بررسی_files/user.png">آخرین نقد و بررسی ها	</div>
<div class="review-3-column-content" id="last-reviews">
<ul>
<li>
<div class="user-image">
</div>
<div class="user-name">ریکاردو</div>
<div class="user-car">سایپا 132 SL</div>
<div class="user-review-desc"><a href="http://www.car.ir/reviews/Saipa-132-SL/99">سایپا 132SL</a></div>
<div class="user-review-rate rate-red">5.38</div>
</li>
<li>
<div class="user-image">
</div>
<div class="user-name">حامد رضابیک</div>
<div class="user-car">هیوندای النترا ...</div>
<div class="user-review-desc"><a href="http://www.car.ir/reviews/Hyundai-Elantra-Full/98">هیوندا النترا 2014</a></div>
<div class="user-review-rate rate-red">8.25</div>
</li>
<li>
<div class="user-image">
</div>
<div class="user-name">سیامک رجبی</div>
<div class="user-car">میتسوبیشی ASX</div>
<div class="user-review-desc"><a href="http://www.car.ir/reviews/Mitsubishi-ASX/97">میتسوبیشی ASX </a></div>
<div class="user-review-rate rate-red">8</div>
</li>
<li>
<div class="user-image">
</div>
<div class="user-name">مازراتیوس</div>
<div class="user-car">سایپا 131 SX</div>
<div class="user-review-desc"><a href="http://www.car.ir/reviews/Saipa-131-SX/89">بررسی خودرو سایپا ...</a></div>
<div class="user-review-rate rate-red">4.13</div>
</li>
<li>
<div class="user-image">
<img src="./نقد و بررسی_files/files_users_006-bmw[194c148ccbe51aaa760ba85035fc53c3].jpg" alt="files_users_006-bmw[194c148ccbe51aaa760ba85035fc53c3].jpg" width="25" height="25">	</div>
<div class="user-name">کامی</div>
<div class="user-car">میتسوبیشی لنسر ...</div>
<div class="user-review-desc"><a href="http://www.car.ir/reviews/Mitsubishi-Lancer-1800/88">نرم، چالاک اما نه ...</a></div>
<div class="user-review-rate rate-red">8.38</div>
</li>
<li>
<div class="user-image">
<img src="./نقد و بررسی_files/files_users_006-bmw[194c148ccbe51aaa760ba85035fc53c3].jpg" alt="files_users_006-bmw[194c148ccbe51aaa760ba85035fc53c3].jpg" width="25" height="25">	</div>
<div class="user-name">کامی</div>
<div class="user-car">پژو 206 تیپ 6</div>
<div class="user-review-desc"><a href="http://www.car.ir/reviews/206-Type-6/84">خودروی مناسب ...</a></div>
<div class="user-review-rate rate-red">7</div>
</li>
</ul>
</div>
</div>
<div class="review-3-column-item active-user">
<div class="review-3-column-title">
<img src="./نقد و بررسی_files/user.png">کاربران فعال
<div class="select-box">
<select name="userSorting" onchange="changeListByAjax(&#39;?sn=reviews&amp;sortBy=score&amp;sortType=DESC&amp;userSortBy=__val__&amp;&#39;, this.value, &#39;last-active-user&#39;)" style="direction: rtl;">
<option value="1">ماه جاری</option>
<option value="2">ماه گذشته</option>
<option value="3">سه ماه گذشته</option>
<option value="4">شش ماه گذشته</option>
<option value="5">سال جاری</option>
<option value="6">سال گذشته</option>
<option value="7">تمامی زمانها</option>
</select>
</div>
</div>
<div class="review-3-column-content" id="last-active-user">
<ul>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D9%BE%D9%88%D8%B1%DB%8C%D8%A7-%D8%A7%DB%8C%D8%B1%D8%A7%D9%86%DB%8C"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D9%BE%D9%88%D8%B1%DB%8C%D8%A7-%D8%A7%DB%8C%D8%B1%D8%A7%D9%86%DB%8C"> پوریا ایرانی </a> </div>
<div class="user-review-rate rate-red">52</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D9%85%D8%AD%D9%85%D8%AF%D9%85%D8%A7%D8%AC%D8%AF"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D9%85%D8%AD%D9%85%D8%AF%D9%85%D8%A7%D8%AC%D8%AF"> محمدماجد </a> </div>
<div class="user-review-rate rate-red">35</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%AD%D8%B3%DB%8C%D9%86-%D9%85%D8%B9%D9%85%D8%A7%D8%B1"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%AD%D8%B3%DB%8C%D9%86-%D9%85%D8%B9%D9%85%D8%A7%D8%B1"> حسین معمار </a> </div>
<div class="user-review-rate rate-red">32</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%DA%AF%D8%A7%D9%84%D8%A7%D8%B1%D8%AF%D9%88"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%DA%AF%D8%A7%D9%84%D8%A7%D8%B1%D8%AF%D9%88"> گالاردو </a> </div>
<div class="user-review-rate rate-red">26</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%B3%D8%B3%D8%AA%D9%88-%D8%A7%D9%84%D9%85%D9%86%D8%AA%D9%88"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%B3%D8%B3%D8%AA%D9%88-%D8%A7%D9%84%D9%85%D9%86%D8%AA%D9%88"> سستو المنتو </a> </div>
<div class="user-review-rate rate-red">25</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%B9%D9%84%DB%8C-%D9%81%D9%84%D8%A7%D8%AD%D8%AA"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%B9%D9%84%DB%8C-%D9%81%D9%84%D8%A7%D8%AD%D8%AA"> علی فلاحت </a> </div>
<div class="user-review-rate rate-red">21</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%A2%D9%81%D8%B1%DB%8C%D9%86"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%A2%D9%81%D8%B1%DB%8C%D9%86"> آفرین </a> </div>
<div class="user-review-rate rate-red">21</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%A7%D9%84%DA%A9%D8%AA%D8%B1%D9%88%D9%86%DB%8C%DA%A9-%D9%82%D8%AF%D8%B1%D8%AA"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%A7%D9%84%DA%A9%D8%AA%D8%B1%D9%88%D9%86%DB%8C%DA%A9-%D9%82%D8%AF%D8%B1%D8%AA"> الکترونیک قدرت </a> </div>
<div class="user-review-rate rate-red">21</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%B1%D8%AE%D8%B4-%D8%AC%D8%A7%D8%AF%D9%87"><img src="./نقد و بررسی_files/files_users_volvo_fh16_2013_2[194c148ccbe51aaa760ba85035fc53c3].jpg" alt="files_users_volvo_fh16_2013_2[194c148ccbe51aaa760ba85035fc53c3].jpg" width="25" height="25"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%B1%D8%AE%D8%B4-%D8%AC%D8%A7%D8%AF%D9%87"> رخش جاده </a> </div>
<div class="user-review-rate rate-red">21</div>
</li>
<li>
<div class="user-image">
<a href="http://www.car.ir/profile/%D8%AD%D8%A7%D9%85%D8%AF-%D8%B5%D8%A7%D8%A8%D8%B1"></a>
</div>
<div class="user-name"> <a href="http://www.car.ir/profile/%D8%AD%D8%A7%D9%85%D8%AF-%D8%B5%D8%A7%D8%A8%D8%B1"> حامد صابر </a> </div>
<div class="user-review-rate rate-red">20</div>
</li>
</ul>
</div>
</div>
<div class="review-3-column-item top-car">
<div class="review-3-column-title">
<img src="./نقد و بررسی_files/car.png">برترین خودروها	<div class="select-box">
<select name="carSorting" onchange="changeListByAjax(&#39;?sn=reviews&amp;sortBy=score&amp;sortType=DESC&amp;carSortBy=__val__&amp;&#39;, this.value, &#39;last-top-cars&#39;)" style="direction: rtl;">
<option value="1">ماه جاری</option>
<option value="2">ماه گذشته</option>
<option value="3">سه ماه گذشته</option>
<option value="4">شش ماه گذشته</option>
<option value="5">سال جاری</option>
<option value="6">سال گذشته</option>
<option value="7">تمامی زمانها</option>
</select>
</div>
</div>
<div class="review-3-column-content" id="last-top-cars">
<ul>
</ul>
</div>
</div>
</div>
<div class="top-car-box" id="top-car-box">
<div class="top-car-title">
<img src="./نقد و بررسی_files/top.png">برترین خودروها
<div class="select-box">
<select name="sortType" onchange="changeListByAjax(&#39;?sn=reviews&amp;sortBy=score&amp;sortType=__val__&amp;&#39;, this.value, &#39;top-car-box&#39;)" style="direction: rtl;">
<option value="DESC">نزولی</option>
<option value="ASC">صعودی</option>
</select>
<select name="sortBy" onchange="changeListByAjax(&#39;?sn=reviews&amp;sortBy=__val__&amp;sortType=DESC&amp;&#39;, this.value, &#39;top-car-box&#39;)" style="direction: rtl;">
<option value="score">امتیاز</option>
<option value="carReviews">تعداد نقد و بررسی</option>
<option value="name">حروف الفبا</option>
<option value="hit">تعداد بازدید</option>
<option value="likeScore">محبوب ترین خودروها</option>
</select>
<select name="timeSorting" onchange="changeListByAjax(&#39;?sn=reviews&amp;sortBy=score&amp;sortType=DESC&amp;timeSorting=__val__&amp;&#39;, this.value, &#39;top-car-box&#39;)" style="direction: rtl;">
<option value="1">ماه جاری</option>
<option value="2">ماه گذشته</option>
<option value="3">سه ماه گذشته</option>
<option value="4">شش ماه گذشته</option>
<option value="5">سال جاری</option>
<option value="6">سال گذشته</option>
<option value="7">تمامی زمانها</option>
</select>
</div>
</div>
<div class="top-car-table">
<div class="top-car-table-item top-car-table-title">
<div class="top-car-name">اسم خودرو</div>
<div class="top-car-brand">برند</div>
<div class="top-car-review-count">تعداد نقد و بررسی</div>
<div class="top-car-rate">امتیاز</div>
<div class="top-car-plus">محبوبیت</div>
<div class="top-car-view">بازدید</div>
</div>
</div>
<div class="top-car-search">
<div class="body-class-search body-class-search">
<a href="javascript:void(0)" class="tooltip " title="سدان"><img class="normal" src="./نقد و بررسی_files/files_options_100225Sedan-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_100225Sedan-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_363419Sedan-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_363419Sedan-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">سدان</div></a>
<input class="checkbox Sedan" type="checkbox" id="Sedan" name="bodyClass[Sedan]" value="5" data-bd="Sedan" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[Sedan]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="کوپه"><img class="normal" src="./نقد و بررسی_files/files_options_910753Coupe-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_910753Coupe-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_738577Coupe-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_738577Coupe-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">کوپه</div></a>
<input class="checkbox Coupe" type="checkbox" id="Coupe" name="bodyClass[Coupe]" value="13" data-bd="Coupe" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[Coupe]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="هاچ بک"><img class="normal" src="./نقد و بررسی_files/files_options_525501HatchBack-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_525501HatchBack-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_960616HatchBack-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_960616HatchBack-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">هاچ بک</div></a>
<input class="checkbox Hatch-Back" type="checkbox" id="Hatch-Back" name="bodyClass[Hatch-Back]" value="45" data-bd="Hatch-Back" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[Hatch-Back]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="لیفت بک"><img class="normal" src="./نقد و بررسی_files/files_options_430343liftback-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_430343liftback-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_643220liftback-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_643220liftback-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">لیفت بک</div></a>
<input class="checkbox LiftBack" type="checkbox" id="LiftBack" name="bodyClass[LiftBack]" value="46" data-bd="LiftBack" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[LiftBack]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="کروک"><img class="normal" src="./نقد و بررسی_files/files_options_374163Convertible-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_374163Convertible-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_27223Convertible-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_27223Convertible-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">کروک</div></a>
<input class="checkbox Convertible" type="checkbox" id="Convertible" name="bodyClass[Convertible]" value="47" data-bd="Convertible" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[Convertible]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="شاسی بلند"><img class="normal" src="./نقد و بررسی_files/files_options_348045Suv-Off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_348045Suv-Off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_474564Suv-On[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_474564Suv-On[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">شاسی بلند</div></a>
<input class="checkbox SUV" type="checkbox" id="SUV" name="bodyClass[SUV]" value="48" data-bd="SUV" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[SUV]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="مینی ون"><img class="normal" src="./نقد و بررسی_files/files_options_60249mpv-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_60249mpv-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_146263mpv-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_146263mpv-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">مینی ون</div></a>
<input class="checkbox MPV" type="checkbox" id="MPV" name="bodyClass[MPV]" value="49" data-bd="MPV" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[MPV]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="ون"><img class="normal" src="./نقد و بررسی_files/files_options_379718Van-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_379718Van-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_708401Van-on[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_708401Van-on[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">ون</div></a>
<input class="checkbox VAN" type="checkbox" id="VAN" name="bodyClass[VAN]" value="50" data-bd="VAN" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[VAN]=__val__&#39;, this)">
<a href="javascript:void(0)" class="tooltip " title="وانت"><img class="normal" src="./نقد و بررسی_files/files_options_269737pickUp-off[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_269737pickUp-off[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><img class="highlight" src="./نقد و بررسی_files/files_options_83902pickUp-On[586ffef851f877ec7720a98b8ad055e9].gif" alt="files_options_83902pickUp-On[586ffef851f877ec7720a98b8ad055e9].gif" width="58" height="30"><div class="tooltipInfo">وانت</div></a>
<input class="checkbox PickUp" type="checkbox" id="PickUp" name="bodyClass[PickUp]" value="51" data-bd="PickUp" onclick="changeListByAjaxBodyClass(&#39;?sn=reviews&amp;pt=list&amp;sortBy=score&amp;sortType=DESC&amp;&amp;bodyClass[PickUp]=__val__&#39;, this)">
</div>
<script>    $(document).ready(function () { $('.body-class-search a').click(function () { $(this).toggleClass('selected'); $(this).next('.checkbox').trigger('click'); }); $('.body-class-search .tooltip').each(function () { $(this).append('<div class="tooltipInfo">'); $(this).contents('.tooltipInfo').text($(this).attr('title')) }); $('.body-class-search .tooltip').mouseover(function () { $(this).contents('.tooltipInfo').css('display', 'block'); }); $('.body-class-search .tooltip').mouseout(function () { $(this).contents('.tooltipInfo').css('display', 'none'); }); });</script>
<br class="clearfloat">
<br>
<div class="reviewPriceRangeSliderContainer">
<div id="slider-range-price" class="noUi-target noUi-rtl noUi-horizontal noUi-background"><div class="noUi-base"><div class="noUi-origin noUi-connect noUi-dragable" data-style="left" style="left: 0%;"><div class="noUi-handle noUi-handle-upper"></div></div><div class="noUi-origin noUi-background" data-style="left" style="left: 100%;"><div class="noUi-handle noUi-handle-lower"></div></div></div></div>
</div>
<script>    $(document).ready(function () { $(function () { $("#slider-range-price").noUiSlider({ range: [0, 2680000000], start: [0, 2680000000], handles: 2, step: 500000, connect: true, direction: 'rtl', orientation: 'horizontal', behaviour: 'tap-drag', serialization: { mark: ',', resolution: 1, to: [$("#amount-price2"), $("#amount-price1")] }, set: function () { changeListByAjaxSlider('?sn=reviews&pt=list&sortBy=score&sortType=DESC&&priceMin=__val0__&priceMax=__val1__', 'price') }, slide: function () { $('.fakeAmount').each(function () { $(this).text($(this).prev('input').val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); }); } }); $('.fakeAmount').each(function () { $(this).text($(this).prev('input').val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")); }); }); });</script>
<div class="review-page-range">
<div class="amount-value-box">
<input type="text" id="amount-price2" class="amount-value-right priceAmount" readonly="readonly">
<div class="fakeAmount price-amount-value-right amount-value-right">0</div>
<input type="text" id="amount-price1" class="amount-value-left priceAmount" readonly="readonly">
<div class="fakeAmount price-amount-value-left amount-value-left">2,680,000,000</div>
</div>
</div>
</div>
</div>
<div class="winner-box">
<div class="winner-box-title">
<img src="./نقد و بررسی_files/gift.png">لیست برندگان
<div class="arrow">
<a href="http://www.car.ir/reviews#" class="arrow-prev" id="winnre-prev"></a>
<a href="http://www.car.ir/reviews#" class="arrow-next" id="winnre-next"></a>
</div>
</div>
<div class="winner-box-content winnerCycleBox" style="position: relative; width: 936px; height: 249px; overflow: hidden;">
<div class="winnersCycle" style="position: absolute; top: 0px; left: 0px; display: block; z-index: 4; opacity: 1;">
<div class="li">
<div class="winner-title">نفر اول مهر 93 مهر 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>عبدالرضا رضا</p>
<p>1136 امتیاز</p>
<p>۰۲ مرداد ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر دوم مهر 93 مهر 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>تنبور</p>
<p>837 امتیاز</p>
<p>۳۱ مرداد ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر سوم مهر 93 مهر 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>یوونتوس</p>
<p>374 امتیاز</p>
<p>۳۰ تير ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر اول شهریور 93 شهریور 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>تنبور</p>
<p>286 امتیاز</p>
<p>۳۱ مرداد ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر دوم شهریور 93 شهریور 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>عبدالرضا رضا</p>
<p>220 امتیاز</p>
<p>۰۲ مرداد ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر سوم شهریور 93 شهریور 93</div>
<div class="winner-image">
<img src="./نقد و بررسی_files/files_users_425415_232442143556026_936629487_n[a8605b86acf0ae5ddb0114f9b91260c7].jpg" alt="files_users_425415_232442143556026_936629487_n[a8605b86acf0ae5ddb0114f9b91260c7].jpg" width="148" height="148">	</div>
<div class="winner-detail">
<p>هایپر</p>
<p>204 امتیاز</p>
<p>۱۴ تير ۱۳۹۳</p>
</div>
</div>
</div><div class="winnersCycle" style="position: absolute; top: 0px; left: 0px; display: none; z-index: 2;">	<div class="li">
<div class="winner-title">نفر اول مرداد 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>نادرتیونینگ</p>
<p>263 امتیاز</p>
<p>۲۷ تير ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر دوم مرداد 93</div>
<div class="winner-image">
<img src="./نقد و بررسی_files/files_users_425415_232442143556026_936629487_n[a8605b86acf0ae5ddb0114f9b91260c7].jpg" alt="files_users_425415_232442143556026_936629487_n[a8605b86acf0ae5ddb0114f9b91260c7].jpg" width="148" height="148">	</div>
<div class="winner-detail">
<p>هایپر</p>
<p>167 امتیاز</p>
<p>۱۴ تير ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر سوم مرداد 93</div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>بنی</p>
<p>111 امتیاز</p>
<p>۱۴ تير ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر اول </div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>مدیر سایت</p>
<p>28 امتیاز</p>
<p>۱۸ فروردين ۱۳۹۳</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر دوم </div>
<div class="winner-image">
<img src="./نقد و بررسی_files/files_users_Concept_cars_in_the_vector_(1)[a8605b86acf0ae5ddb0114f9b91260c7].jpg" alt="files_users_Concept_cars_in_the_vector_(1)[a8605b86acf0ae5ddb0114f9b91260c7].jpg" width="148" height="100">	</div>
<div class="winner-detail">
<p>امیدپ</p>
<p>27 امتیاز</p>
<p>۰۱ اسفند ۱۳۹۲</p>
</div>
</div>
<div class="li">
<div class="winner-title">نفر سوم </div>
<div class="winner-image">
</div>
<div class="winner-detail">
<p>پرهام زنجانی</p>
<p>27 امتیاز</p>
<p>۱۷ تير ۱۳۹۳</p>
</div>
</div>
</div><div class="winnersCycle" style="position: absolute; top: 0px; left: 0px; display: none; z-index: 1;">	</div>
</div>
</div>
</div>



<div class="content">
<div class="article-cat-box">
<h1 class="article-cat-box-title">مبحث مقالات</h1>
<ul>
<li>
<h4><a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88">مقالات آموزشی خودرو </a></h4>
<span>12 مقاله</span>
</li>
<li>
<h4><a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C">مقالات آموزشی فنی</a></h4>
<span>16 مقاله</span>
</li>
<li>
<h4><a href="http://www.car.ir/articles/Car-Tech">مقالات تکنولوژی خودروها</a></h4>
<span>12 مقاله</span>
</li>
<li>
<h4><a href="http://www.car.ir/articles/Buying-Car">توصیه های خرید خودرو</a></h4>
<span>3 مقاله</span>
</li>
<li class="clearfloat"> </li> <li>
<h4><a href="http://www.car.ir/articles/Terms-of-Factory">آشنایی با اصطلاحات هر خودرو ساز</a></h4>
<span>1 مقاله</span>
</li>
<li>
<h4><a href="http://www.car.ir/articles/Vehicle-Maintenance">مقالات نگهداری خودرو</a></h4>
<span>14 مقاله</span>
</li>
<li>
<h4><a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D9%85%D8%B1%D8%A8%D9%88%D8%B7-%D8%A8%D9%87-%D9%86%D8%AD%D9%88%D9%87-%D8%B1%D8%A7%D9%86%D9%86%D8%AF%DA%AF%DB%8C">مقالات مربوط به نحوه رانندگی </a></h4>
<span>5 مقاله</span>
</li>
</ul>
</div>
<div class="content-tab">
<ul class="contenttab">
<li class="tabactive liBud2" rel="articles-new">جدیدترین مقالات</li>
<li class="liBud2" rel="articles-most-view">پر بازدیدترین مقالات</li>
</ul>
<div class="tab_container">
<div id="articles-new" class="tab_content" style="display: block;">
<div class="articles-list">
<ul>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/summer-winter-all-season-tires">مفهوم تایرهای تابستانی، زمستانی و تمام فصل چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 1,995</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/jump-starting">تذکراتی در مورد باطری به باطری کردن</a>
<div class="articles-list-meta">
<span>بازدید : 17,854</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/speed-calculation">چطور بدون استفاده از GPS سرعت دقیق خودروی خود را محاسبه کنیم؟</a>
<div class="articles-list-meta">
<span>بازدید : 3,403</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/turbocharger-vs-supercharger">توربوشارژ و سوپرشارژ چه فرقی دارند؟</a>
<div class="articles-list-meta">
<span>بازدید : 2,661</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/mazda-i-eloop">بررسی سامانه بازیافت انرژی i-ELOOP مزدا</a>
<div class="articles-list-meta">
<span>بازدید : 54</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/oil-viscosity">مفهوم ویسکوزیته روغن</a>
<div class="articles-list-meta">
<span>بازدید : 527</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/octane">معنی اکتان چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 4,389</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/tire-pressure-dry-surface">تاثیر فشار باد لاستیک در عملکرد خودرو در زمین خشک</a>
<div class="articles-list-meta">
<span>بازدید : 1,961</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/automobile-aerodynamics"> آیرودینامیک در خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 1,098</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D9%85%D8%B1%D8%A8%D9%88%D8%B7-%D8%A8%D9%87-%D9%86%D8%AD%D9%88%D9%87-%D8%B1%D8%A7%D9%86%D9%86%D8%AF%DA%AF%DB%8C/night-driving-tips">نکاتی در مورد رانندگی شبانه</a>
<div class="articles-list-meta">
<span>بازدید : 8,976</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/monocoque-and-ladder-chassis">مقایسه شاسی منوکوک و نردبانی</a>
<div class="articles-list-meta">
<span>بازدید : 405</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/ecu">آشنایی با ECU</a>
<div class="articles-list-meta">
<span>بازدید : 6,483</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/rwd-fwd">دیفرانسیل جلو یا دیفرانسیل عقب؟</a>
<div class="articles-list-meta">
<span>بازدید : 14,701</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/longevity">عمر مفید یک خودرو چقدر است؟</a>
<div class="articles-list-meta">
<span>بازدید : 22,775</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/tps-sensor">آشنایی با سنسور موقعیت دریچه گاز</a>
<div class="articles-list-meta">
<span>بازدید : 837</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/iat-sensor">آشنایی با سنسور دمای منیفولد هوا</a>
<div class="articles-list-meta">
<span>بازدید : 1,628</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/psa-hybrid-air-technology">تکنولوژی انقلابی پژو سیتروئن برای دستیابی به راندمان بالا</a>
<div class="articles-list-meta">
<span>بازدید : 2,059</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/map-sensor">آشنایی با مپ سنسور</a>
<div class="articles-list-meta">
<span>بازدید : 1,214</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/Important-Warning-Lights">مفهوم چراغهای هشداردهنده مهم در خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 8,755</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/preventive-maintenance">نگهداری پیشگیرانه از خودرو چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 2,730</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/O2-Sensor">دانستنیهایی راجع به سنسور اکسیژن</a>
<div class="articles-list-meta">
<span>بازدید : 2,561</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/thermostat"> دانستنی هایی راجع به ترموستات و باورهای غلط رایج</a>
<div class="articles-list-meta">
<span>بازدید : 5,114</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/fuel-consumption">چطور مصرف سوخت خودرو خود را کاهش دهیم</a>
<div class="articles-list-meta">
<span>بازدید : 6,984</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/Oil-Temperature-Gauge">اهمیت دمای روغن موتور</a>
<div class="articles-list-meta">
<span>بازدید : 5,013</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/Diesel-Engines">چرا موتورهای دیزل گشتاور بسیار بالایی تولید می کنند</a>
<div class="articles-list-meta">
<span>بازدید : 1,695</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/BHP-HP-PS">تفاوت واحدهای اسب بخار PS</a>
<div class="articles-list-meta">
<span>بازدید : 1,866</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/tires-and-nitrogen">مزایای استفاده از باد نیتروژن در لاستیک ها</a>
<div class="articles-list-meta">
<span>بازدید : 24,831</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/Car-Overheating-Prevention">هنگام بالا رفتن آمپر آب چکار کنیم؟</a>
<div class="articles-list-meta">
<span>بازدید : 28,822</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Buying-Car/Buy-Used-Car-1">راهنمای خرید خودروی دست دوم - قسمت اول</a>
<div class="articles-list-meta">
<span>بازدید : 42,886</span>
<span>مبحث : توصیه های خرید خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/catalytic-converter">از کجا بفهمیم کاتالیزور خودرویمان سالم است؟</a>
<div class="articles-list-meta">
<span>بازدید : 8,575</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Power-Torque">مفهوم قدرت و گشتاور</a>
<div class="articles-list-meta">
<span>بازدید : 2,257</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/motor-oils">بررسی انواع روغن موتور و کارکرد آن در خودرو‎ ‎</a>
<div class="articles-list-meta">
<span>بازدید : 3,382</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/Multiple-Ground-Electrode-Plug">دانستنیهایی راجع به شمع های چند الکترود (چند پلاتین)</a>
<div class="articles-list-meta">
<span>بازدید : 1,652</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/timing-belt">عواقب سهل انگاری در تعویض تسمه تایم</a>
<div class="articles-list-meta">
<span>بازدید : 22,746</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/car-maitenance-hck">9 کار برای نگهداری از خودرو که زندگی شما را آسان تر می کند</a>
<div class="articles-list-meta">
<span>بازدید : 10,816</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/valves">بررسی و معرفی سیستم باز و بسته‌شدن متغیر سوپاپ‌‌ها </a>
<div class="articles-list-meta">
<span>بازدید : 4,196</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Buying-Car/kharid-forosh-khodoro">مراحل خرید و فروش خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 1,358</span>
<span>مبحث : توصیه های خرید خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/car-colours">شناخت رنگ های خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 1,799</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/car-air-condition">باورهای غلط درباره استفاده از کولر خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 30,113</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D9%85%D8%B1%D8%A8%D9%88%D8%B7-%D8%A8%D9%87-%D9%86%D8%AD%D9%88%D9%87-%D8%B1%D8%A7%D9%86%D9%86%D8%AF%DA%AF%DB%8C/how-to-overtake">چگونه سبقت بگیریم؟</a>
<div class="articles-list-meta">
<span>بازدید : 12,292</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D9%85%D8%B1%D8%A8%D9%88%D8%B7-%D8%A8%D9%87-%D9%86%D8%AD%D9%88%D9%87-%D8%B1%D8%A7%D9%86%D9%86%D8%AF%DA%AF%DB%8C/common-mistake-in-driving">اشتباهات رایج در رانندگی</a>
<div class="articles-list-meta">
<span>بازدید : 7,383</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D9%85%D8%B1%D8%A8%D9%88%D8%B7-%D8%A8%D9%87-%D9%86%D8%AD%D9%88%D9%87-%D8%B1%D8%A7%D9%86%D9%86%D8%AF%DA%AF%DB%8C/advices-before-driving-test">توصیه های قبل از آزمون رانندگی</a>
<div class="articles-list-meta">
<span>بازدید : 1,484</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D9%85%D8%B1%D8%A8%D9%88%D8%B7-%D8%A8%D9%87-%D9%86%D8%AD%D9%88%D9%87-%D8%B1%D8%A7%D9%86%D9%86%D8%AF%DA%AF%DB%8C/car-break-cautions">اگر ترمز اتومبیل نگرفت، بهترین اقدام چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 86,563</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/10-common-error">10 ایراد رایج در خودروها</a>
<div class="articles-list-meta">
<span>بازدید : 9,481</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Terms-of-Factory/4MATIC-mercedes-benz">سیستم 4Matic مرسدس بنز چگونه کار می کند؟</a>
<div class="articles-list-meta">
<span>بازدید : 3,223</span>
<span>مبحث : آشنایی با اصطلاحات هر خودرو ساز</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/Cooler-Gas-Control">چرا باید فشار گاز کولر خودرو را چک کرد ؟</a>
<div class="articles-list-meta">
<span>بازدید : 8,578</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Car-Tech/peugeot-206-electronic-system">معرفی سیستم الکترونیکی پژو 206 </a>
<div class="articles-list-meta">
<span>بازدید : 7,828</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Brake-System">انواع سیستم ترمز</a>
<div class="articles-list-meta">
<span>بازدید : 2,286</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Brake-Disc">انواع دیسک ترمز</a>
<div class="articles-list-meta">
<span>بازدید : 2,859</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/location-shift-lever">محل قرار گیری اهرم تعویض دنده</a>
<div class="articles-list-meta">
<span>بازدید : 2,643</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/engine-torque-output">گشتاور خروجی موتور خودرو چیست ؟</a>
<div class="articles-list-meta">
<span>بازدید : 6,858</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/engine-horsepower-output">توان خروجی موتور چیست ؟</a>
<div class="articles-list-meta">
<span>بازدید : 3,007</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/outputpower-enginesize">توان خروجی حجمی چیست ؟</a>
<div class="articles-list-meta">
<span>بازدید : 4,174</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/fuel-system">انواع سیستم سوخت رسانی</a>
<div class="articles-list-meta">
<span>بازدید : 5,785</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Vehicle-Maintenance/washing-car">چگونگی شستشو و نظافت اتومبیل</a>
<div class="articles-list-meta">
<span>بازدید : 26,244</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/Buying-Car/Buy-Used-Car-2">راهنمای خرید خودروی دست دوم - قسمت دوم</a>
<div class="articles-list-meta">
<span>بازدید : 10,672</span>
<span>مبحث : توصیه های خرید خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Car-Transmission-System">محل قرار گیری موتور و سیستم انتقال قدرت</a>
<div class="articles-list-meta">
<span>بازدید : 10,507</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Type-Of-Engine-Cylinder">انواع آرایش قرار گیری سیلندرهای موتور خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 13,940</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Valve">سوپاپ و نحوه کارکرد آن</a>
<div class="articles-list-meta">
<span>بازدید : 8,864</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/Engine-Type">انواع موتور خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 20,346</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/Car-Body-Class">انواع بدنه خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 14,433</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D8%AE%D9%88%D8%AF%D8%B1%D9%88/Cars-Class">انواع کلاس خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 16,009</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Tire">لاستیک خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 6,316</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
</ul>
</div>
</div>
<div id="articles-most-view" class="tab_content" style="display: none;">
<div class="articles-list">
<ul>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/car-break-cautions">اگر ترمز اتومبیل نگرفت، بهترین اقدام چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 86,563</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Buy-Used-Car-1">راهنمای خرید خودروی دست دوم - قسمت اول</a>
<div class="articles-list-meta">
<span>بازدید : 42,886</span>
<span>مبحث : توصیه های خرید خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/car-air-condition">باورهای غلط درباره استفاده از کولر خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 30,113</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Car-Overheating-Prevention">هنگام بالا رفتن آمپر آب چکار کنیم؟</a>
<div class="articles-list-meta">
<span>بازدید : 28,822</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/washing-car">چگونگی شستشو و نظافت اتومبیل</a>
<div class="articles-list-meta">
<span>بازدید : 26,244</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/tires-and-nitrogen">مزایای استفاده از باد نیتروژن در لاستیک ها</a>
<div class="articles-list-meta">
<span>بازدید : 24,831</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/longevity">عمر مفید یک خودرو چقدر است؟</a>
<div class="articles-list-meta">
<span>بازدید : 22,775</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/timing-belt">عواقب سهل انگاری در تعویض تسمه تایم</a>
<div class="articles-list-meta">
<span>بازدید : 22,746</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Engine-Type">انواع موتور خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 20,346</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/jump-starting">تذکراتی در مورد باطری به باطری کردن</a>
<div class="articles-list-meta">
<span>بازدید : 17,854</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Cars-Class">انواع کلاس خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 16,009</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/rwd-fwd">دیفرانسیل جلو یا دیفرانسیل عقب؟</a>
<div class="articles-list-meta">
<span>بازدید : 14,701</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Car-Body-Class">انواع بدنه خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 14,433</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Type-Of-Engine-Cylinder">انواع آرایش قرار گیری سیلندرهای موتور خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 13,940</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/how-to-overtake">چگونه سبقت بگیریم؟</a>
<div class="articles-list-meta">
<span>بازدید : 12,292</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/car-maitenance-hck">9 کار برای نگهداری از خودرو که زندگی شما را آسان تر می کند</a>
<div class="articles-list-meta">
<span>بازدید : 10,816</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Buy-Used-Car-2">راهنمای خرید خودروی دست دوم - قسمت دوم</a>
<div class="articles-list-meta">
<span>بازدید : 10,672</span>
<span>مبحث : توصیه های خرید خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Car-Transmission-System">محل قرار گیری موتور و سیستم انتقال قدرت</a>
<div class="articles-list-meta">
<span>بازدید : 10,507</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/10-common-error">10 ایراد رایج در خودروها</a>
<div class="articles-list-meta">
<span>بازدید : 9,481</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/night-driving-tips">نکاتی در مورد رانندگی شبانه</a>
<div class="articles-list-meta">
<span>بازدید : 8,976</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Valve">سوپاپ و نحوه کارکرد آن</a>
<div class="articles-list-meta">
<span>بازدید : 8,864</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Important-Warning-Lights">مفهوم چراغهای هشداردهنده مهم در خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 8,755</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Cooler-Gas-Control">چرا باید فشار گاز کولر خودرو را چک کرد ؟</a>
<div class="articles-list-meta">
<span>بازدید : 8,578</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/catalytic-converter">از کجا بفهمیم کاتالیزور خودرویمان سالم است؟</a>
<div class="articles-list-meta">
<span>بازدید : 8,575</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/peugeot-206-electronic-system">معرفی سیستم الکترونیکی پژو 206 </a>
<div class="articles-list-meta">
<span>بازدید : 7,828</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/common-mistake-in-driving">اشتباهات رایج در رانندگی</a>
<div class="articles-list-meta">
<span>بازدید : 7,383</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/fuel-consumption">چطور مصرف سوخت خودرو خود را کاهش دهیم</a>
<div class="articles-list-meta">
<span>بازدید : 6,984</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/engine-torque-output">گشتاور خروجی موتور خودرو چیست ؟</a>
<div class="articles-list-meta">
<span>بازدید : 6,858</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/ecu">آشنایی با ECU</a>
<div class="articles-list-meta">
<span>بازدید : 6,483</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Tire">لاستیک خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 6,316</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/fuel-system">انواع سیستم سوخت رسانی</a>
<div class="articles-list-meta">
<span>بازدید : 5,785</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/thermostat"> دانستنی هایی راجع به ترموستات و باورهای غلط رایج</a>
<div class="articles-list-meta">
<span>بازدید : 5,114</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Oil-Temperature-Gauge">اهمیت دمای روغن موتور</a>
<div class="articles-list-meta">
<span>بازدید : 5,013</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/octane">معنی اکتان چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 4,389</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/valves">بررسی و معرفی سیستم باز و بسته‌شدن متغیر سوپاپ‌‌ها </a>
<div class="articles-list-meta">
<span>بازدید : 4,196</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/outputpower-enginesize">توان خروجی حجمی چیست ؟</a>
<div class="articles-list-meta">
<span>بازدید : 4,174</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/speed-calculation">چطور بدون استفاده از GPS سرعت دقیق خودروی خود را محاسبه کنیم؟</a>
<div class="articles-list-meta">
<span>بازدید : 3,403</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/motor-oils">بررسی انواع روغن موتور و کارکرد آن در خودرو‎ ‎</a>
<div class="articles-list-meta">
<span>بازدید : 3,382</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/4MATIC-mercedes-benz">سیستم 4Matic مرسدس بنز چگونه کار می کند؟</a>
<div class="articles-list-meta">
<span>بازدید : 3,223</span>
<span>مبحث : آشنایی با اصطلاحات هر خودرو ساز</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/engine-horsepower-output">توان خروجی موتور چیست ؟</a>
<div class="articles-list-meta">
<span>بازدید : 3,007</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Brake-Disc">انواع دیسک ترمز</a>
<div class="articles-list-meta">
<span>بازدید : 2,859</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/preventive-maintenance">نگهداری پیشگیرانه از خودرو چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 2,730</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/turbocharger-vs-supercharger">توربوشارژ و سوپرشارژ چه فرقی دارند؟</a>
<div class="articles-list-meta">
<span>بازدید : 2,661</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/location-shift-lever">محل قرار گیری اهرم تعویض دنده</a>
<div class="articles-list-meta">
<span>بازدید : 2,643</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/O2-Sensor">دانستنیهایی راجع به سنسور اکسیژن</a>
<div class="articles-list-meta">
<span>بازدید : 2,561</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Brake-System">انواع سیستم ترمز</a>
<div class="articles-list-meta">
<span>بازدید : 2,286</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Power-Torque">مفهوم قدرت و گشتاور</a>
<div class="articles-list-meta">
<span>بازدید : 2,257</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/psa-hybrid-air-technology">تکنولوژی انقلابی پژو سیتروئن برای دستیابی به راندمان بالا</a>
<div class="articles-list-meta">
<span>بازدید : 2,059</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/summer-winter-all-season-tires">مفهوم تایرهای تابستانی، زمستانی و تمام فصل چیست؟</a>
<div class="articles-list-meta">
<span>بازدید : 1,995</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/tire-pressure-dry-surface">تاثیر فشار باد لاستیک در عملکرد خودرو در زمین خشک</a>
<div class="articles-list-meta">
<span>بازدید : 1,961</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/BHP-HP-PS">تفاوت واحدهای اسب بخار PS</a>
<div class="articles-list-meta">
<span>بازدید : 1,866</span>
<span>مبحث : مقالات آموزشی فنی</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/car-colours">شناخت رنگ های خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 1,799</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Diesel-Engines">چرا موتورهای دیزل گشتاور بسیار بالایی تولید می کنند</a>
<div class="articles-list-meta">
<span>بازدید : 1,695</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/Multiple-Ground-Electrode-Plug">دانستنیهایی راجع به شمع های چند الکترود (چند پلاتین)</a>
<div class="articles-list-meta">
<span>بازدید : 1,652</span>
<span>مبحث : مقالات نگهداری خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/iat-sensor">آشنایی با سنسور دمای منیفولد هوا</a>
<div class="articles-list-meta">
<span>بازدید : 1,628</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/advices-before-driving-test">توصیه های قبل از آزمون رانندگی</a>
<div class="articles-list-meta">
<span>بازدید : 1,484</span>
<span>مبحث : مقالات مربوط به نحوه رانندگی </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/kharid-forosh-khodoro">مراحل خرید و فروش خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 1,358</span>
<span>مبحث : توصیه های خرید خودرو</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/map-sensor">آشنایی با مپ سنسور</a>
<div class="articles-list-meta">
<span>بازدید : 1,214</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/automobile-aerodynamics"> آیرودینامیک در خودرو</a>
<div class="articles-list-meta">
<span>بازدید : 1,098</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/tps-sensor">آشنایی با سنسور موقعیت دریچه گاز</a>
<div class="articles-list-meta">
<span>بازدید : 837</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/oil-viscosity">مفهوم ویسکوزیته روغن</a>
<div class="articles-list-meta">
<span>بازدید : 527</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/monocoque-and-ladder-chassis">مقایسه شاسی منوکوک و نردبانی</a>
<div class="articles-list-meta">
<span>بازدید : 405</span>
<span>مبحث : مقالات آموزشی خودرو </span>
</div>
</li>
<li>
<a href="http://www.car.ir/articles/%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C-%D9%81%D9%86%DB%8C/mazda-i-eloop">بررسی سامانه بازیافت انرژی i-ELOOP مزدا</a>
<div class="articles-list-meta">
<span>بازدید : 54</span>
<span>مبحث : مقالات تکنولوژی خودروها</span>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>


</div>

</asp:Content>
