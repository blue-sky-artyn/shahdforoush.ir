using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BPService;
using honeyBL;
using Cruder.Core;

public partial class pay1 : System.Web.UI.Page
{

    string code_s;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
           
            string new_content = "";
            int count_stuff = 0;
           
            string invoice_content = "<div class='icon'>" +
                                        "<p class='name'>صورتحساب</p>" +
                                        "<table border='1' style='text-align: center;width: 100%;'><tr><td style='padding: 0 15px;padding-right:0;color: rgb(119, 119, 226);'>نام محصول</td><td style='padding: 0 15px;color: rgb(119, 119, 226);'>نام تجاری</td>" +
            "<td style='padding: 0 15px;color: rgb(119, 119, 226);'>قیمت مصوب</td><td style='padding: 0 15px;color: rgb(119, 119, 226);'>تخفیف</td><td style='padding: 0 15px;padding-left:0;color: rgb(119, 119, 226);'>قیمت بورس</td></tr>";

           
                count_stuff += 1;
                
                new_content += "<tr><td style='padding: 10px 0;'>" + "کالا1" + "</td>" +
                                
                                "<td style='padding: 10px 0;'>" + "10000" + "</td>" +
                    //"<p>جمع کل(بدون تخفیف): " + info_stuff[0].price_borse + "</p>" +
                    //"<p>جمع کل(با تخفیف): " + info_stuff[0].price_borse + "</p>" +
                                "<div class='separator_20'></div>";

            invoice_content += new_content;
            invoice_content += "</table><p style='margin-top: 15px;border-top: 1px solid;'>تعداد محصول خریداری: " + (count_stuff + 1) + "</p>" +
                                    "<p>جمع قابل پرداخت: " + "10000" + "</p>" +
                                "<p>آدرس: " + "sdfsdf" + "</p>" +
                                "<p>تلفن: " + "132131" + "</p>" +
                                "<form action='https://acquirer.samanepay.com/payment.aspx' method='post'>" +
                                    "<input type='hidden' id='MID' name='MID' value='10085228'/>  " +
                                    "<input type='hidden' id='Amount' name='Amount' value='" + "10000" + "'/>" +
                                    "<input type='hidden' id='ResNum' name='ResNum' value='" + "1233313" + "'/>" +
                                    "<input type='hidden' id='RedirectURL' name='RedirectURL' value='http://shahdforoush.ir/resultbuy.aspx'/>" +
                                    "<p class='tal'>" +
                                        "<button type='submit' name='Save' class='general_navigation_button back'>خرید اینترنتی</button>" +
                                    "</p>" +
                                "</form>" +
                            "</div>";
            invoice_box.InnerHtml = invoice_content;

            //create form for bank
            //Literal amount = new Literal();
            //amount.Text = "<input type='hidden' id='Amount' name='Amount' value='10000'/>";// +list_fact[0].amount + "'/>";
            //amount.Text += "<input type='hidden' id='ResNum' name='ResNum' value='" + list_fact[0].detail + "'/>";
            //ph_bank.Controls.Add(amount);
        }
        catch (Exception)
        {
            invoice_box.InnerText = "خطا در اتصال به پایگاه داده!";
        }
    }
}