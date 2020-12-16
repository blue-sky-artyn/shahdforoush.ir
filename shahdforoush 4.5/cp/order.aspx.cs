using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_order : System.Web.UI.Page
{
    string code_s = "0";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if ((Request.QueryString["c"] != null))
            {
                code_s = Request.QueryString["c"];
            }

            tblOrderCollection list_order_ddl = new tblOrderCollection();
            list_order_ddl.ReadList(Cruder.Core.Criteria.NewCriteria(tblOrder.Columns.act, Cruder.Core.CriteriaOperators.Equal, 0));

            if (list_order_ddl.Count <= 0)
            {
                btn_Save.Enabled = false;
            }
            else
            {
                    for (int i = 0; i < list_order_ddl.Count; i++)
                    {
                        Literal p1 = new Literal();
                        p1.Text = "<p style=\"font-weight: initial;margin: 0;font-size: 9pt;\">فاکتور شماره " + list_order_ddl[i].fact_code + "</p>";
                        place_fact.Controls.Add(p1);
                    }

                    //tblOrderCollection list_order = new tblOrderCollection();
                    //list_order.ReadList(Cruder.Core.Criteria.NewCriteria(tblOrder.Columns.fact_code, Cruder.Core.CriteriaOperators.Equal, Convert.ToInt32(txt_code.Text)));

                    //lbl_name.Text = list_order[0].name_buy;
                    //lbl_name_co.Text = list_order[0].name_co;
                    //lbl_email.Text = list_order[0].email;
                    //lbl_tel.Text = list_order[0].tel;
                    //lbl_addr.Text = list_order[0].addr;

                    //lbl_act.Text = "پاسخ داده نشده";

                    //detail  fact
                    //tblFactSaleCollection list = new tblFactSaleCollection();
                    //list.ReadList(Cruder.Core.Criteria.NewCriteria(tblFactSale.Columns.fact_code, Cruder.Core.CriteriaOperators.Like, txt_code.Text));

                    //for (int i = 0; i < list.Count; i++)
                    //{
                    //    Literal span1 = new Literal();
                    //    span1.Text = "<span class=\"common_font\">کد کالا: <span style=\"color:Orange;\">"+ list[0].stuff_code + "</span></span>&nbsp;&nbsp;&nbsp;";
                    //    Place_detail.Controls.Add(span1);

                    //    Literal span2 = new Literal();
                    //    span2.Text = "<span class=\"common_font\">نام کالا: <span style=\"color:Orange;\">" + list[0].stuff_name + "</span></span>&nbsp;&nbsp;&nbsp;";
                    //    Place_detail.Controls.Add(span2);

                    //    Literal span3 = new Literal();
                    //    span3.Text = "<span class=\"common_font\">تعداد درخواستی: <span style=\"color:Orange;\">" +list[0].stuff_nom + "</span></span><br>";
                    //    Place_detail.Controls.Add(span3);
                    //}

                    btn_Save.Enabled = true;
            }
        }
        catch (Exception)
        {

        }
    }
   
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        tblOrderCollection list_order = new tblOrderCollection();
        list_order.ReadList(Cruder.Core.Criteria.NewCriteria(tblOrder.Columns.fact_code, Cruder.Core.CriteriaOperators.Equal, Convert.ToInt32(txt_code.Text)));
        if (list_order.Count > 0)
        {
            list_order[0].act = 1;
            list_order.UpdateList(true);
        }
        Response.Redirect("order.aspx");
    }

    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        //Response.Redirect("order.aspx?c=" + txt_code.Text);
        tblOrderCollection list_order_ddl = new tblOrderCollection();
        list_order_ddl.ReadList(Cruder.Core.Criteria.NewCriteria(tblOrder.Columns.act, Cruder.Core.CriteriaOperators.Equal, 0));

        if (list_order_ddl.Count <= 0)
        {
            btn_Save.Enabled = false;
        }
        else
        {
            place_fact.Controls.Clear();
            for (int j = 0; j < list_order_ddl.Count; j++)
            {
                Literal p1 = new Literal();
                p1.Text = "<p style=\"font-weight: initial;margin: 0;font-size: 9pt;\">فاکتور شماره " + list_order_ddl[j].fact_code + "</p>";
                place_fact.Controls.Add(p1);
            }

            tblOrderCollection list_order = new tblOrderCollection();
            list_order.ReadList(Cruder.Core.Criteria.NewCriteria(tblOrder.Columns.fact_code, Cruder.Core.CriteriaOperators.Equal, Convert.ToInt32(txt_code.Text)));

            if (list_order.Count > 0)
            {
                lbl_name.Text = list_order[0].name_buy;
                lbl_name_co.Text = list_order[0].name_co;
                lbl_email.Text = list_order[0].email;
                lbl_tel.Text = list_order[0].tel;
                lbl_addr.Text = list_order[0].addr;

                lbl_act.Text = "پاسخ داده نشده";
            }
            else
            {
                Place_detail.Controls.Clear();

                lbl_act.Text = "";
                lbl_addr.Text = "";
                lbl_email.Text = "";
                lbl_name.Text = "";
                lbl_name_co.Text = "";
                lbl_tel.Text = "";
            }
            //detail  fact
            tblFactSaleCollection list = new tblFactSaleCollection();
            list.ReadList(Cruder.Core.Criteria.NewCriteria(tblFactSale.Columns.fact_code, Cruder.Core.CriteriaOperators.Like, txt_code.Text));

            for (int i = 0; i < list.Count; i++)
            {
                Literal span1 = new Literal();
                span1.Text = "<span class=\"common_font\">کد کالا: <span style=\"color:Orange;\">" + list[i].stuff_code + "</span></span>&nbsp;&nbsp;&nbsp;";
                Place_detail.Controls.Add(span1);

                Literal span2 = new Literal();
                span2.Text = "<span class=\"common_font\">نام کالا: <span style=\"color:Orange;\">" + list[i].stuff_name + "</span></span>&nbsp;&nbsp;&nbsp;";
                Place_detail.Controls.Add(span2);

                Literal span3 = new Literal();
                span3.Text = "<span class=\"common_font\">تعداد درخواستی: <span style=\"color:Orange;\">" + list[i].stuff_nom + "</span></span><br>";
                Place_detail.Controls.Add(span3);
            }

            btn_Save.Enabled = true;
        }
    }
}