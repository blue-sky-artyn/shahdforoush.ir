using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class _order3 : System.Web.UI.Page
{
    DropDownList drp_no = new DropDownList();
    Button btn_add = new Button();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if ((Request.QueryString["order"] != null))
        //{
        //    code_s = Request.QueryString["oreder"];
        //}

        tblPorfolioCollection list_menu = new tblPorfolioCollection();
        list_menu.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.grp_stuff, Cruder.Core.CriteriaOperators.Equal, 3));
        for (int i = 0; i < list_menu.Count; i++)
        {
            Literal top = new Literal();
            top.Text = "<div style=\"width:270px;float:right;margin-right: 30px;\"><img class=\"box_shadows img_sales\" src=\"img/stuff/stuff1.jpg\"/><div>";
            Place_stuff.Controls.Add(top);

            Literal span1 = new Literal();
            span1.Text = "<span class=\"common_font\">" + list_menu[i].title_prof + "</span><br />";
            Place_stuff.Controls.Add(span1);

            Literal span2 = new Literal();
            span2.Text = "<span class=\"common_font\">" + list_menu[i].code_stuff + "</span><br />";
            Place_stuff.Controls.Add(span2);

            Literal span3 = new Literal();
            span3.Text = "<span class=\"common_font\">" + list_menu[i].pic_addr + "</span>";
            Place_stuff.Controls.Add(span3);

            Literal div1 = new Literal();
            div1.Text = "<div>";
            Place_stuff.Controls.Add(div1);



            drp_no.Items.Add("1");
            drp_no.Items.Add("2");
            drp_no.Items.Add("3");
            drp_no.Items.Add("4");
            drp_no.Items.Add("5");
            drp_no.Items.Add("6");
            drp_no.Items.Add("7");
            drp_no.Items.Add("8");
            drp_no.Items.Add("9");
            drp_no.Items.Add("10");
            drp_no.Width = 75;
            drp_no.CssClass = "drp_sale";
            Place_stuff.Controls.Add(drp_no);

            btn_add.Text = "اضافه به سبد";
            btn_add.Width = 80;
            btn_add.CssClass = "btn_sale";
            btn_add.Click += btn_add_Click;
            Place_stuff.Controls.Add(btn_add);

            Literal end_div = new Literal();
            end_div.Text = "</div></div></div>";
            Place_stuff.Controls.Add(end_div);
        }
    }
    protected void lnk_multi_Click(object sender, EventArgs e)
    {
        Response.Redirect("order1.aspx");
    }

    protected void lnk_250gr_Click(object sender, EventArgs e)
    {
        Response.Redirect("order2.aspx");
    }

    protected void lnk_natural_Click(object sender, EventArgs e)
    {
        Response.Redirect("order3.aspx");
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        Label27.Text = drp_no.Items[drp_no.SelectedIndex].Value;
    }
}