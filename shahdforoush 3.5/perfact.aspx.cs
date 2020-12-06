using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using Cruder.Core;

public partial class perfact : System.Web.UI.Page
{
    public static tblPorfolioCollection getStuffBasket(int id)
    {
        tblPorfolioCollection list = new tblPorfolioCollection();
        list.ReadList(Criteria.NewCriteria(tblPorfolio.Columns.id_profolio, CriteriaOperators.Like, id));
        if (list == null)
        {
            return null;
        }
        else return list;
    }

    int totalPrice = 0;
    string[] productID;

    char[] sepdash = { '-' };

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            tblFactOnCollection list_no = tblFactOn.readall();
            if (list_no.Count > 0)
                NoFact = (list_no[list_no.Count - 1].id_fact + 1).ToString();
            else
                NoFact = "1";

            no_fact.InnerText = NoFact;

            if (Request.Cookies["ShoppingBasket"] != null)
            {
                HttpCookie MPCookie = (HttpCookie)Request.Cookies["ShoppingBasket"];
                string value = MPCookie.Value.ToString();

                if (value.IndexOf(",") == 0)
                {
                    value = value.Remove(0, 1);
                }

                if (value != "")
                {
                    char[] sep = { ',' };
                    productID = value.Split(sep);
                    tblPorfolioCollection listBasket = new tblPorfolioCollection();


                    totalPrice = 0;
                    string content = "<table border='0' cellpadding='0' cellspacing='0' class='table'>" +
                                        "<tr>" +
                                            "<th>ردیف</th>" +
                                            "<th>نام محصول</th>" +
                                            "<th>قیمت مصوب</th>" +
                                            
                                            "<th>تخفیف</th>" +
                                            "<th>تعداد</th>" +
                                            "<th class='last_cell'></th>" +
                                        "</tr>";

                    
                    for (int i = 0; i < productID.Length; i++)
                    {
                        string[] pro;
                        pro = productID[i].Split(sepdash);
                        listBasket = getStuffBasket(int.Parse(pro[0]));
                        for (int j = 0; j < listBasket.Count; j++)
                        {

                            int price = Convert.ToInt32(listBasket[j].pic_addr);
                            
                            content += "<tr class='first_row' >" +
                                            "<td style='color:orange;'>" + (i + 1) + "</td>" +
                                            "<td>" + listBasket[j].title_prof.ToString() + "</td>" +
                                            "<td>" + price.ToString() + "ریال </td>" +
                                            
                                            "<td>0 ریال </td>" +
                                            "<td>" + pro[1] + "</td>" +
                                            "<td class='last_cell' style='text-align: left;'><a href='#' class='light-2' data-product-id='" + listBasket[j].id_profolio.ToString() + "' data-product-no='" + pro[1] + "' onclick='deleteAllCookies();' >حذف</a></td>" +
                                        "</tr>";
                            totalPrice += (price * int.Parse(pro[1]));
                        }
                    }
                    content +=  "<tr class='first_row'>" +
                                "<td colspan='2'>" + productID.Length + " محصول</td>" +
                                "<td colspan='5' style='text-align: center;' >جمع قابل پرداخت: <big style='color: red;'>" + totalPrice + " ریال</big></td>" +
                            "</tr>" +
                        "</table>";
                    showBasket.InnerHtml = content;

                }


            }
            else
            {
                string err_content = "<table border='0' cellpadding='0' cellspacing='0' class='table'>" +
                                    "<tr>" +
                                        "<th>ردیف</th>" +
                                        "<th>نام محصول</th>" +
                                        "<th>قیمت مصوب</th>" +
                                        "<th>قیمت بورس</th>" +
                                        "<th>تخفیف</th>" +
                                        "<th>تعداد</th>" +
                                        "<th class='last_cell'></th>" +
                                    "</tr>" +
                                    "<tr>" +
                                        "<td colspan='7' class='none_stuff'>کالایی موجود نمی باشد</td>" +
                                    "</tr>" +
                                "</table>";
                showBasket.InnerHtml = err_content;
            }

        }
        catch (Exception)
        {
        showBasket.InnerText = "مشکل در برقراری ارتباط با پایگاه داده!";
        }

        //try
        //{
        Button btn_accept = new Button();
        btn_accept.Text = "تایید اصلی";
        btn_accept.CssClass = "dark-2";
        btn_accept.Click += btn_accept_Click;
        Ph_btn.Controls.Add(btn_accept);
        //}
        //catch (Exception)
        //{

        //}
    }

    string NoFact;
    protected void btn_accept_Click(object sender, EventArgs e)
    {
        try
        {
            tblFactOn list_fact = new tblFactOn();

            list_fact.addr = txt_addr.Text;
            list_fact.id_kharidar = 0;
            list_fact.amount = 0;
            list_fact.date_fact = DateTime.Now.ToShortDateString();
            list_fact.detail = "_";
            list_fact.email = txt_email.Text;
            list_fact.family = txt_fname.Text;
            list_fact.name = txt_name.Text;
            list_fact.ref_num = "0";
            list_fact.res_num = "0";
            list_fact.state = "0";
            list_fact.tel = txt_tel.Text;
            list_fact.mobile = "0";

            list_fact.Create();

            // for save stuff forokhte shode dar table detailfact 
            for (int i = 0; i < productID.Length; i++)
            {
                string[] pro;
                pro = productID[i].Split(sepdash);

                tblDetailStuff list_detail_fact = new tblDetailStuff();

                tblPorfolioCollection list2 = new tblPorfolioCollection();
                list2.ReadList(Criteria.NewCriteria(tblPorfolio.Columns.id_profolio, CriteriaOperators.Like, int.Parse(pro[0])));


                list_detail_fact.id_fact = int.Parse(NoFact);
                list_detail_fact.id_stuff = int.Parse(pro[0]);
                list_detail_fact.name_stuff = list2[0].title_prof;
                list_detail_fact.no_stuff = int.Parse(pro[1]);
                list_detail_fact.pay_one = Convert.ToInt32(list2[0].pic_addr);
                list_detail_fact.detail = "-";

                list_detail_fact.Create();
            }


            Response.Redirect("invoice.aspx?n=" + NoFact);
        }
        catch (Exception)
        {
            //Response.Redirect("admin/sign-in.aspx");
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("order-online.aspx");
    }
}