using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using honeyBL;
using Cruder.Core;


public partial class invoice2 : System.Web.UI.Page
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
            list_fact.ReadList(Criteria.NewCriteria(tblFactOn.Columns.id_fact, CriteriaOperators.Equal,Convert.ToInt32(code_s)));


            string new_content = "";
            int count_stuff = 0;
            tblDetailStuffCollection list_detail = new tblDetailStuffCollection();
            list_detail.ReadList(Criteria.NewCriteria(tblDetailStuff.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(code_s)));

            string invoice_content = "<div class='icon'>" +
                                        "<p class='name'>صورتحساب</p>" +
                                        "<table border='1'><tr><td style='padding: 0 15px;padding-right:0;color: rgb(119, 119, 226);'>نام محصول</td><td style='padding: 0 15px;color: rgb(119, 119, 226);'>نام تجاری</td>" +
            "<td style='padding: 0 15px;color: rgb(119, 119, 226);'>قیمت مصوب</td><td style='padding: 0 15px;color: rgb(119, 119, 226);'>تخفیف</td><td style='padding: 0 15px;padding-left:0;color: rgb(119, 119, 226);'>قیمت بورس</td></tr>";

            for (int i = 0; i < list_detail.Count; i++)
            {
                count_stuff += 1;
                string stuff_id = list_detail[i].id_stuff.ToString();
                tblStuffCollection info_stuff = new tblStuffCollection();
                info_stuff.ReadList(Criteria.NewCriteria(tblStuff.Columns.id_stuff, CriteriaOperators.Like, stuff_id));

                new_content += "<tr><td style='padding: 10px 0;'>" + info_stuff[0].name_stuff + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].detail + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].price + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].detail + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].price + "</td></tr>" +
                    //"<p>جمع کل(بدون تخفیف): " + info_stuff[0].price_borse + "</p>" +
                    //"<p>جمع کل(با تخفیف): " + info_stuff[0].price_borse + "</p>" +
                                "<div class='separator_20'></div>";
                invoice_content += new_content;
            }

            invoice_content += "</table><p>تعداد محصول خریداری: " + (count_stuff + 1) + "</p>" +
                                   "<p>جمع قابل پرداخت: " + list_fact[0].amount + "</p>" +
                               "<p>آدرس: " + list_fact[0].addr + "</p>" +
                               "<p>تلفن: " + list_fact[0].name + "</p>" +
                               "<form action='https://acquirer.samanepay.com/payment.aspx' method='post'>" +
                                   "<input type='hidden' id='MID' name='MID' value='10085228'/>  " +
                                   "<input type='hidden' id='Amount' name='Amount' value='" + list_fact[0].amount + "'/>" +
                                   "<input type='hidden' id='ResNum' name='ResNum' value='" + list_fact[0].detail + "'/>" +
                                   "<input type='hidden' id='RedirectURL' name='RedirectURL' value='http://boorsedaroo.ir/resultbuy.aspx'/>" +
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