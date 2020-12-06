<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="pay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>      </title>

    <script language="javascript" type="text/javascript">
        function postRefId(refIdValue) {
            var form = document.createElement("form");
            form.setAttribute("method", "POST");
            form.setAttribute("action", "https://bpm.shaparak.ir/pgwchannel/startpay.mellat");
            form.setAttribute("target", "_self");
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("name", "RefId");
            hiddenField.setAttribute("value", refIdValue);
            form.appendChild(hiddenField);
            document.body.appendChild(form);
            form.submit();
            document.body.removeChild(form);
        }
    </script>
</head>
<body>
    
    <form id="form1" runat="server">
    <table width="100%" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>
                <table class="InputTable" cellspacing="5" cellpadding="1" align="center" style="/*visibility: hidden;*/">
                    <tr>
                        <td>
                            <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center" height="25">
                                        <asp:Label ID="Label7" runat="server" class="HeaderText" Text="BPM PGW Method Call"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label8" runat="server" Text="TerminalId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TerminalIdTextBox" runat="server" Text="1309976"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label9" runat="server" Text="UserName"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserNameTextBox" runat="server" Text="shfd"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label13" runat="server" Text="UserPassword"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserPasswordTextBox" runat="server" Text="shfd47"></asp:TextBox><br />
                                    </td>
                                </tr>
                            </table>
                            <hr />
                            <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center" height="25">
                                        <asp:Label ID="Label4" runat="server" class="HeaderText" Text="Pay Request Method Call"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayDateTextBox" runat="server" Text="20090804"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayTimeTextBox" runat="server" Text="091248"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label10" runat="server" Text="Amount"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayAmountTextBox" runat="server" Text="83000"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label6" runat="server" Text="OrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label5" runat="server" Text="AdditionalData"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayAdditionalDataTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label11" runat="server" Text="CallBackUrl"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayCallBackUrlTextBox" runat="server" Text="http://shahdforoush.ir/resultbuy.aspx"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label12" runat="server" Text="PayerId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PayPayerIdTextBox" runat="server" Text="0"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center">
                                        <asp:Button CssClass="PublicButton" ID="PayRequestButton" runat="server" Text="Pay..."
                                            OnClick="PayRequestButton_Click" /><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="PayOutputLabel" runat="server" ForeColor="Brown"></asp:Label><br />
                                    </td>
                                </tr>
                            </table>
                            <hr />
                            <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center" height="25">
                                        <asp:Label ID="Label1" runat="server" class="HeaderText" Text="Verify Request Method Call"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label18" runat="server" Text="OrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="VerifyOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label15" runat="server" Text="SaleOrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="VerifySaleOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label48" runat="server" Text="SaleReferenceId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="VerifySaleReferenceIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center">
                                        <asp:Button CssClass="PublicButton" ID="VerifyRequestButton" runat="server" Text="Verify"
                                            OnClick="VerifyRequestButton_Click" /><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="VerifyOutputLabel" runat="server" ForeColor="Brown"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <hr />
                            <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center" height="25">
                                        <asp:Label ID="Label29" runat="server" class="HeaderText" Text="Inquiry Request Method Call"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label33" runat="server" Text="OrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="InquiryOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label34" runat="server" Text="SaleOrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="InquirySaleOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label49" runat="server" Text="SaleReferenceId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="InquirySaleReferenceIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center">
                                        <asp:Button CssClass="PublicButton" ID="InquiryRequestButton" runat="server" Text="Inquiry"
                                            OnClick="InquiryRequestButton_Click" /><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="InquiryOutputLabel" runat="server" ForeColor="Brown"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <hr />
                            <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center" height="25">
                                        <asp:Label ID="Label16" runat="server" class="HeaderText" Text="Reversal Request Method Call"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label21" runat="server" Text="OrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ReversalOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label22" runat="server" Text="SaleOrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ReversalSaleOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label50" runat="server" Text="SaleReferenceId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ReversalSaleReferenceIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center">
                                        <asp:Button CssClass="PublicButton" ID="ReversalRequestButton" runat="server" Text="Reversal"
                                            OnClick="ReversalRequestButton_Click" /><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="ReversalOutputLabel" runat="server" ForeColor="Brown"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <hr />
                            <table class="MainTable" cellspacing="5" cellpadding="1" align="center">
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center" height="25">
                                        <asp:Label ID="Label23" runat="server" class="HeaderText" Text="Settle Request Method Call"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label27" runat="server" Text="OrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="SettleOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label28" runat="server" Text="SaleOrderId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="SettleSaleOrderIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="LabelTd">
                                        <asp:Label ID="Label51" runat="server" Text="SaleReferenceId"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="SettleSaleReferenceIdTextBox" runat="server" Text=""></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr class="HeaderTr">
                                    <td colspan="2" align="center">
                                        <asp:Button CssClass="PublicButton" ID="SettleRequestButton" runat="server" Text="Settle"
                                            OnClick="SettleRequestButton_Click" /><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="SettleOutputLabel" runat="server" ForeColor="Brown"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>
