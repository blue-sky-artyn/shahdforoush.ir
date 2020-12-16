using System;
using System.Configuration;
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

        //for register btn
        btn.InnerHtml = "<a class='dark-2 common_font common_div' href='Default.aspx?code=" + code_s + "' onclick='deleteAllCookies();'>ثبت سفارش</a>";

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

                tblPorfolioCollection info_stuff = new tblPorfolioCollection();
                info_stuff.ReadList(Criteria.NewCriteria(tblPorfolio.Columns.id_profolio, CriteriaOperators.Like, stuff_id));

                new_content += "<tr><td style='padding: 10px 0;'>" + stuff_id + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].title_prof + "</td>" +
                                "<td style='padding: 10px 0;'>" + info_stuff[0].pic_addr + "</td>" +
                                "<td style='padding: 10px 0;'>" + list_detail[i].no_stuff + "</td>" +
                                "<td style='padding: 10px 0;'>" + Convert.ToInt32(info_stuff[0].pic_addr) * list_detail[i].no_stuff + "</td></tr>";
                Sum_price += Convert.ToInt32((list_detail[i].pay_one * list_detail[i].no_stuff).ToString());
            }

            invoice_content += new_content;

            invoice_content += "</table><p style='margin-top: 15px;border-top: 1px solid;'>تعداد محصول خریداری: " + (count_stuff) + "</p>" +
                                   "<p>جمع قابل پرداخت: " + Sum_price + "</p>" +
                               "<p>آدرس: " + list_fact[0].addr + "</p>" +
                               "<p>تلفن: " + list_fact[0].tel + "</p>" +
                           "</div>";
            invoice_box.InnerHtml = invoice_content;
            sum_pay_show.InnerText = "ریال" + Sum_price;
        }
        catch (Exception)
        {
            invoice_box.InnerText = "خطا در اتصال به پایگاه داده!";
        }
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        //Response.Redirect("pay.aspx?n=" + code_s);

    }
}