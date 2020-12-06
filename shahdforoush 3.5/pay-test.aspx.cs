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


public partial class pay_test : System.Web.UI.Page
{
    public static readonly string PgwSite = ConfigurationManager.AppSettings["PgwSite"];
    public static readonly string CallBackUrl = ConfigurationManager.AppSettings["CallBackUrl"];
    public static readonly string TerminalId = ConfigurationManager.AppSettings["TerminalId"];
    public static readonly string UserName = ConfigurationManager.AppSettings["UserName"];
    public static readonly string UserPassword = ConfigurationManager.AppSettings["UserPassword"];

    public static string RefId = "";

    string code_s;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Read Fact Number
        //if ((Request.QueryString["n"] != null))
        //{
        //    code_s = Request.QueryString["n"];
        //    Session["Fact"] = code_s;
        //}
        //else
        //{
        //    //Response.Redirect("perfact.aspx");
        //}

        ////Select Data Value
        //tblFactOnCollection list_fact = new tblFactOnCollection();
        //list_fact.ReadList(Criteria.NewCriteria(tblFactOn.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(code_s)));

        //string new_content = "";
        //int count_stuff = 0, Sum_price = 0;
        //tblDetailStuffCollection list_detail = new tblDetailStuffCollection();
        //list_detail.ReadList(Criteria.NewCriteria(tblDetailStuff.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(code_s)));

        //for (int i = 0; i < list_detail.Count; i++)
        //{
        //    count_stuff += 1;
        //    string stuff_id = list_detail[i].id_stuff.ToString();
        //    tblPorfolioCollection info_stuff = new tblPorfolioCollection();
        //    info_stuff.ReadList(Criteria.NewCriteria(tblPorfolio.Columns.id_profolio, CriteriaOperators.Like, stuff_id));

        //    new_content += info_stuff[0].id_profolio;

        //    Sum_price += Convert.ToInt32((list_detail[i].pay_one * list_detail[i].no_stuff).ToString());
        //}

        //PayAmountTextBox.Text = Sum_price.ToString();
        //PayOrderIdTextBox.Text = code_s;
        //if (!IsPostBack)
        //{
        //    SetDefaultDateTime();
        //    PayCallBackUrlTextBox.Text = "http://shahdforoush.ir/resultbuy.aspx";
        //    TerminalIdTextBox.Text = "1309976";
        //    UserNameTextBox.Text = "shfd";
        //    UserPasswordTextBox.Text = "shfd47";
        //}
        ////send data to the bank
        //try
        //{
        //    string result;

        //    BypassCertificateError();

        //    //BPService.PaymentGatewayImplService bpService = new BPService.PaymentGatewayImplService();
        //    ir.shaparak.bpm.PaymentGatewayImplService bpService = new ir.shaparak.bpm.PaymentGatewayImplService();
        //    result = bpService.bpPayRequest(Int64.Parse(TerminalIdTextBox.Text),
        //        UserNameTextBox.Text,
        //        UserPasswordTextBox.Text,
        //        Int64.Parse(PayOrderIdTextBox.Text),
        //        Int64.Parse(PayAmountTextBox.Text),
        //        PayDateTextBox.Text,
        //        PayTimeTextBox.Text,
        //        PayAdditionalDataTextBox.Text,
        //        PayCallBackUrlTextBox.Text,
        //        Int64.Parse(PayPayerIdTextBox.Text));

        //    PayOutputLabel.Text = result;

        //    String[] resultArray = result.Split(',');
        //    if (resultArray[0] == "0")
        //        ClientScript.RegisterStartupScript(typeof(Page), "ClientScript", "<script language='javascript' type='text/javascript'> postRefId('" + resultArray[1] + "');</script> ", false);
        //}
        //catch (Exception exp)
        //{
        //    PayOutputLabel.Text = "Error: " + exp.Message;
        //}
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

            ir.shaparak.bpm.PaymentGatewayImplService bpService = new ir.shaparak.bpm.PaymentGatewayImplService();
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

            ir.shaparak.bpm.PaymentGatewayImplService bpService = new ir.shaparak.bpm.PaymentGatewayImplService();
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

            ir.shaparak.bpm.PaymentGatewayImplService bpService = new ir.shaparak.bpm.PaymentGatewayImplService();
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

            ir.shaparak.bpm.PaymentGatewayImplService bpService = new ir.shaparak.bpm.PaymentGatewayImplService();
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

            ir.shaparak.bpm.PaymentGatewayImplService bpService = new ir.shaparak.bpm.PaymentGatewayImplService();
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