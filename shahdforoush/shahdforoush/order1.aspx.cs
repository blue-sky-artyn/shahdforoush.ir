using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using honeyBL;
using System.Net;

public partial class _order1 : System.Web.UI.Page
{
    string code_fact;
    protected void Page_Load(object sender, EventArgs e)
    {
        string text1 = Dns.GetHostName();

        tblFactSaleCollection list_fact = new tblFactSaleCollection();
        list_fact.ReadList(Cruder.Core.Criteria.NewCriteria(tblFactSale.Columns.saler, Cruder.Core.CriteriaOperators.Like, Dns.GetHostByName(text1).AddressList[0].ToString()));


        try
        {
            if (list_fact.Count > 0)
            {
                code_fact = list_fact[0].fact_code;
            }
            else
            {
                tblFactSaleCollection list_no_fact = tblFactSale.readall();
                if (list_no_fact.Count > 0)
                    code_fact = list_no_fact[list_no_fact.Count - 1].fact_code.ToString();
                code_fact = (Convert.ToInt32(code_fact) + 1).ToString();
            }
        }
        catch (Exception)
        {
            code_fact = "1";
        }
        
        //add stuff into basket place holder 
        try
        {
            for (int i = 0; i < list_fact.Count; i++)
            {
                Literal lt1 = new Literal();
                lt1.Text = "<p class=\"common_font\">نام کالا: <span class=\"common_font\" style=\"color:Orange;\">" + list_fact[i].stuff_name + "</span></p>";
                Place_bascket.Controls.Add(lt1);

                Literal lt2 = new Literal();
                lt2.Text = "<p class=\"common_font\">تعداد: <span style=\"color:Orange;\">" + list_fact[i].stuff_nom + "</span></p><hr />";
                Place_bascket.Controls.Add(lt2);

                Literal div1 = new Literal();
                div1.Text = "<div style=\"text-align:center;\">";
                Place_bascket.Controls.Add(div1);

                Literal div2 = new Literal();
                div2.Text = "</div>";
                Place_bascket.Controls.Add(div2);

            }

            if (list_fact.Count < 1)
            {
                //Literal lbl_empty = new Literal();
                //lbl_empty.Text = "<p class=\"common_font\">لیست خالی است</p>";
                //Place_bascket.Controls.Add(lbl_empty);
                btn_goto.Visible = false;
            }
            else
            {
                lbl_emplty.Visible = false;
            }

            //first data
            tblPorfolioCollection list_menu = new tblPorfolioCollection();
            list_menu.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.grp_stuff, Cruder.Core.CriteriaOperators.Equal, 1));

            Literal header = new Literal();
            header.Text = "<h2 class=\"common_font\">عسل های چند گیاه</h2>";
            Place_stuff.Controls.Add(header);

            for (int i = 0; i < list_menu.Count; i++)
            {
                Literal top = new Literal();
                top.Text = "<div style=\"width:270px;float:right;margin-right: 30px;\"><img class=\"box_shadows img_sales\" src=\"img/stuff/stuff1.jpg\"/><div style=\"line-height: 22px;\">";
                Place_stuff.Controls.Add(top);

                Literal span1 = new Literal();
                span1.Text = "<span class=\"common_font\">" + list_menu[i].title_prof + "</span><br />";
                Place_stuff.Controls.Add(span1);

                Literal span2 = new Literal();
                span2.Text = "<span class=\"common_font\" style=\"color: red;\"><span class=\"common_font\" style=\"color: black;\">کد کالا: </span> &nbsp; " + list_menu[i].code_stuff + " &nbsp; </span><br />";
                Place_stuff.Controls.Add(span2);

                Literal span3 = new Literal();
                span3.Text = "<span class=\"common_font\" style=\"color: orange;\"><span class=\"common_font\" style=\"color: black;\">قیمت: </span> &nbsp; " + list_menu[i].pic_addr + " &nbsp; </span>";
                Place_stuff.Controls.Add(span3);

                Literal div1 = new Literal();
                div1.Text = "<div style=\"margin-top: 25px;\">";
                Place_stuff.Controls.Add(div1);

                Literal end_div = new Literal();
                end_div.Text = "</div></div></div>";
                Place_stuff.Controls.Add(end_div);
            }
        }
        catch (Exception)
        {
            
        }
    }

    protected void btn_goto_Click(object sender, EventArgs e)
    {
        Response.Redirect("final-reg.aspx?code=" + code_fact);
    }

    protected void lnk_multi_Click(object sender, EventArgs e)
    {
        tblPorfolioCollection list_menu = new tblPorfolioCollection();
        list_menu.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.grp_stuff, Cruder.Core.CriteriaOperators.Equal, 1));

        Place_stuff.Controls.Clear();

        Literal header = new Literal();
        header.Text = "<h2 class=\"common_font\">عسل های چند گیاه</h2>";
        Place_stuff.Controls.Add(header);

        for (int i = 0; i < list_menu.Count; i++)
        {
            Literal top = new Literal();
            top.Text = "<div style=\"width:270px;float:right;margin-right: 30px;\"><img class=\"box_shadows img_sales\" src=\"img/stuff/stuff1.jpg\"/><div style=\"line-height: 22px;\">";
            Place_stuff.Controls.Add(top);

            Literal span1 = new Literal();
            span1.Text = "<span class=\"common_font\">" + list_menu[i].title_prof + "</span><br />";
            Place_stuff.Controls.Add(span1);

            Literal span2 = new Literal();
            span2.Text = "<span class=\"common_font\" style=\"color: red;\"><span class=\"common_font\" style=\"color: black;\">کد کالا: </span> &nbsp; " + list_menu[i].code_stuff + " &nbsp; </span><br />";
            Place_stuff.Controls.Add(span2);

            Literal span3 = new Literal();
            span3.Text = "<span class=\"common_font\" style=\"color: orange;\"><span class=\"common_font\" style=\"color: black;\">قیمت: </span> &nbsp; " + list_menu[i].pic_addr + " &nbsp; </span>";
            Place_stuff.Controls.Add(span3);

            Literal div1 = new Literal();
            div1.Text = "<div style=\"margin-top: 25px;\">";
            Place_stuff.Controls.Add(div1);

            Literal end_div = new Literal();
            end_div.Text = "</div></div></div>";
            Place_stuff.Controls.Add(end_div);
        }
    }

    protected void lnk_250gr_Click(object sender, EventArgs e)
    {
        tblPorfolioCollection list_menu = new tblPorfolioCollection();
        list_menu.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.grp_stuff, Cruder.Core.CriteriaOperators.Equal, 2));

        Place_stuff.Controls.Clear();

        Literal header = new Literal();
        header.Text = "<h2 class=\"common_font\">عسل های تک گیاه</h2>";
        Place_stuff.Controls.Add(header);

        for (int i = 0; i < list_menu.Count; i++)
        {
            Literal top = new Literal();
            top.Text = "<div style=\"width:270px;float:right;margin-right: 30px;\"><img class=\"box_shadows img_sales\" src=\"img/stuff/stuff1.jpg\"/><div style=\"line-height: 22px;\">";
            Place_stuff.Controls.Add(top);

            Literal span1 = new Literal();
            span1.Text = "<span class=\"common_font\">" + list_menu[i].title_prof + "</span><br />";
            Place_stuff.Controls.Add(span1);

            Literal span2 = new Literal();
            span2.Text = "<span class=\"common_font\" style=\"color: red;\"><span class=\"common_font\" style=\"color: black;\">کد کالا: </span> &nbsp; " + list_menu[i].code_stuff + " &nbsp; </span><br />";
            Place_stuff.Controls.Add(span2);

            Literal span3 = new Literal();
            span3.Text = "<span class=\"common_font\" style=\"color: orange;\"><span class=\"common_font\" style=\"color: black;\">قیمت: </span> &nbsp; " + list_menu[i].pic_addr + " &nbsp; </span>";
            Place_stuff.Controls.Add(span3);

            Literal div1 = new Literal();
            div1.Text = "<div style=\"margin-top: 25px;\">";
            Place_stuff.Controls.Add(div1);

            Literal end_div = new Literal();
            end_div.Text = "</div></div></div>";
            Place_stuff.Controls.Add(end_div);
        }
    }

    protected void lnk_natural_Click(object sender, EventArgs e)
    {
        tblPorfolioCollection list_menu = new tblPorfolioCollection();
        list_menu.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.grp_stuff, Cruder.Core.CriteriaOperators.Equal, 3));

        Place_stuff.Controls.Clear();

        Literal header = new Literal();
        header.Text = "<h2 class=\"common_font\">عسل های طبیعی</h2>";
        Place_stuff.Controls.Add(header);

        for (int i = 0; i < list_menu.Count; i++)
        {
            Literal top = new Literal();
            top.Text = "<div style=\"width:270px;float:right;margin-right: 30px;\"><img class=\"box_shadows img_sales\" src=\"img/stuff/stuff1.jpg\"/><div style=\"line-height: 22px;\">";
            Place_stuff.Controls.Add(top);

            Literal span1 = new Literal();
            span1.Text = "<span class=\"common_font\">" + list_menu[i].title_prof + "</span><br />";
            Place_stuff.Controls.Add(span1);

            Literal span2 = new Literal();
            span2.Text = "<span class=\"common_font\" style=\"color: red;\"><span class=\"common_font\" style=\"color: black;\">کد کالا: </span> &nbsp; " + list_menu[i].code_stuff + " &nbsp; </span><br />";
            Place_stuff.Controls.Add(span2);

            Literal span3 = new Literal();
            span3.Text = "<span class=\"common_font\" style=\"color: orange;\"><span class=\"common_font\" style=\"color: black;\">قیمت: </span> &nbsp; " + list_menu[i].pic_addr + " &nbsp; </span>";
            Place_stuff.Controls.Add(span3);

            Literal div1 = new Literal();
            div1.Text = "<div style=\"margin-top: 25px;\">";
            Place_stuff.Controls.Add(div1);

            Literal end_div = new Literal();
            end_div.Text = "</div></div></div>";
            Place_stuff.Controls.Add(end_div);
        }
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        //TblNewsCollection lists = new TblNewsCollection();
        //lists.ReadList(Cruder.Core.Criteria.NewCriteria(TblNews.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        //lists[0].date = e.NewValues["date"].ToString();
        //lists[0].subject = "1";
        //lists[0].title = string.Empty;
        //lists[0].comment = e.NewValues["comment"].ToString();
        //lists.UpdateList(true);
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_add_Click1(object sender, EventArgs e)
    {
        tblPorfolioCollection list_code = new tblPorfolioCollection();
        list_code.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.code_stuff, Cruder.Core.CriteriaOperators.Equal, Convert.ToInt32(txt_code.Text)));

        lbl_emplty.Visible = false;

        Label lbl = new Label();
        lbl.Text = list_code[0].title_prof + " به لیست خرید اضافه شد";
        lbl.CssClass = "common_font";
        Place_update.Controls.Add(lbl);

        string text1 = Dns.GetHostName();
        //Response.Write("Host Name: " + text1 + "\r\nIP Adress:" + Dns.GetHostByName(text1).AddressList[0].ToString());

        //add to bascket sales list
        tblFactSale list = new tblFactSale();
        list.stuff_code = txt_code.Text;
        list.stuff_name = list_code[0].title_prof.ToString();
        list.stuff_nom = ddl_no.Items[ddl_no.SelectedIndex].ToString();
        list.fact_code = code_fact;
        list.saler = Dns.GetHostByName(text1).AddressList[0].ToString();
        list.Create();

        //refresh page
        //Response.Redirect("order1.aspx");

        //add to place holder
        
                Literal lt1 = new Literal();
                lt1.Text = "<p class=\"common_font\">نام کالا: <span class=\"common_font\" style=\"color:Orange;\">" + list_code[0].title_prof.ToString() + "</span></p>";
                Place_bascket.Controls.Add(lt1);

                Literal lt2 = new Literal();
                lt2.Text = "<p class=\"common_font\">تعداد: <span style=\"color:Orange;\">" + ddl_no.Items[ddl_no.SelectedIndex].ToString() + "</span></p><hr />";
                Place_bascket.Controls.Add(lt2);

                Literal div1 = new Literal();
                div1.Text = "<div style=\"text-align:center;\">";
                Place_bascket.Controls.Add(div1);
        
                Literal div2 = new Literal();
                div2.Text = "</div>";
                Place_bascket.Controls.Add(div2);
        
        //clear data entry
        txt_code.Text = "";
        ddl_no.SelectedIndex = 0;

        btn_goto.Visible = true;
    }
}