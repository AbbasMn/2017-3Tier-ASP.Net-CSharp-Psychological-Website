<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsPaper.aspx.cs" Inherits="PresentationLayer.NewsPaoer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <%--<iframe src="http://2zaar.ir/page/newspaper.php#slider_container" width="100%" height="600px" frameborder="0"></iframe>--%>
 

<div style="margin-bottom:20px;text-align:center;width:770px; height:382px; overflow: hidden; position: relative;">

<iframe scrolling="no" frameborder="0" src="http://2zaar.ir/page/newspaper.php#slider_container"
 style="position: absolute; top:-190px; left:0px; bottom:-100px;  width: 1000px; height: 4595px;">

<p>متاسفانه در مرورگر شما frame فعال نمی باشد.</p>

</iframe>

</div>   
    </div>
    </form>
</body>
</html>
