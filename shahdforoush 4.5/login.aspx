<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>فروش عسل حکیم باشی</title>

    <link rel="stylesheet" href="login/formoid-default.css" type="text/css" />
    <script type="text/javascript" src="login/jquery.min.js"></script>
    <script type="text/javascript" src="login/formoid-default.js"></script>

    <link href="css/buttons/light-buttons.css" rel="stylesheet" type="text/css" />
    <link href="css/buttons/dark-buttons.css" rel="stylesheet" type="text/css" />

    <link href="css/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
        
        <!-- Start Formoid form-->
        
        <form id="form1" runat="server" class="formoid-default box_shadows" style="background-color:#FFFFFF;font-size:14px;font-family:Tahoma,Geneva,sans-serif;color:#666666;width:480px;margin-top: 12%;" title="مرکز فروش عسل" method="post">
	        <div class="element-text"  title="login to administrator">
                <h2 class="title">ورود به صفحه مدیریت</h2>
                <img src="img/logo_footer.png" />
            </div>
	        
            <div class="element-email" >
                <label class="title font-common">ایمیل</label>
                <asp:TextBox ID="txt_email" runat="server" type="email"></asp:TextBox>
            </div>

	        <div class="element-password" >
                <label class="title font-common">کلمه عبور</label>
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
            </div>
	        
            <div class="element-checkbox" ><label class="title"></label>		
                <div class="column" style="width:100%">
                <input type="checkbox" name="checkbox[]" value="کلمه عبور را فراموش کرده ام..."/><span class="font-common">کلمه عبور را فراموش کرده ام...</span><br/>
                </div>
                <span class="clearfix"></span>
            </div>
            
            <div>
                <asp:Label ID="lbl_status" runat="server" 
                    Text="کلمه عبور یا نام کاربری اشتباه است" Font-Names="tahoma" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </div>
            
            <div class="element-submit font-common">
                <asp:Button class="dark-5 font-common" ID="btn_login" runat="server" 
                    Text="ورود" onclick="btn_login_Click" />
                <asp:Button class="light-5 font-common" ID="btn_return" runat="server" 
                    Text="بازگشت" onclick="btn_return_Click" />
            </div>
        </form>
        <!-- Stop Formoid form-->
</body>
</html>
