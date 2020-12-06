using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BPService;

using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using System.Net;




public partial class mypay : System.Web.UI.Page
{
    private string refrenceNumber = string.Empty;
    private string reservationNumber = string.Empty;
    private string transactionState = string.Empty;
    bool isError = false;
    string errorMsg = "";
    string succeedMsg = "";

    string dateNow, timeNow;
    void SetDefaultDateTime()
    {
        dateNow = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString().PadLeft(2, '0') + DateTime.Now.Day.ToString().PadLeft(2, '0');
        timeNow = DateTime.Now.Hour.ToString().PadLeft(2, '0') + DateTime.Now.Minute.ToString().PadLeft(2, '0') + DateTime.Now.Second.ToString().PadLeft(2, '0');
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
    protected void Page_Load(object sender, EventArgs e)
    {
        SetDefaultDateTime();
        BypassCertificateError();

        try
        {
            if (RequestUnpack())
            {
                if (transactionState.Equals("OK"))
                {
                    ///For Ignore SSL Error
                    ServicePointManager.ServerCertificateValidationCallback =
                        delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
                    Response.Write("OK");

                    ///WebService Instance
                    var srv = new PaymentGatewayImplService();
                    srv.bpDynamicPayRequestAsync(1309976, "shfd", "shfd47", 123, 10000, dateNow, timeNow, "88,140000,108;74,12000,;", "http://shahdforoush.ir/", 123, 33333);
                    
                    var result = srv.bpPayRequest(1309976, "shfd", "shfd47", 123, 10000, dateNow, timeNow, "88,140000,108;74,12000,;", "http://shahdforoush.ir/", 123);//Request.Form["RefNum"], Request.Form["MID"]);
                    //PaymentGatewayImplService bpService = new PaymentGatewayImplService();
                    //string result = bpService.bpReversalRequest(1309976, "shfd", "shfd47", 123, 10000, 321);//Int64.Parse(ReversalOrderIdTextBox.Text),Int64.Parse(ReversalSaleOrderIdTextBox.Text),Int64.Parse(ReversalSaleReferenceIdTextBox.Text));

                    Response.Write(result);

                    //if (Convert.ToInt32(result) > 0)
                    //{
                    //    isError = false;
                    //    succeedMsg = "بانک صحت رسيد ديجيتالي شما را تصديق نمود. فرايند خريد تکميل گشت";
                    //    Response.Write(succeedMsg);
                    //}

                    //else
                    //{
                    //    Response.Write(TransactionChecking(Convert.ToInt32(result)));
                    //}
                }
                else
                {
                    isError = true;
                    errorMsg = "متاسفانه بانک خريد شما را تاييد نکرده است";

                    if (transactionState.Equals("Canceled By User") || transactionState.Equals(string.Empty))
                    {
                        // Transaction was canceled by user
                        isError = true;
                        errorMsg = "تراكنش توسط خريدار كنسل شد";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Invalid Amount"))
                    {
                        // Amount of revers teransaction is more than teransaction
                        isError = true;
                        errorMsg = "2";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Invalid Transaction"))
                    {
                        // Can not find teransaction
                        isError = true;
                        errorMsg = "3";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Invalid Card Number"))
                    {
                        // Card number is wrong
                        isError = true;
                        errorMsg = "4";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("No Such Issuer"))
                    {
                        // Issuer can not find
                        isError = true;
                        errorMsg = "5";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Expired Card Pick Up"))
                    {
                        // The card is expired
                        isError = true;
                        errorMsg = "6";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Allowable PIN Tries Exceeded Pick Up"))
                    {
                        // For third time user enter a wrong PIN so card become invalid
                        isError = true;
                        errorMsg = "7";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Incorrect PIN"))
                    {
                        // Pin card is wrong
                        isError = true;
                        errorMsg = "8";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Exceeds Withdrawal Amount Limit"))
                    {
                        // Exceeds withdrawal from amount limit
                        isError = true;
                        errorMsg = "9";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Transaction Cannot Be Completed"))
                    {
                        // PIN and PAD are currect but Transaction Cannot Be Completed
                        isError = true;
                        errorMsg = "10";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Response Received Too Late"))
                    {
                        // Timeout occur
                        isError = true;
                        errorMsg = "11";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Suspected Fraud Pick Up"))
                    {
                        // User did not insert cvv2 & expiredate or they are wrong.
                        isError = true;
                        errorMsg = "12";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("No Sufficient Funds"))
                    {
                        // there are not suficient funds in the account
                        isError = true;
                        errorMsg = "13";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("Issuer Down Slm"))
                    {
                        // The bank server is down
                        isError = true;
                        errorMsg = "14";
                        Response.Write(errorMsg);
                    }
                    else if (transactionState.Equals("TME Error"))
                    {
                        // unknown error occur
                        isError = true;
                        errorMsg = "15";
                        Response.Write(errorMsg);
                    }

                }

            }
        }

        catch (Exception ex)
        {

        }
    }
    private bool RequestUnpack()
    {
        if (RequestFeildIsEmpty()) return false;

        refrenceNumber = Request.Form["RefNum"].ToString();
        reservationNumber = Request.Form["ResNum"].ToString();
        transactionState = Request.Form["state"].ToString();

        return true;
    }
    private bool RequestFeildIsEmpty()
    {
        if (Request.Form["state"].ToString().Equals(string.Empty))
        {
            isError = true;
            errorMsg = "خريد شما توسط بانک تاييد شده است اما رسيد ديجيتالي شما تاييد نگشت! مشکلي در فرايند رزرو خريد شما پيش آمده است";
            Response.Write(errorMsg);
            return true;
        }

        if (Request.Form["RefNum"].ToString().Equals(string.Empty) && Request.Form["state"].ToString().Equals(string.Empty))
        {
            isError = true;
            errorMsg = "فرايند انتقال وجه با موفقيت انجام شده است اما فرايند تاييد رسيد ديجيتالي با خطا مواجه گشت";
            Response.Write(errorMsg);
            return true;
        }

        if (Request.Form["ResNum"].ToString().Equals(string.Empty) && Request.Form["state"].ToString().Equals(string.Empty))
        {
            isError = true;
            errorMsg = "خطا در برقرار ارتباط با بانک";
            Response.Write(errorMsg);
            return true;
        }
        Response.Write(errorMsg);
        return false;
    }

    private string TransactionChecking(int i)
    {
        bool isError = false;
        string errorMsg = "";
        switch (i)
        {

            case -1:		//TP_ERROR
                isError = true;
                errorMsg = "بروز خطا درهنگام بررسي صحت رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-1";
                Response.Write(errorMsg);
                break;
            case -2:		//ACCOUNTS_DONT_MATCH
                isError = true;
                errorMsg = "بروز خطا در هنگام تاييد رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-2";
                Response.Write(errorMsg);
                break;
            case -3:		//BAD_INPUT
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-3";
                Response.Write(errorMsg);
                break;
            case -4:		//INVALID_PASSWORD_OR_ACCOUNT
                isError = true;
                errorMsg = "خطاي دروني سيستم درهنگام بررسي صحت رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-4";
                Response.Write(errorMsg);
                break;
            case -5:		//DATABASE_EXCEPTION
                isError = true;
                errorMsg = "خطاي دروني سيستم درهنگام بررسي صحت رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-5";
                Response.Write(errorMsg);
                break;
            case -7:		//ERROR_STR_NULL
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-7";
                Response.Write(errorMsg);
                break;
            case -8:		//ERROR_STR_TOO_LONG
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-8";
                Response.Write(errorMsg);
                break;
            case -9:		//ERROR_STR_NOT_AL_NUM
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-9";
                Response.Write(errorMsg);
                break;
            case -10:	//ERROR_STR_NOT_BASE64
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-10";
                Response.Write(errorMsg);
                break;
            case -11:	//ERROR_STR_TOO_SHORT
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-11";
                Response.Write(errorMsg);
                break;
            case -12:		//ERROR_STR_NULL
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-12";
                Response.Write(errorMsg);
                break;
            case -13:		//ERROR IN AMOUNT OF REVERS TRANSACTION AMOUNT
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-13";
                Response.Write(errorMsg);
                break;
            case -14:	//INVALID TRANSACTION
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-14";
                Response.Write(errorMsg);
                break;
            case -15:	//RETERNED AMOUNT IS WRONG
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-15";
                Response.Write(errorMsg);
                break;
            case -16:	//INTERNAL ERROR
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-16";
                Response.Write(errorMsg);
                break;
            case -17:	// REVERS TRANSACTIN FROM OTHER BANK
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-17";
                Response.Write(errorMsg);
                break;
            case -18:	//INVALID IP
                isError = true;
                errorMsg = "خطا در پردازش رسيد ديجيتالي در نتيجه خريد شما تاييد نگرييد" + "-18";
                Response.Write(errorMsg);
                break;

        }
        Response.Write(errorMsg);
        return errorMsg;
    }
}