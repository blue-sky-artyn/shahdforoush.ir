using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using Cruder.Core;


public partial class order_online : System.Web.UI.Page
{
    public static tblGroupCollection readall()
    {
        tblGroupCollection list = new tblGroupCollection();
        list.ReadList();
        if (list == null)
        {
            return null;
        }
        else return list;
    }

    public static tblPorfolioCollection getStuff(string group)
    {
        ;tblPorfolioCollection list = new tblPorfolioCollection();
        list.ReadList(Criteria.NewCriteria(tblPorfolio.Columns.grp_stuff, CriteriaOperators.Like, group));
        if (list == null)
        {
            return null;
        }
        else return list;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string content = "";
            tblGroupCollection listGroup = tblGroup.readall();
            tblPorfolioCollection listStuff = new tblPorfolioCollection();

            if (listGroup == null)
            {
                block_accordeon.InnerText = "گروه بندی نشده!";
            }
            else
            {
                for (int i = 0; i < listGroup.Count; i++)
                {
                    listStuff = getStuff(listGroup[i].id_grp.ToString());

                    if (listGroup[i].name_grp.ToString() == "1")
                    {
                        content += "<div class='button_outer'><div class='button_inner'>" + "عسل های چند گیاه" + "</div></div>" +
                                "<div class='accordeon_content'>";
                    }
                    else if (listGroup[i].name_grp.ToString() == "2")
                    {
                        content += "<div class='button_outer'><div class='button_inner'>" + "عسل های تک گیاه" + "</div></div>" +
                                "<div class='accordeon_content'>";
                    }
                    else
                    {
                        content += "<div class='button_outer'><div class='button_inner'>" + "سایر محصولات" + "</div></div>" +
                                "<div class='accordeon_content'>";
                    }
                    
                    for (int j = 0; j < listStuff.Count; j++)
                    {
                        //int x = Convert.ToInt32(listStuff[j].price_borse);
                        //int y = Convert.ToInt32(listStuff[j].price.ToString());
                        //int discount = y - x;
                        content += "<p class='cover'>" +
                                        "<span class='pic alignright'>" +
                                            "<a href='#' class='pic r_coner'><img src='img/stuff.jpg' alt='عکس لود نشد' class='box_shadows' style='padding: 2px;'></a>" +
                                        "</span>" +
                                        listStuff[j].title_prof + "<br />" +
                                        "قیمت : " + listStuff[j].pic_addr + "<br />" +
                                        "تعداد:<input name='count_stuffs_input_" + listStuff[j].id_profolio + "' type='text' value='1' disabled class='count-stuffs' />";

                            content += "<a href='#' class='dark-2 add2basket' data-product-id='" + listStuff[j].id_profolio.ToString() + "' style='pointer-events: none;' >اضافه به لیست خرید</a></p>";

                        content += "<hr style='height: 10px;' />";
                    }

                    content += "</div>";
                }

                block_accordeon.InnerHtml = content;
            }

        }
        catch (Exception)
        {
            block_accordeon.InnerText = "خطا در برقراری ارتباط با پایگاه داده!";
        }
    }

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        string content = "";
    //        tblGroupCollection listGroup = tblGroup.readall();
    //        tblStuffCollection listStuff = new tblStuffCollection();

    //        if (listGroup == null)
    //        {
    //            block_accordeon.InnerText = "گروه بندی نشده!";
    //        }
    //        else
    //        {
    //            for (int i = 0; i < listGroup.Count; i++)
    //            {
    //                listStuff = getStuff(listGroup[i].id_grp.ToString());
    //                content += "<div class='button_outer'><div class='button_inner'>" + listGroup[i].id_grp.ToString() + "</div></div>" +
    //                            "<div class='accordeon_content'>";
    //                for (int j = 0; j < listStuff.Count; j++)
    //                {
    //                    //int x = Convert.ToInt32(listStuff[j].price_borse);
    //                    //int y = Convert.ToInt32(listStuff[j].price.ToString());
    //                    //int discount = y - x;
    //                    content += "<p class='cover'>" +
    //                                    "<span class='pic alignright'>" +
    //                                        "<a href='#' class='pic r_coner'><img src='img/stuff.jpg' alt=''></a>" +
    //                                    "</span>" +
    //                                    listStuff[j].name_stuff +"<br />" +
    //                                    "قیمت : " + listStuff[j].price + " ریال   |<br />" +
    //                                    "تعداد:<input name='count_stuffs_input_" + listStuff[j].id_stuff + "' type='text' value='1' class='count-stuffs' /><a href='#' class='dark-2' data-product-id='" + listStuff[j].id_stuff.ToString() + "' >اضافه به لیست خرید</a>" +
    //                                "</p>";
    //                }

    //                content += "</div>";
    //            }

    //            block_accordeon.InnerHtml = content;
    //        }

    //    }
    //    catch (Exception)
    //    {
    //        block_accordeon.InnerText = "خطا در برقراری ارتباط با پایگاه داده!";
    //    }
    //}

    protected void Button9_Click(object sender, EventArgs e)
    {

    }
}