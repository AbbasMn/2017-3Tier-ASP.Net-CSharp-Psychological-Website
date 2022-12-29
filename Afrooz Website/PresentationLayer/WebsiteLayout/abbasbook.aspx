<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abbasbook.aspx.cs" Inherits="PresentationLayer.WebsiteLayout.abbasbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>

    <link rel="stylesheet" href="Interface/MainCss.css" type="text/css"/>
</head>

<body>
    <form id="form1" runat="server">

          <div class="header">

              <div class="container">

                    <div class="logo">
                     <img alt="" src="Pic/png1/Logo2.png" />                   
                 </div>

                    <div class="header-topleft">

                      <div class="log-box">
        
                            <table align="center" style="margin-top:8px;">

                                  <tr>

                                    <td align="right" >

                                        <label class="Lable">نام کاربري:</label>
                                        <input id="Text1" class="LoginInputControl" type="text" />

                                        <label class="Lable" >کلمه عبور:</label>
                                        <input id="Text2" class="LoginInputControl" type="password" />

                                        <input id="Submit1" class="loginButton" type="submit" value="ورود"/>
                                                              
                                    </td>

                                  </tr>
                       
                                  <tr>

                                     <td align="center">
                                   
                                       <hyperlink>رمز عبور را فراموش کرده ام!</hyperlink>
                                    
                                     </td>

                                  </tr>

                             </table>
        
                      </div>

                    </div>

              </div>
              
              
              
              <div class="header-nav-bar">
              
              
                 <div class="container">
                   
                   <div class="header-nav-bar-link">

                       <ul id="TreeRoot" class="TreeMenu">

                         <li id="TreeMenuRow[0][item]" class="TreeMenuChildNode">	
                           <a class="noBg" href="../User/ShowAllin.aspx" id="TreeMenuRow[0][titleLink]">مطالب و مقالات</a>
                         </li>

                         <li id="TreeMenuRow[1][item]" class="TreeMenuChildNode">	
                           <a class="noBg" href="../User/ShowEventList.aspx" id="TreeMenuRow[1][titleLink]">اخبار و رويدادها</a>
                         </li>
                       </ul>

                     </div>

                   <div class="social">           
             
                       <ul>
                         <li><a rel="nofollow" href="" title="فيسبوک"><img alt="Facebook" src="Interface/images/facebook.png"></a></li>
                         <li><a rel="nofollow" href="" title="آپارات"><img alt="Twitter" src="Interface/images/twitter.png"></a></li>
                         <li><a rel="nofollow" href="" title="گوگل+"><img alt="G+" src="Interface/images/google_plus.png"></a></li>
                         <li><a class="g-plusone" data-href="" data-size="small" data-annotation="bubble"></a></li>
                        </ul>

                    </div>

                 </div>
              
              </div>



              <div class="menu">

                 <div class="container">
               
                  <div id="simpleTreeMenuChangesContainer" style="display:hidden"></div>

                    <ul id="nav" class="simpleTreeMenu ">

                        <li id="simpleTreeMenuRow[28][item]" class="simpleTreeMenuChildNode homeChildNode">
                          <a href="../Main.aspx" id="simpleTreeMenuRow[28][container]"></a>
                        </li>


                        <li id="simpleTreeMenuRow[18][item]" class="simpleTreeMenuParentNode" >	
                          <a style="font-size:23px;"><blink>مشاوره تلفنی</blink></a>

                           <ul id="simpleTreeMenuRow[18][childs]" class="">
                             <li>
                               <ul class="submenu">
                                 <li>
                                   <!-- first coulumn -->
                                   <ul class="submenu-column">
                                <li>

                                <ul>
                                <li class="ul-title"><a>درباره مشاوره تلفنی </a></li>
                                <li><a href="../PhoneConsult.aspx#A">آشنایی با مشاوره تلفنی</a></li>
                                <li><a href="../PhoneConsult.aspx#B">فواید مشاوره تلفنی</a></li>
                                <li><a href="../PhoneConsult.aspx#C">نکات مهم درباره مشاوره تلفنی</a></li>
                                </ul>
                                </li>
                                </ul>


                                   <!-- second coulumn -->
                                   <ul class="submenu-column">
                                <li>

                                <ul>
                                <li class="ul-title"><a href="../PhoneConsultReserve.aspx#impTips">نکات مهم در رزرو وقت مشاوره</a></li>


                                </ul>
                                </li>
                                </ul>


                                   <!-- third coulumn -->
                                   <ul class="submenu-column">
                                <li>

                                <ul>
                                <li class="ul-title"><a href="../PhoneConsultReserve.aspx#appointments">رزرو وقت مشاوره تلفنی</a></li>

                                </ul>



                                </li>
                                </ul>

                                   <!-- fourth coulumn -->
                                   <ul class="submenu-column">
                                <li>

                                <%--<ul>
                                <li class="ul-title"><a href="../PhoneConsultReserve.aspx">وقتهای رزرو شده مشاوره تلفنی</a></li>

                                <li><a href="">آنيما و آنيموس</a></li>

                                </ul>--%>

                                </li>
                                </ul>

                                 </li>
                               </ul>
                             </li>
                           </ul>
                          
                          
                        <li id="simpleTreeMenuRow[15][item]" class="simpleTreeMenuChildNode">	
                          <a href="" id="simpleTreeMenuRow[15][container]">ویدیوهای روانشناسی</a>
                        </li>
                      </li>
                   </ul>

                 </div>

               </div>
           </div>



<!-- wrapper -->


          <div class="wrapper">

                     <div class="container">

                        <div class="main">
    


                        </div>

                      </div>
          </div>


<!-- wrapper -->




                <br class="clearfloat"/>
                <br class="clearfloat"/>
                <br class="clearfloat"/>
                <br class="clearfloat"/>
                <br class="clearfloat"/>
                <br/>







<!-- footer -->

          <div class="footer" style="margin-top:7px;">

            <div class="container">

              <div class="footer-item-about">

                <h3 class="footer-item-about-title">درباره ما</h3>
                     توضیحات درباره وب سایت
              </div>

            </div>

          </div>

<!-- footer -->


<!-- copyright -->

          <div class="copyright">
                <div class="container"> تمام حقوق اين وب سايت براي 
                  <a href="http://rahe-zendegi.ir/">راه زندگي</a>
                   محفوظ است.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       Copyright ©.  2015
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تحلیل و طراحی توسط&nbsp;&nbsp;&nbsp;      
                   <a href="http://montaseri.ir/" target="_blank">مهندس منتصري</a> 
                 </div>
          </div>

<!-- copyright -->

                

    </form>
</body>

</html>
