<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilmPlayer2.aspx.cs" Inherits="PresentationLayer.FilmPlayer2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



</head>
<body>
    <form id="form1" runat="server">
    <div>

<video id="example_video_1" class="video-js vjs-default-skin"  
controls preload="auto" width="640" height="264" 
poster="http://video-js.zencoder.com/oceans-clip.png" 
data-setup='{"example_option":true}'>  
    <asp:Literal ID="ltSources" runat="server"></asp:Literal>
</video>
    </div>
    </form>
</body>
</html>
