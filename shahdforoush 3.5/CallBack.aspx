<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CallBack.aspx.cs" Inherits="CallBack" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>BP PGW Test</title>
    <link href="Css/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>
                <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                    <tr class="HeaderTr">
                        <td colspan="2" align="center" height="25">
                            <asp:Label ID="Label11" runat="server" class="HeaderText" Text="CallBack Params"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LabelTd">
                            <asp:Label ID="Label2" runat="server" Text="RefId"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="RefIdLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LabelTd">
                            <asp:Label ID="Label1" runat="server" Text="ResCode"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="ResCodeLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LabelTd">
                            <asp:Label ID="Label30" runat="server" Text="SaleOrderId"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="SaleOrderIdLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="LabelTd">
                            <asp:Label ID="Label3" runat="server" Text="SaleReferenceId"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="SaleReferenceIdLabel" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
