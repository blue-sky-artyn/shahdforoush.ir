using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using honeyBL;

public partial class sale : System.Web.UI.Page
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

    public static tblStuffCollection getStuff(string group)
    {
        tblStuffCollection list = new tblStuffCollection();
        list.ReadList(Criteria.NewCriteria(tblStuff.Columns.id_grp, CriteriaOperators.Like, group));
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
            tblStuffCollection listStuff = new tblStuffCollection();

            if (listGroup == null)
            {
                block_accordeon.InnerText = "گروه بندی نشده!";
            }
            else
            {
                for (int i = 0; i < listGroup.Count; i++) {
                    listStuff = getStuff(listGroup[i].id_grp.ToString());
                    content += "<div class='button_outer'><div class='button_inner'>" + listGroup[i].name_grp.ToString() + "</div></div>" +
                                "<div class='accordeon_content'>";
                    for (int j = 0; j < listStuff.Count; j++)
                    {
                        //int x = Convert.ToInt32(listStuff[j].price_borse);
                        //int y = Convert.ToInt32(listStuff[j].price.ToString());
                        //int discount = y - x;
                        content += "<p class='cover'>" +
                                        "<span class='pic alignright'>" +
                                            "<a href='#' class='pic r_coner'><img src='images/drugs/drug.jpg' alt=''></a>" +
                                        "</span>" +
                                        listStuff[j].name_stuff.ToString() + "  (" + listStuff[j].price + ")   <span style='color:red;font-style: italic;'>" + listStuff[j].detail + "</span><br />" +
                                        "قیمت : " + listStuff[j].price.ToString() + " ریال   |  قیمت بورس: <span style='color:yellow;'>" + listStuff[j].price.ToString() + "</span> ریال   |  ساخت: " + listStuff[j].id_stuff.ToString() + "<br />" +
                                        "تعداد:<input name='count_stuffs_input_" + listStuff[j].id_stuff + "' type='text' value='1' class='count-stuffs' />";

                                         if (listStuff[j].name_stuff != "موجود نیست")
                                            content += "<a href='#' class='general_button type_3 add2basket' data-product-id='" + listStuff[j].id_stuff.ToString() + "' >اضافه به لیست خرید</a></p>";
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
}