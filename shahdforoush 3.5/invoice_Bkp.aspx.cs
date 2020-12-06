using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using Cruder.Core;

public partial class invoice : System.Web.UI.Page
{
    string code_s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Request.QueryString["n"] != null))
        {
            code_s = Request.QueryString["n"];
            Session["Fact"] = code_s;
        }
        else
        {
            Response.Redirect("perfact.aspx");
        }


        try
        {
            tblFactOnCollection list_fact = new tblFactOnCollection();
            list_fact.ReadList(Criteria.NewCriteria(tblFactOn.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(code_s)));


            string new_content = "";
            int count_stuff = 0,Sum_price = 0;
            tblDetailStuffCollection list_detail = new tblDetailStuffCollection();
            list_detail.ReadList(Criteria.NewCriteria(tblDetailStuff.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(code_s)));

            string invoice_content = "<div style='text-align:right;direction: rtl;'>" +
                                        "<table border='1' style='width:100%;text-align: center;'><tr style='background-color: rgb(255, 200, 98);'><td style='padding: 0 15px;padding-right:0;color: rgb(119, 119, 226);width: 6%;'>کد کالا</td><td style='padding: 0 15px;color: rgb(119, 119, 226);width: 34%;'>نام محصول</td>" +
            "<td style='padding: 0 15px;color: rgb(119, 119, 226);width: 25%;'>قیمت واحد</td><td style='padding: 0 15px;color: rgb(119, 119, 226);width: 10%;'>تعداد</td><td style='padding: 0 15px;padding-left:0;color: rgb(119, 119, 226);width: 25%;'>جمع</td></tr>";

            for (int i = 0; i < list_detail.Count; i++)
            {
                count_stuff += 1;
                string stuff_id = list_detail[i].id_stuff.ToString();
                tblStuffCollection info_stuff = new tblStuffCollection();
                info_stuff.ReadList(Criteria.NewCriteria(tblStuff.Columns.id_stuff, CriteriaOperators.Like, stuff_id));

                new_content += "<tr><td style='padding: 10px 0;'>" + info_stuff[0].id_stuff + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].name_stuff + "</td>" +
                                "<td style='padding: 10px 0;'>" + list_detail[i].pay_one + "</td>" +
                                "<td style='padding: 10px 0;'>" + list_detail[i].no_stuff + "</td>" +
                                "<td style='padding: 10px 0;'>" + list_detail[i].pay_one * list_detail[i].no_stuff + "</td></tr>";
                    //"<p>جمع کل(بدون تخفیف): " + info_stuff[0].price_borse + "</p>" +
                    //"<p>جمع کل(با تخفیف): " + info_stuff[0].price_borse + "</p>" +
                Sum_price += Convert.ToInt32((list_detail[i].pay_one * list_detail[i].no_stuff).ToString());
                //invoice_content += new_content;
            }

            invoice_content += new_content;


            invoice_content += "</table><p style='margin-top: 15px;border-top: 1px solid;'>تعداد محصول خریداری: " + (count_stuff) + "</p>" +
                                   "<p>جمع قابل پرداخت: " + Sum_price + "</p>" +
                               "<p>آدرس: " + list_fact[0].addr + "</p>" +
                               "<p>تلفن: " + list_fact[0].tel + "</p>" +
                               "<form action='https://acquirer.samanepay.com/payment.aspx' method='post'>" +
                                   "<input type='hidden' id='MID' name='MID' value='10085228'/>  " +
                                   "<input type='hidden' id='Amount' name='Amount' value='" + list_fact[0].amount + "'/>" +
                                   "<input type='hidden' id='ResNum' name='ResNum' value='" + list_fact[0].detail + "'/>" +
                                   "<input type='hidden' id='RedirectURL' name='RedirectURL' value='http://boorsedaroo.ir/resultbuy.aspx'/>" +
                                   "<p class='tal'>" +
                                       "<button type='submit' name='Save' class='dark-2 common_font common_div'>خرید اینترنتی</button>" +
                                   "</p>" +
                               "</form>" +
                           "</div>";
            invoice_box.InnerHtml = invoice_content;


            
            sum_pay_show.InnerText = "ریال" + Sum_price;


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