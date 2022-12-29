<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilmPlayer.aspx.cs" Inherits="PresentationLayer.FilmPlayer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


   <!-- player skin -->
    <link href="WebsiteLayout/FilmPlayer/playful.css" rel="stylesheet" type="text/css" />
   
   
   <style>
   /* site specific styling */
   body {
      font: 12px "Myriad Pro", "Lucida Grande", "Helvetica Neue", sans-serif;
      text-align: center;
      padding-top: 1%;
      color: #999;
      background-color: #333333;
   }

   /* custom player skin */
   .flowplayer { width: 80%; background-color: #222; background-size: cover; max-width: 800px; }
   .flowplayer .fp-controls { background-color: rgba(17, 17, 17, 1)}
   .flowplayer .fp-timeline { background-color: rgba(204, 204, 204, 1)}
   .flowplayer .fp-progress { background-color: rgba(0, 177, 178, 1)}
   .flowplayer .fp-buffer { background-color: rgba(249, 249, 249, 1)}

   </style>

   <!-- flowplayer depends on jQuery 1.7.2+ -->
    <script src="WebsiteLayout/FilmPlayer/jquery-1.10.2.min.js" type="text/javascript"></script>

   <!-- flowplayer javascript component -->
    <script src="WebsiteLayout/FilmPlayer/flowplayer.min.js" type="text/javascript"></script>

    <!-- player skin -->

</head>
<body>
    <form id="form1" runat="server">
    <div>



   <%--<div data-swf="WebsiteLayout/FilmPlayer/flowplayer.swf"--%>

   <div   class="flowplayer play-button"
       data-ratio="0.416" data-analytics="[Your analytics ID]">

      <video poster="https://farm5.staticflickr.com/4117/4870052004_c0997bcf8d_b.jpg">

         <%--<source type="video/webm" src="WebsiteLayout/FilmPlayer/clips/bauhaus.webm">--%>

         
         
         <source type="video/mp4" src="WebsiteLayout/FilmPlayer/clips/Shamloo-Ashl-Razist.mp4">

         <!-- change this path to your own subtitles file (vtt format) -->
<%--         <track src="WebsiteLayout/FilmPlayer/s3.amazonaws.com/flowplayer-releases/subtitles-en.vtt"/  >--%>

      </video>
      
   </div>


    
    </div>
    </form>
</body>
</html>
