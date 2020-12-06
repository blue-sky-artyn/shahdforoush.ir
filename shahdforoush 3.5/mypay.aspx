<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mypay.aspx.cs" Inherits="mypay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
           <h1>shahd foroush</h1>
                
            <form target="_self" action="https://pgw.bpm.bankmellat.ir/pgwchannel/startpay.mellat" method="post">

                

                <input type="submit" class="buttons1" value="تأييد"  name="btn_ok" />
                <input type="hidden" id="Amount" name="Amount" value="1000" />
                <input type="hidden" id="RefId" name="MID" value="1309976" />
                <input type="hidden" id="ResNum" name="ResNum" value="1309976" />
                <input type="hidden" id="RedirectURL" name="RedirectURL" value="http://shahdforoush.ir/" />
            </form>
</body>
</html>
