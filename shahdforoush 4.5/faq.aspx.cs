using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class faq : System.Web.UI.Page
{
    tblFaqCollection list = tblFaq.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            for (int i = 0; i < Convert.ToInt32(list.Count); i++)
            {
                Literal blockquote = new Literal();
                blockquote.Text = "<blockquote class=\"type2\">";
                PlaceHolder.Controls.Add(blockquote);

                Literal div1 = new Literal();
                div1.Text = "<div class=\"blockquote_wrapper\" style=\"padding-right: 50px;\">";
                PlaceHolder.Controls.Add(div1);

                Literal p1 = new Literal();
                p1.Text = "<p class=\"common_font\" style=\"line-height: 32px;\">" + list[i].question + "</p>";
                PlaceHolder.Controls.Add(p1);

                Literal goto_sender = new Literal();
                goto_sender.Text = "<a class=\"faq_query common_font\" name=\"a" + list[i].id + "\" style=\"text-align: left;\">پورحیدر</a>";
                PlaceHolder.Controls.Add(goto_sender);

                Literal end1 = new Literal();
                end1.Text = "</div></blockquote>";
                PlaceHolder.Controls.Add(end1);

                Literal div2 = new Literal();
                div2.Text = "<div class=\"faq_div\">";
                PlaceHolder.Controls.Add(div2);

                Literal p2 = new Literal();
                p2.Text = "<p class=\"common_font\" style=\"line-height: 32px;\">" + list[i].answer + "</p></div>";
                PlaceHolder.Controls.Add(p2);

                //menu add
                Literal menu = new Literal();
                menu.Text= "<li class=\"menu-item\"><a href=\"#a"+list[i].id.ToString()+"\">"+list[i].question+"</a></li>";
                place_menu.Controls.Add(menu);

            }
        }
        catch (Exception)
        {

        }
    }
}