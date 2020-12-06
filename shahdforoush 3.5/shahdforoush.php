<?php

define('EMAIL_FOR_REPORTS', 'i8net2000@yahoo.com');
define('RECAPTCHA_PRIVATE_KEY', '@privatekey@');
define('FINISH_URI', 'http://');
define('FINISH_ACTION', 'message');
define('FINISH_MESSAGE', 'Thanks for filling out my form!');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

require_once('shahdforoush_files/formoid1/handler.php');

?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>My Formoid form</title>
</head>
<body style="background-color:#EBEBEB">


<? if (frmd_message()): ?>
<link rel="stylesheet" href="shahdforoush_files/formoid1/formoid-default.css" type="text/css" />
<span class="alert alert-success"><?=FINISH_MESSAGE;?></span>
<? else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="shahdforoush_files/formoid1/formoid-default.css" type="text/css" />
<script type="text/javascript" src="shahdforoush_files/formoid1/jquery.min.js"></script>
<form class="formoid-default" style="background-color:#FFFFFF;font-size:14px;font-family:Tahoma,Geneva,sans-serif;color:#666666;width:480px" title="My Formoid form" method="post">
	<div class="element-text"  title="login to administrator"><h2 class="title">ورود به صفحه مدیریت</h2></div>
	<div class="element-email"  <?frmd_add_class("email")?>><label class="title">Email</label><input type="email" name="email" value="" /></div>
	<div class="element-password"  <?frmd_add_class("password")?>><label class="title">Password</label><input type="password" name="password" value="" /></div>
	<div class="element-checkbox"  <?frmd_add_class("checkbox")?>><label class="title"></label>		<div class="column" style="width:100%"><input type="checkbox" name="checkbox[]" value="کلمه عبور را فراموش کرده ام..."/ ><span>کلمه عبور را فراموش کرده ام...</span><br/></div><span class="clearfix"></span>
</div>
	<div class="element-submit" ><input type="submit" value="Submit"/></div>

</form>
<script type="text/javascript" src="shahdforoush_files/formoid1/formoid-default.js"></script>

<p class="frmd"><a href="http://formoid.com/">Html Contact Form With Validation Formoid.com 1.7</a></p>
<!-- Stop Formoid form-->
<? endif; ?>


</body>
</html>
