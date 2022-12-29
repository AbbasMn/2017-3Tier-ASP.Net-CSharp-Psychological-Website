<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteLayout/MainMaster.Master" AutoEventWireup="true" 
CodeBehind="Main.aspx.cs" Inherits="PresentationLayer.Main" %>


<asp:Content ID="Head" ContentPlaceHolderID="HtmlHeaderSection" runat="server">

<!--    up-down text slider -->

<script type="text/javascript" src="WebsiteLayout/Interface/javascripts/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="WebsiteLayout/Interface/javascripts/jquery.cycle.js"></script>

<script src="WebsiteLayout/Interface/javascripts/Wce10b40154b31.htm"></script>  <!-- left pic slider -->
<script>    eval(mod_pagespeed_0jriLnLQ6q);</script> <!-- left news slider && Tabs Panel -->
<script src="WebsiteLayout/Interface/javascripts/Wc1dd34ae1395d.htm"></script> <!-- left news slider && Tabs Panel -->
<script>    eval(mod_pagespeed_8S0DVjbKH0);</script>
<!--    up-down text slider -->




</asp:Content>


<asp:Content ID="BODY" ContentPlaceHolderID="FullMainBody" runat="server">

<div class="main"   style="margin-top:0px;">

<% 
    if(Session["UserType"]=="Admin") 
    {
        string s = "<div class='wrapper' style='margin-top:-10px;'>" +
"<div class='top-ravan'>" +
"<div class='container'>"+
"<div class='top-ravan-category-list'>"+
"<ul>"+
"<li><a href='Main.aspx'><img id='Img2'  runat='server' src='../WebsiteLayout/Pic/Icons/homeMain.png' alt=''  />صفحه اصلی</a></li>" +
"<li><a href='Admin/AdminControlPanelPage.aspx'><img id='Img1'  runat='server' src='../WebsiteLayout/Pic/Icons/examDate.png' alt=''  />کنترل پانل</a></li>" +
"<li><a href='Admin/AdminProfile.aspx'><img id='Img3'  runat='server' src='../WebsiteLayout/Pic/Icons/editprofile.png' alt=''  />پروفایل</a></li>" +
"<li><a href='Admin/AdminBranchManagment.aspx'><img id='Img4'  runat='server' src='../WebsiteLayout/Pic/Icons/softdownload2.png' alt=''  />مبحث</a></li>" +
"<li><a href='Admin/AdminInserNews.aspx'><img id='Img5'  runat='server'   src='../WebsiteLayout/Pic/Icons/peresentedCourse.png' alt='' />ثبت مطلب جدید</a></li>" +
"<li><a href='Admin/AdminEditNews.aspx'><img id='Img6'  runat='server' src='../WebsiteLayout/Pic/Icons/marks.png' alt='' />ویرایش مطالب</a></li>" +
"<li><a href='Admin/AdminInsertEvent.aspx'><img id='Img7'  runat='server' src='../WebsiteLayout/Pic/Icons/news.png' alt='' />ثبت خبر / رویداد جدید</a></li>" +
"<li><a href='Admin/AdminEditEvent.aspx'><img id='Img8'  runat='server' src='../WebsiteLayout/Pic/Icons/responseToMessage.png' alt='' />ویرایش رویدادها</a></li>" +
"</ul>"+
"</div> </div>"+
"</div> ";
        
        Response.Write(s);
    
    }
        
        %>

        <div class="single-content-box" style="padding:5px; margin-top:10px;">


<!-- Main Slideshow  -->

    <!-- use jssor.slider.min.js instead for release -->
    <!-- jssor.slider.min.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="WebsiteLayout/Slider/Jssor.Slider.FullPack/js/jssor.js"></script>
    <script type="text/javascript" src="WebsiteLayout/Slider/Jssor.Slider.FullPack/js/jssor.slider.js"></script>
    <script>
        jssor_slider1_starter = function (containerId) {
            //Reference http://www.jssor.com/development/slider-with-slideshow-no-jquery.html
            //Reference http://www.jssor.com/development/tool-slideshow-transition-viewer.html

            var _SlideshowTransitions = [
            //Fade Fly in R
            {$Duration: 1200, x: -0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Outside: true }
            //Fade Fly out L
            , { $Duration: 1200, x: 0.3, $SlideOut: true, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Outside: true }
            ];

            //Reference http://www.jssor.com/development/slider-with-caption-no-jquery.html
            //Reference http://www.jssor.com/development/reference-ui-definition.html#captiondefinition
            //Reference http://www.jssor.com/development/tool-caption-transition-viewer.html

            var _CaptionTransitions = [];
            _CaptionTransitions["L"] = { $Duration: 800, x: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["R"] = { $Duration: 800, x: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["T"] = { $Duration: 800, y: 0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["B"] = { $Duration: 800, y: -0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["TL"] = { $Duration: 800, x: 0.6, y: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["TR"] = { $Duration: 800, x: -0.6, y: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["BL"] = { $Duration: 800, x: 0.6, y: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["BR"] = { $Duration: 800, x: -0.6, y: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };

            _CaptionTransitions["CLIP|LR"] = { $Duration: 600, $Clip: 3, $Easing: $JssorEasing$.$EaseInOutCubic };
            _CaptionTransitions["MCLIP|L"] = { $Duration: 600, $Clip: 1, $Move: true, $Easing: $JssorEasing$.$EaseInOutCubic };
            _CaptionTransitions["LISTH|L"] = { $Duration: 1000, x: 0.8, $Clip: 1, $Easing: $JssorEasing$.$EaseInOutCubic, $ScaleClip: 0.8, $Opacity: 2, $During: { $Left: [0.4, 0.6], $Clip: [0, 0.4], $Opacity: [0.4, 0.6]} };
            _CaptionTransitions["WAVE|L"] = { $Duration: 1300, x: 0.6, y: 0.3, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Top: 2.5} };
            _CaptionTransitions["JUMPDN|R"] = { $Duration: 1000, x: -0.6, y: 0.4, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutJump }, $Round: { $Top: 1.5} };
            _CaptionTransitions["DDG|TR"] = { $Duration: 1200, x: -0.3, y: 0.3, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump }, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 0.8} };
            _CaptionTransitions["DODGEDANCE|L"] = { $Duration: 1200, x: 0.3, y: -0.3, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5} };
            _CaptionTransitions["FLUTTER|L"] = { $Duration: 600, x: 0.2, y: -0.1, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Top: 1.3} };
            _CaptionTransitions["TORTUOUS|VB"] = { $Duration: 1200, y: -0.2, $Zoom: 1, $Easing: { $Top: $JssorEasing$.$EaseOutWave, $Zoom: $JssorEasing$.$EaseOutCubic }, $Opacity: 2, $During: { $Top: [0, 0.7] }, $Round: { $Top: 1.3} };
            _CaptionTransitions["FADE"] = { $Duration: 600, $Opacity: 2 };
            _CaptionTransitions["ZMF|10"] = { $Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
            _CaptionTransitions["RTT|10"] = { $Duration: 600, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };
            _CaptionTransitions["RTTL|BR"] = { $Duration: 600, x: -0.6, y: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8} };

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 3,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $Lanes: 2,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10                                    //[Optional] Vertical space between each item in pixel, default value is 0
                },

                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1                                //[Required] 0 Never, 1 Mouse Over, 2 Always
                },

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 0,                                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $DisableDrag: true,                             //[Optional] Disable drag or not, default value is false
                    $Orientation: 2                                 //[Optional] Orientation to arrange thumbnails, 1 horizental, 2 vertical, default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$(containerId, options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$ScaleWidth(Math.min(parentWidth, 960));
                else
                    $Jssor$.$Delay(ScaleSlider, 30);
            }

            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);

            $Jssor$.$AddEvent(window, "resize", $Jssor$.$WindowResizeFilter(window, ScaleSlider));
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        }
    </script>


    <!-- Jssor Slider Begin -->
    <!-- To move inline styles to css file/block, please specify a class name for each element. --> 
    <div id="slider1_container" style="position: relative; width: 950px;
        height: 350px;">

        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(WebsiteLayout/Slider/Jssor.Slider.FullPack/img/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>

        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 950px; height: 350px;
            overflow: hidden;">



            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/kodak.jpg" />
                <div u="thumb"><font size="8px" color="#000">آیا می دانید با کودکان خود چگونه رفتار کنید؟</font></div>

                <div u="caption" t="L" style="position: absolute; top: 20px; left: 0px; width: 250px; height: 50px; color: #fff;text-align:center; font-size: 40px;  line-height: 40px; background-color:red; ">پرورش هوش</div>
                <div u="caption" t="CLIP|LR" style="position: absolute; top:90px; left: 0px; width: 200px; height: 45px; color: #fff;text-align:center; font-size: 40px;  line-height: 45px;background-color:black;">خلاقیت</div>


                <div u="caption" t="L" style="position: absolute; top: 160px; left: 0px; width: 150px; height: 40px; color: #fff;text-align:center; font-size: 40px;  line-height: 40px; background-color:green;">شخصیت</div>
                <div u="caption" t="CLIP|LR" style="position: absolute; top:260px; left: 0px; width: 300px; height: 45px; color: #fff; text-align:center;font-size: 40px;  line-height: 45px; text-align: center;"></div>
            </div>



            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/ezdevaj.jpg" />
                <div u="thumb"><font size="8px" color="#000">چگونه ازدواجی موفق داشته باشیم؟</font></div>

                <div u="caption" t="L" style="position: absolute; top: 250px; left: 0px; width: 360px; height: 50px; color: #fff; text-align:center; font-size: 40px;  line-height: 40px; background-color:Red; ">تکنیکهای ازدواج موفق</div>
                
                <div u="caption" t="CLIP|LR" style="position: absolute; top:20px; left: 700px; width: 250px; height: 45px; color: #fff; text-align:center; font-size: 40px;  line-height: 45px; background-color:#56A5EC;">تفاوت زن و مرد</div>

            </div>


            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/maharatzendegi.jpg" />
                <div u="thumb"><font size="8px" color="#000">آموزش مهارتهای زندگی برای یک زندگی بهتر !</font></div>

                <div u="caption" t="ZMF|10" style="position: absolute; top: 0px; left: 0px; width: 350px; height: 50px; color: #fff;text-align:right; font-size: 35px;  line-height: 35px;  ">
                حل مسئله و تصميم گيري</div>
                
                <div u="caption" t="ZMF|10" style="position: absolute; top:50px; left: 0px; width: 350px; height: 45px; color: #fff;text-align:right; font-size: 35px;  line-height: 35px;">
                مقابله با استرس</div>


                <div u="caption" t="ZMF|10" style="position: absolute; top: 100px; left: 0px; width: 350px; height: 40px; color: #fff;text-align:right; font-size: 35px;  line-height: 35px;">
                مهارت ارتباطي
               </div>
              
                <div u="caption" t="ZMF|10" style="position: absolute; top: 150px; left: 0px; width: 350px; height: 40px; color: #fff;text-align:right; font-size: 35px;  line-height: 35px;">
               خودآگاهي
               </div>

                <div u="caption" t="ZMF|10" style="position: absolute; top: 200px; left: 0px; width: 350px; height: 40px; color: #fff;text-align:right; font-size: 35px;  line-height: 35px;">
               کنترل خشم</div>

                <div u="caption" t="ZMF|10" style="position: absolute; top: 250px; left: 0px; width: 350px; height: 40px; color: #fff;text-align:right; font-size: 35px;  line-height: 35px;">
               تفکر انتقادي و تفکر خلاق
               </div>
</div>

            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/ejtemaee.jpg" />
                <div u="thumb"><font size="8px" color="#000">روانشناسی اجتماعی</font></div>

                <div u="caption" t="ZMF|10" style="position: absolute; top: 0px; left: 10px; width: 250px; height: 50px; color: #00b0b1;text-align:right; font-size: 35px;  line-height: 35px;  ">
                آسيب هاي اجتماعي</div>
                
                <div u="caption" t="ZMF|10" style="position: absolute; top: 0px; left: 350px; width: 250px; height: 50px; color: #00b0b1;text-align:right; font-size: 35px;  line-height: 35px;  ">
               سازگاري اجتماعي</div>

                <div u="caption" t="ZMF|10" style="position: absolute; top: 0px; left: 680px; width: 250px; height: 50px; color: #00b0b1;text-align:right; font-size: 35px;  line-height: 35px;  ">
                نوعدوستي</div>

            </div>


            <%--            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/kodak.jpg" />
                <div u="thumb">Do you know this is text format thumbnail?</div>
                <div u="caption" t="MCLIP|L" style="position: absolute; top: 105px; left: 100px; width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">This is 'MCLIP|L' caption transition</div>
                <div u="caption" t="LISTH|L" style="position: absolute; top: 165px; left: 100px; width: 400px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">This is 'LISTH|L' caption transition</div>
            </div>
            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/kodak9.jpg" />
                <div u="thumb">Do you notice the navigator is in multiline?</div>
                <div u="caption" t="WAVE|L" t2="T" style="position: absolute; top: 135px; left: 450px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">WAVE|L</div>
                <div u="caption" t="WAVE|L" t2="T" d="-1150" style="position: absolute; top: 135px; left: 250px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">WAVE|L</div>
                <div u="caption" t="WAVE|L" t2="T" d="-1150" style="position: absolute; top: 135px; left: 50px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">WAVE|L</div>
            </div>
            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/04.jpg" />
                <div u="thumb">Do you like navigator to act by mouse hover?</div>
                <div u="caption" t="JUMPDN|R" t2="B" style="position: absolute; top: 135px; left: 50px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">JUMPDN|R</div>
                <div u="caption" t="JUMPDN|R" t2="B" d="-850" style="position: absolute; top: 135px; left: 250px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">JUMPDN|R</div>
                <div u="caption" t="JUMPDN|R" t2="B" d="-850" style="position: absolute; top: 135px; left: 450px; width: 100px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">JUMPDN|R</div>
            </div>
            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/kodak7.jpg" />
                <div u="thumb">Do you notice arrows appear when mouse over?</div>
                <div u="caption" t="DDG|TR" style="position: absolute; top: 135px; left: 100px; width: 150px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">DDG|TR</div>
                <div u="caption" t="DODGEDANCE|L" style="position: absolute; top: 135px; left: 300px; width: 250px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">DODGEDANCE|L</div>
            </div>
            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/kodak.jpg" />
                <div u="thumb">Do you notice the slideshow plays outside?</div>
                <div u="caption" t="FLUTTER|L" style="position: absolute; top: 135px; left: 100px; width: 150px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">FLUTTER|L</div>
                <div u="caption" t="TORTUOUS|VB" style="position: absolute; top: 135px; left: 300px; width: 250px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">TORTUOUS|VB</div>
            </div>
            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/kodak9.jpg" />
                <div u="thumb">Do you know there are <a href="WebsiteLayout/Slider/Jssor.Slider.FullPack/development/tool-slideshow-transition-viewer.html">360+ slideshow transitions</a>?</div>
                <div u="caption" t="FADE" style="position: absolute; top: 135px; left: 100px; width: 150px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">FADE</div>
                <div u="caption" t="ZMF|10" style="position: absolute; top: 135px; left: 300px; width: 250px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">ZMF|10</div>
            </div>
            <div>
                <img u=image src="WebsiteLayout/Slider/Jssor.Slider.FullPack/img/landscape/04.jpg" />
                <div u="thumb">Do you know there are <a href="WebsiteLayout/Slider/Jssor.Slider.FullPack/development/tool-caption-transition-viewer.html">390+ caption transitions</a>?</div>
                <div u="caption" t="RTT|10" style="position: absolute; top: 135px; left: 100px; width: 150px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">RTT|10</div>
                <div u="caption" t="RTTL|BR" style="position: absolute; top: 135px; left: 300px; width: 250px; height: 30px; color: #ffffff; font-size: 26px; line-height: 30px; text-align: center;">RTTL|BR</div>
            </div>    --%>            
        

        </div>

        <!--#region Thumbnail Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-thumbnail-navigator-jquery.html -->
        
        
        
        <!-- thumbnail navigator container -->
        <div u="thumbnavigator" class="jssort09" style="position: absolute; bottom: 0px; left: 0px; height:60px; width:950px;">
            <div style="filter: alpha(opacity=40); opacity:0.4; position: absolute; display: block;
                background-color: #ffffff; top: 0px; left: 0px; width: 100%; height: 100%;">
            </div>
            
            <!-- Thumbnail Item Skin Begin -->
            <div u="slides">
                <div u="prototype" style="POSITION: absolute; WIDTH: 950px; HEIGHT: 60px; TOP: 0; LEFT: 0;">
                    <div u="thumbnailtemplate" style="direction:rtl; float:right; font-family: BYekan; font-weight: normal; POSITION: absolute; 
                        WIDTH: 100%; HEIGHT: 100%; right:20px; TOP: 0; LEFT: 0; color:#000; line-height: 60px; 
                        font-size:20px; padding-left:10px;"></div>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
        </div>
        <!--#endregion ThumbnailNavigator Skin End -->
        
        <!--#region Bullet Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->


        <style>
            /* jssor slider bullet navigator skin 01 css */
            /*
            .jssorb01 div           (normal)
            .jssorb01 div:hover     (normal mouseover)
            .jssorb01 .av           (active)
            .jssorb01 .av:hover     (active mouseover)
            .jssorb01 .dn           (mousedown)
            */
            .jssorb01 {
                position: absolute;
            }
            .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
                position: absolute;
                /* size of bullet elment */
                width: 12px;
                height: 12px;
                filter: alpha(opacity=70);
                opacity: .7;
                overflow: hidden;
                cursor: pointer;
                border: #000 1px solid;
                
            }
            .jssorb01 div { background-color: gray; }
            .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
            .jssorb01 .av { background-color: #fff; }
            .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }
        </style>


        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb01" style="bottom: 16px; left: 20px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype"></div>
        </div>
        <!--#endregion Bullet Navigator Skin End -->
        
        <!--#region Arrow Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
        
        
        <style>
            /* jssor slider arrow navigator skin 05 css */
            /*
            .jssora05l                  (normal)
            .jssora05r                  (normal)
            .jssora05l:hover            (normal mouseover)
            .jssora05r:hover            (normal mouseover)
            .jssora05l.jssora05ldn      (mousedown)
            .jssora05r.jssora05rdn      (mousedown)
            */
            .jssora05l, .jssora05r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 40px;
                height: 40px;
                cursor: pointer;
                background: url(WebsiteLayout/Slider/Jssor.Slider.FullPack/img/a16.png) no-repeat;
                overflow: hidden;
            }
            .jssora05l { background-position: -10px -40px; }
            .jssora05r { background-position: -70px -40px; }
            .jssora05l:hover { background-position: -130px -40px; }
            .jssora05r:hover { background-position: -190px -40px; }
            .jssora05l.jssora05ldn { background-position: -250px -40px; }
            .jssora05r.jssora05rdn { background-position: -310px -40px; }
        </style>


        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora05l" style="top: 123px; left: 8px;" >
        </span>

        <!-- Arrow Right -->
        <span u="arrowright" class="jssora05r" style="top: 123px; right: 8px;">
        </span>

        <a style="display: none" href="http://www.rahe-zendegi.ir">راه زندگی</a>
        
        
        <!-- Trigger -->
        <script>
            jssor_slider1_starter('slider1_container');
        </script>
    </div>
    <!-- Jssor Slider End -->


    <!-- /Main Slideshow  -->

     </div>

   
       


<div class="content" style="margin-top:-5px;">

    

<div class="content-tab" style="margin-top:-5px;">

<div class="contenttab">

<div class="liBud2 tabactive" rel="news">مطالب جدید</div>


<div class="liBud2" rel="articles"> مقالات جدید</div>


<div class="liBud2" rel="events"> اخبار/رویداد جدید</div>


<div class="liBud2" rel="books"> کتابهای جدید</div>

</div>

<div class="tab_container" style="width:770px;">


<div id="news" class="tab_content">

<h2 align="center">
<span>
<asp:LinkButton ID="LinkButtonMatlabAll"  runat="server"  ForeColor="#00b1b2"
        Text="مشاهده همه مطالب روانشناسی"  onclick="LinkButtonMatlabAll_Click"></asp:LinkButton>

</span>
</h2>


<div class="articles-list" style="width:760px;">
<ul>
<asp:Repeater id="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand">
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
<li><asp:LinkButton ID="LinkButtonNewsTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton>

<div class="articles-list-meta"> 
<span style="width:0px;">
    <asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label></span>

<span style="width:60px;">بازدید :<%#Eval("newsViewerCounter")%></span><span style="width:180px;">موضوع : <asp:LinkButton ID="LinkButtonNewsAbout"  runat="server" Text=<%#Eval("newsPriority")%> CommandName="goToShowAbout"></asp:LinkButton></span>
<span style="width:180px;">مبحث : <asp:LinkButton ID="LinkButtonNewsAboutMabhas"  runat="server" Text=<%#Eval("newsType")%> CommandName="goToShowAboutMabhas"></asp:LinkButton></span>

 </div>
</li>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 

</ul>
</div>

</div>



<div id="articles" class="tab_content">

<h2 align="center">
<span>
<asp:LinkButton ID="LinkButtonArticleAll"  runat="server"  ForeColor="#00b1b2"
        Text="مشاهده همه مقالات روانشناسی" CommandName="goToShowAbout" onclick="LinkButtonArticleAll_Click" 
        ></asp:LinkButton>

</span>
</h2>

<div class="articles-list" style="width:760px;">
<ul>
<asp:Repeater id="Repeater2" runat="server" onitemcommand="Repeater2_ItemCommand" >
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
<li><asp:LinkButton ID="LinkButtonArticleTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton>
<asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label>
<div class="articles-list-meta"> 
<span style="width:60px;">بازدید :<%#Eval("newsViewerCounter")%></span><span style="width:180px;">موضوع : <asp:LinkButton ID="LinkButtonArticleAbout"  runat="server" Text=<%#Eval("newsPriority")%> CommandName="goToShowAbout"></asp:LinkButton></span>
<span style="width:180px;">مبحث : <asp:LinkButton ID="LinkButtonArticleAboutMabhas"  runat="server" Text=<%#Eval("newsType")%> CommandName="goToShowAboutMabhas"></asp:LinkButton></span>

 </div>
</li>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 




</ul>
</div>
</div>



<div id="events" class="tab_content">
<h2 align="center">
<span>
<asp:LinkButton ID="LinkButton1"  runat="server"  ForeColor="#00b1b2"
        Text="مشاهده همه اخبار و رویداد" onclick="LinkButtonAllEvent_Click" 
        ></asp:LinkButton>

</span>
</h2>

<div class="articles-list" style="width:760px;">
<ul>
<asp:Repeater id="RepeaterEvents" runat="server" onitemcommand="RepeaterEvents_ItemCommand" >
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>
<li><asp:LinkButton ID="LinkButtonEventTitle"  runat="server" Text=<%#Eval("newsTitle")%> CommandName="goToShowDetails"></asp:LinkButton>
<asp:Label ID="LabelNewsID" Visible="false"    runat="server" Text=<%#Eval("newsID")%>></asp:Label>
<div class="articles-list-meta"> 
<span style="width:60px;">بازدید :<%#Eval("newsViewerCounter")%></span><span style="width:180px;">موضوع : <asp:LinkButton ID="LinkButtonEventAbout"  runat="server" Text=<%#Eval("newsPriority")%> CommandName="goToShowAbout"></asp:LinkButton></span>
<span style="width:180px;">مبحث : <asp:LinkButton ID="LinkButtonEventAboutMabhas"  runat="server" Text=<%#Eval("newsType")%> CommandName="goToShowAboutMabhas"></asp:LinkButton></span>

 </div>
</li>

    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 




</ul>
</div>
</div>



<div id="books" class="tab_content">
<h2 align="center">
<span>
<asp:LinkButton ID="LinkButtonAllBooks"  runat="server"  ForeColor="#00b1b2"
        Text="مشاهده همه کتابها" onclick="LinkButtonAllBooks_Click" 
        ></asp:LinkButton>

</span>
</h2>

<div class="articles-list" style="width:760px;">
<ul>
<asp:Repeater id="RepeaterBooks" runat="server" 
        onitemcommand="RepeaterBooks_ItemCommand" >
                
    <HeaderTemplate>
                               
    </HeaderTemplate>
    
    <ItemTemplate>


<li>

<%--<img src="BookFiles/BooksImages/<%#Eval("bookPicName")%>" alt=<%#Eval("bookTitle")%>  height="50px" width="50px" style="margin-top:2px;">--%>
<asp:LinkButton ID="LinkButtonNewsTitle"  runat="server" Text=<%#Eval("bookTitle")%>></asp:LinkButton>

<div class="articles-list-meta"> 
<span style="width:0px;">
    <asp:Label ID="LabelBookID" Visible="false"    runat="server" Text=<%#Eval("bookID")%>></asp:Label></span>

<span style="width:90px;">تعداد دانلود: <%#Eval("bookDownloadCounter")%></span>

<span style="width:180px;">موضوع : <%#Eval("bookMozoo")%> </span>

<span style="width:180px;">مبحث : <%#Eval("bookMabhas")%></span>

 </div>
</li>


    </ItemTemplate>
                 
<FooterTemplate>
                
</FooterTemplate>
</asp:Repeater> 




</ul>
</div>
</div>

</div>


</div>


<%--<div     class="content-box-left">

<iframe src="http://www.aparat.com/video/video/embed/videohash/Hui3V/vt/frame" 
       height="360" width="765" allowFullScreen="true" webkitallowfullscreen="true" mozallowfullscreen="true">
</iframe>

      <!-- the player -->
   <div class="flowplayer" data-swf="flowplayer.swf" data-ratio="0.4167" align="center" dir="ltr" style="width:100%;">
      <video>
         <source type="video/webm" src="https://rahe-zendegi.ir/VideoClips/bauhaus.webm">

         <source type="video/mp4" src="https://rahe-zendegi.ir/VideoClips/bauhaus.mp4">

         
      </video>
   </div>

</div>--%>





<div class="single-content-box-left">
                    <h1 class="content-box-title" style="width:100%;">جدیدترین ویدئوها</h1>
                    <div class="carousel-wrapper">

                            <ul class="video-review">

                                  <asp:Repeater id="RepeaterVideo" runat="server">
                
                                    <HeaderTemplate>
                               
                                    </HeaderTemplate>

                                    <ItemTemplate>
       
                               <li> 
                                  <a href="VideoRouter.aspx?<%#Eval("videoID")%>">
                                    <div class="play-icon"></div>
                                    
                                    <img src="VideoClips/VideoImages/<%#Eval("videoPicName")%>">
                                     
                                    </a>  
                                    
                                                                    
                                     
                                    <div class="video-review-content">
                                        <%--<h3>--%><%#Eval("videoTitle")%><%--</h3>--%>                                       
                                       <%-- <h3><%#Eval("videoOwner")%></h3>--%>
                                        <br />
                                       <%#Eval("videoTime")%> دقیقه
                                         </div>
                            	</li>
                                    </ItemTemplate>
                 
                                <FooterTemplate>
                
                                </FooterTemplate>
                                </asp:Repeater>

                           </ul>
                    </div>
                </div>









<div class="single-content-box-left">
                    <h1 class="content-box-title" style="width:100%;margin-top:25px;">جدیدترین کتابها</h1>
                    <div class="carousel-wrapper">

                            <ul class="video-review">

                                  <asp:Repeater id="Repeater3" runat="server">
                
                                    <HeaderTemplate>
                               
                                    </HeaderTemplate>

                                    <ItemTemplate>
       
                               <li> 
                                  <a href="User/ShowBookDownload.aspx?<%#Eval("bookID")%>">
                                    <%--<div class="play-icon"></div>--%>
                                    
                                    <img src="BookFiles/BooksImages/<%#Eval("bookPicName")%>">
                                     
                                    </a>  
                                    
                                                                    
                                     
                                    <div class="video-review-content">
                                        <%#Eval("bookTitle")%>                                    

                                         </div>
                            	</li>
                                    </ItemTemplate>
                 
                                <FooterTemplate>
                
                                </FooterTemplate>
                                </asp:Repeater>

                           </ul>
                    </div>
                </div>



<div class="single-content-box-left">
                    <h1 class="content-box-title" style="width:100%;margin-top:20px;">تیتر روزنامه های امروز</h1>
<div style="margin-bottom:5px;text-align:center;width:770px; height:430px; overflow: hidden; position: relative;">

<iframe scrolling="no" frameborder="0" src="http://6sobh.com/#slider1_container"
 style="position: absolute; top:-190px; left:0px; bottom:-100px;  width: 1000px; height: 4595px;">

<p>متاسفانه در مرورگر شما frame فعال نمی باشد.</p>

</iframe>

</div>
</div>

</div>



      
<div class="sidebar" style="margin-top:-10px;">

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
<div class="price-list-table-title">آمار وب سایت</div>
<div class="price-list-table-list">--%>

<h1 class="content-box-title" style="width:160px; margin-top:20px;">آمار وب سایت</h1>
<table dir="rtl" width="160px">
        <tr>
            <td align="right" valign="top">
                تاریخ امروز:</td>
            <td align="right" valign="top">
  
   
  
                  <asp:Label ID="lblToday" runat="server" 
                    Text="Label" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                &nbsp;</td>
            <td align="right" valign="top">
  
   
  
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                بازدید امروز:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipTodayLoginsCounter" runat="server" 
                    Text="Label" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                &nbsp;</td>
            <td align="right" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                حاضرین در سایت:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipOnlineCounter" runat="server" Text="Label" 
                    ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                &nbsp;</td>
            <td align="right" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top">
                 
                 اعضای سایت:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipCounter" runat="server" 
                    Text="Label" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">
                 
                 &nbsp;</td>
            <td align="right" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" valign="top">
                
                کل بازدیدها:</td>
            <td align="right" valign="top">
                <asp:Label ID="lblMembeshipTotalLoginsCounter" runat="server" Text="Label" 
                    ></asp:Label>
            </td>
        </tr>
        </table>



<%--<h1 class="content-box-title" style="width:160px; margin-top:20px;">مشاوره تلفنی امروز</h1>

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
</asp:Repeater>--%>

<%--</div>
</div>--%>



</div>




</div>



</asp:Content>