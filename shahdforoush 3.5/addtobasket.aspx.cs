using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using honeyBL;

public partial class addtobasket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            //tedadmohsol.InnerText = "تعداد محصول :";
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
                    string[] productID = value.Split(sep);
                    tedadmohsol.InnerText += productID.Length.ToString();
                }

            }
            else {
                tedadmohsol.InnerText += "0";
            }
        }
        catch (Exception)
        {
            tedadmohsol.InnerText = "خطا";
        }

    }
}