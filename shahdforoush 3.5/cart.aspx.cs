using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using honeyBL;

public partial class cart : System.Web.UI.Page
{

    public tblMember CurrentMember 
    {
        get 
        {
            if (Session["tblMember"] == null)
            {
                return null;
            }
            else return ((tblMember)Session["tblMember"]);
        }
    }

    public static tblStuffCollection getStuffBasket(int id)
    {
        tblStuffCollection list = new tblStuffCollection();
        list.ReadList(Criteria.NewCriteria(tblStuff.Columns.id_stuff, CriteriaOperators.Like, id));
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

        if (CurrentMember == null)
	    {
		    //-----------------> Response.Redirect("admin/sign-in.aspx?p=3");
	    }

        //try
        //{
            if (Request.Cookies["ShoppingBasket"] != null)
            {
                HttpCookie MPCookie = (HttpCookie)Request.Cookies["ShoppingBasket"];
                string value = MPCookie.Value.ToString();

                if (value.IndexOf(",") == 0)
                {
                    value=value.Remove ( 0,  1);
                }

                if (value != "")
                {
                    char[] sep = { ',' };
                    productID = value.Split(sep);
                    tblStuffCollection listBasket = new tblStuffCollection();


                    totalPrice = 0;
                    string content = "<table border='0' cellpadding='0' cellspacing='0' class='table tbl-invoice'>" +
                                        "<tr>" +
                                            "<th>ردیف</th>" +
                                            "<th>نام محصول</th>" +
                                            "<th>قیمت مصوب</th>" +
                                            "<th>قیمت بورس</th>" +
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
                            int price = Convert.ToInt32(listBasket[j].price);
                            int price_borse = Convert.ToInt32(listBasket[j].price);
                            int takhfif = price - price_borse;

                            content += "<tr class='first_row' >" +
                                            "<td>" + (i + 1) + "</td>" +
                                            "<td>" + listBasket[j].name_stuff.ToString() + "</td>" +
                                            "<td>" + price.ToString() + "ریال </td>" +
                                            "<td>" + price_borse.ToString() + "ریال </td>" +
                                            "<td>" + takhfif + "ریال </td>" +
                                            "<td>" + pro[1] + "</td>" +
                                            "<td class='last_cell'><a href='#' class='general_button type_1 deldrug' data-product-id='" + listBasket[j].id_stuff.ToString() + "' data-product-no='" + pro[1] + "' >حذف</a></td>" +
                                        "</tr>";
                            totalPrice += (price_borse*int.Parse(pro[1]));
                        }
                    }
                    content += "<tr>" +
                                "<td colspan='7' class='nopadding'>" +
                                    "<div class='line_1'></div>" +
                                "</td> " +
                              "</tr>" +
                              "<tr class='first_row'>" +
                                "<td></td>" +
                                "<td>" + productID.Length + " محصول</td>" +
                                "<td colspan='4' >جمع قابل پرداخت: <big>" + totalPrice + " ریال</big></td>" +
                                "<td class='last_cell'></td>" +
                            "</tr>" +
                        "</table>";
                    showBasket.InnerHtml = content;

                }


            }
            else {
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
                                        "<td colspan='7'>کالایی موجود نمی باشد</td>" +
                                    "</tr>" +
                                "</table>";
               showBasket.InnerHtml = err_content;
            }
           
        //}
        //catch (Exception)
        //{
            //showBasket.InnerText = "مشکل در برقراری ارتباط با پایگاه داده!";
        //}

        //try
        //{
            Button btn_accept = new Button();
            btn_accept.Text = "تایید";
            btn_accept.CssClass = "general_navigation_button back";
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
        //try
        //{
        //    tblFactCollection list_no_fact = tblFact.readall();

        //    tblFact list_fact = new tblFact();

        //    list_fact.Commodity_name = "مشهد";
        //    list_fact.Commodity_name = totalPrice.ToString();
        //    list_fact.Commodity_name = "1392";

        //    if (list_no_fact.Count == 0)
        //    {
        //        list_fact.Commodity_name = "1";
        //    }
        //    else
        //    {
        //        //detail => nu fact
        //        NoFact = ((list_no_fact[list_no_fact.Count - 1].id) + 1 + 2500).ToString();
        //        list_fact.Commodity_name = NoFact;
        //    }

        //    list_fact.email_kharidar = CurrentMember.email;
        //    list_fact.name_kharidar = CurrentMember.name;
        //    list_fact.family_kharidar = CurrentMember.family;
        //    list_fact.id_kharidar = CurrentMember.id_mem;
        //    list_fact.ref_num = "0";
        //    list_fact.res_num = "0";
        //    list_fact.state = "0";
        //    list_fact.tel_kharidar = CurrentMember.tel;

        //    list_fact.Create();

        //    // for save stuff forokhte shode dar table detailfact 
        //    for (int i = 0; i < productID.Length; i++)
        //    {
        //        string[] pro;
        //        pro = productID[i].Split(sepdash);

        //        tblDetailFact list_detail_fact = new tblDetailFact();

        //        tblStuffCollection list2 = new tblStuffCollection();
        //        list2.ReadList(Criteria.NewCriteria(tblStuff.Columns.id_stuff, CriteriaOperators.Like, int.Parse(pro[0])));


        //        list_detail_fact.id_fact = int.Parse(NoFact);
        //        list_detail_fact.id_kala = int.Parse(pro[0]);
        //        list_detail_fact.name_stuff = list2[0].name_stuff;
        //        list_detail_fact.no_stuff = int.Parse(pro[1]);
        //        list_detail_fact.pay_stuff = list2[0].price_borse;
        //        list_detail_fact.det_sale = "1";
        //        list_detail_fact.detail = "1";

        //        list_detail_fact.Create();
        //    }


        //    Response.Redirect("invoice2.aspx?n=" + NoFact);
        //}
        //catch (Exception)
        //{
        //    //Response.Redirect("admin/sign-in.aspx");
        //}
    }
}