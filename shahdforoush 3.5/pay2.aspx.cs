using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;


public partial class pay2 : System.Web.UI.Page
{
    public static readonly string PgwSite = ConfigurationManager.AppSettings["PgwSite"];
    public static readonly string CallBackUrl = ConfigurationManager.AppSettings["CallBackUrl"];
    public static readonly string TerminalId = ConfigurationManager.AppSettings["TerminalId"];
    public static readonly string UserName = ConfigurationManager.AppSettings["UserName"];
    public static readonly string UserPassword = ConfigurationManager.AppSettings["UserPassword"];

    public static string RefId = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetDefaultDateTime();
            PayCallBackUrlTextBox.Text = CallBackUrl;
            TerminalIdTextBox.Text = TerminalId;
            UserNameTextBox.Text = UserName;
            UserPasswordTextBox.Text = UserPassword;
        }
    }

    void SetDefaultDateTime()
    {
        PayDateTextBox.Text = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString().PadLeft(2, '0') + DateTime.Now.Day.ToString().PadLeft(2, '0');
        PayTimeTextBox.Text = DateTime.Now.Hour.ToString().PadLeft(2, '0') + DateTime.Now.Minute.ToString().PadLeft(2, '0') + DateTime.Now.Second.ToString().PadLeft(2, '0');
    }

    protected void PayRequestButton_Click(object sender, EventArgs e)
    {
        try
        {
            string result;

            BypassCertificateError();

            BPService.PaymentGatewayImplService bpService = new BPService.PaymentGatewayImplService();
            result = bpService.bpPayRequest(Int64.Parse(TerminalIdTextBox.Text),
                UserNameTextBox.Text,
                UserPasswordTextBox.Text,
                Int64.Parse(PayOrderIdTextBox.Text),
                Int64.Parse(PayAmountTextBox.Text),
                PayDateTextBox.Text,
                PayTimeTextBox.Text,
                PayAdditionalDataTextBox.Text,
                PayCallBackUrlTextBox.Text,
                Int64.Parse(PayPayerIdTextBox.Text));

            PayOutputLabel.Text = result;

            String[] resultArray = result.Split(',');
            if (resultArray[0] == "0")
                ClientScript.RegisterStartupScript(typeof(Page), "ClientScript", "<script language='javascript' type='text/javascript'> postRefId('" + resultArray[1] + "');</script> ", false);
        }
        catch (Exception exp)
        {
            PayOutputLabel.Text = "Error: " + exp.Message;
        }
    }

    protected void VerifyRequestButton_Click(object sender, EventArgs e)
    {
        try
        {
            string result;

            BypassCertificateError();

            BPService.PaymentGatewayImplService bpService = new BPService.PaymentGatewayImplService();
            result = bpService.bpVerifyRequest(Int64.Parse(TerminalIdTextBox.Text),
                UserNameTextBox.Text,
                UserPasswordTextBox.Text,
                Int64.Parse(VerifyOrderIdTextBox.Text),
                Int64.Parse(VerifySaleOrderIdTextBox.Text),
                Int64.Parse(VerifySaleReferenceIdTextBox.Text));
            VerifyOutputLabel.Text = result;
        }
        catch (Exception exp)
        {
            VerifyOutputLabel.Text = "Error: " + exp.Message;
        }
    }

    protected void InquiryRequestButton_Click(object sender, EventArgs e)
    {
        try
        {
            string result;

            BypassCertificateError();

            BPService.PaymentGatewayImplService bpService = new BPService.PaymentGatewayImplService();
            result = bpService.bpInquiryRequest(Int64.Parse(TerminalIdTextBox.Text),
                UserNameTextBox.Text,
                UserPasswordTextBox.Text,
                Int64.Parse(InquiryOrderIdTextBox.Text),
                Int64.Parse(InquirySaleOrderIdTextBox.Text),
                Int64.Parse(InquirySaleReferenceIdTextBox.Text));
            InquiryOutputLabel.Text = result;
        }
        catch (Exception exp)
        {
            InquiryOutputLabel.Text = "Error: " + exp.Message;
        }
    }

    protected void ReversalRequestButton_Click(object sender, EventArgs e)
    {
        try
        {
            string result;

            BypassCertificateError();

            BPService.PaymentGatewayImplService bpService = new BPService.PaymentGatewayImplService();
            result = bpService.bpReversalRequest(Int64.Parse(TerminalIdTextBox.Text),
                UserNameTextBox.Text,
                UserPasswordTextBox.Text,
                Int64.Parse(ReversalOrderIdTextBox.Text),
                Int64.Parse(ReversalSaleOrderIdTextBox.Text),
                Int64.Parse(ReversalSaleReferenceIdTextBox.Text));
            ReversalOutputLabel.Text = result;
        }
        catch (Exception exp)
        {
            ReversalOutputLabel.Text = "Error: " + exp.Message;
        }
    }

    protected void SettleRequestButton_Click(object sender, EventArgs e)
    {
        try
        {
            string result;

            BypassCertificateError();

            BPService.PaymentGatewayImplService bpService = new BPService.PaymentGatewayImplService();
            result = bpService.bpSettleRequest(Int64.Parse(TerminalIdTextBox.Text),
                UserNameTextBox.Text,
                UserPasswordTextBox.Text,
                Int64.Parse(SettleOrderIdTextBox.Text),
                Int64.Parse(SettleSaleOrderIdTextBox.Text),
                Int64.Parse(SettleSaleReferenceIdTextBox.Text));
            SettleOutputLabel.Text = result;
        }
        catch (Exception exp)
        {
            SettleOutputLabel.Text = "Error: " + exp.Message;
        }
    }

    void BypassCertificateError()
    {
        ServicePointManager.ServerCertificateValidationCallback +=
            delegate(
                Object sender1,
                X509Certificate certificate,
                X509Chain chain,
                SslPolicyErrors sslPolicyErrors)
            {
                return true;
            };
    }
}