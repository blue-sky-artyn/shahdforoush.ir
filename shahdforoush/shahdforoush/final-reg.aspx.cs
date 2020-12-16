using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using System.Drawing;
using System.Net;

public partial class final_reg : System.Web.UI.Page
{

    string code_s = "0";

    protected void Page_Load(object sender, EventArgs e)
    {
        //string text1 = Dns.GetHostName();
        //Response.Write("Host Name: " + text1 + "\r\nIP Adress:" + Dns.GetHostByName(text1).AddressList[0].ToString());

        if ((Request.QueryString["code"] != null))
        {
            code_s = Request.QueryString["code"];
        }
        else
        {
            Response.Redirect("default.aspx");
        }

        try
        {
            tblFactSaleCollection list_fact_sale = new tblFactSaleCollection();
            list_fact_sale.ReadList(Cruder.Core.Criteria.NewCriteria(tblFactSale.Columns.fact_code, Cruder.Core.CriteriaOperators.Like, 1));

            for (int i = 0; i < list_fact_sale.Count; i++)
            {
                Literal span1 = new Literal();
                span1.Text = "<span class=\"common_font\">کد کالا: </span>";
                Place_fact.Controls.Add(span1);

                Label lbl_code = new Label();
                lbl_code.Text = list_fact_sale[i].stuff_code.ToString();
                lbl_code.CssClass = "common_font";
                lbl_code.ForeColor = Color.Orange;
                Place_fact.Controls.Add(lbl_code);

                Literal space1 = new Literal();
                space1.Text = "&nbsp;&nbsp;&nbsp;";
                Place_fact.Controls.Add(space1);

                Literal span2 = new Literal();
                span2.Text = "<span class=\"common_font\">نام کالا: </span>";
                Place_fact.Controls.Add(span2);

                Label lbl_name = new Label();
                lbl_name.CssClass = "common_font";
                lbl_name.Text = list_fact_sale[i].stuff_name.ToString();
                lbl_name.ForeColor = Color.Orange;
                Place_fact.Controls.Add(lbl_name);

                Literal space2 = new Literal();
                space2.Text = "&nbsp;&nbsp;&nbsp;";
                Place_fact.Controls.Add(space2);

                Literal span3 = new Literal();
                span3.Text = "<span class=\"common_font\">تعداد کالا: </span>";
                Place_fact.Controls.Add(span3);

                Label lbl_tedad = new Label();
                lbl_tedad.CssClass = "common_font";
                lbl_tedad.Text = list_fact_sale[i].stuff_nom.ToString();
                lbl_tedad.ForeColor = Color.Orange;
                Place_fact.Controls.Add(lbl_tedad);

                Literal space3 = new Literal();
                space3.Text = "&nbsp;&nbsp;&nbsp;";
                Place_fact.Controls.Add(space3);

                Literal br1 = new Literal();
                br1.Text = "<br />";
                Place_fact.Controls.Add(br1);
            }

        }
        catch (Exception)
        {

        }
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {

    }

    protected void btn_del_Click(object sender, EventArgs e)
    {
        //tblFactSaleCollection list_del = new tblFactSaleCollection();
        //list_del.ReadList(Cruder.Core.Criteria.NewCriteria(tblFactSale.Columns.fact_code, Cruder.Core.CriteriaOperators.Like, code_s));
        ////list_del.ReadList(Cruder.Core.Criteria.NewCriteria(tblFactSale.Columns.stuff_code, Cruder.Core.CriteriaOperators.Like, txt_code_del.Text));

        //txt_code_del.Text = list_del[0].id_sale.ToString();
        ////list_del[0].Delete();

        ////refresh place holder
        ////Response.Redirect("final-reg.aspx?code=" + code_s);
    }

    protected void btn_ok_Click(object sender, EventArgs e)
    {
        try
        {
            //check if enter value into txt,exist into db
            if (txt_eshterak.Text == "")
            {
                txt_eshterak.Text = "-1";
            }

            tblMemberCollection list_code_esh = new tblMemberCollection();
            list_code_esh.ReadList(Cruder.Core.Criteria.NewCriteria(tblMember.Columns.id, Cruder.Core.CriteriaOperators.Equal, Convert.ToInt32(txt_eshterak.Text)));

            if (list_code_esh.Count == 0)
            {
                if (txt_tel.Text.Length > 0 && txt_addr.Text.Length > 0)
                {
                    //check full complete componnent 
                    //else enter code then checked exist code then save to db
                    tblOrder list_order = new tblOrder();
                    list_order.fact_code = Convert.ToInt32(code_s);
                    list_order.date_now = DateTime.Now.ToShortDateString();

                    list_order.name_buy = txt_name.Text;
                    list_order.name_co = txt_co.Text;
                    list_order.email = txt_email.Text;
                    list_order.tel = txt_tel.Text;
                    list_order.addr = txt_addr.Text;

                    list_order.act = 0;

                    list_order.Create();

                    //
                    btn_ok.Enabled = false;

                    //msg for save

                    Literal div1 = new Literal();
                    div1.Text = "<div class=\"row-fluid common_div\" style=\"position: fixed;top: 40%;left: 25%;width:675px;\"><div class=\"span12 module_cont module_messageboxes margin10\" style=\"border: 2px dashed black;\">";
                    Place_msg.Controls.Add(div1);

                    Literal div2 = new Literal();
                    div2.Text = "<div class=\"shortcode_messagebox box_type1 common_font\" style=\"background-color: rgb(204, 204, 204);\">";
                    Place_msg.Controls.Add(div2);

                    Literal div3 = new Literal();
                    div3.Text = "<h4 class=\"headInModule common_font\"><a name=\"anchor17\"></a>خرید شما با موفقیت انجام شد.</h4><a href=\"javascript:void(0)\" class=\"box_close\"></a></div></div></div>";
                    Place_msg.Controls.Add(div3);
                }
                else
                {
                    //msg for save

                    Literal div1 = new Literal();
                    div1.Text = "<div class=\"row-fluid common_div\" style=\"position: fixed;top: 40%;left: 25%;width:675px;\"><div class=\"span12 module_cont module_messageboxes margin10\" style=\"border: 2px dashed black;\">";
                    Place_msg.Controls.Add(div1);

                    Literal div2 = new Literal();
                    div2.Text = "<div class=\"shortcode_messagebox box_type1 common_font\" style=\"background-color: rgb(204, 204, 204);\">";
                    Place_msg.Controls.Add(div2);

                    Literal div3 = new Literal();
                    div3.Text = "<h4 class=\"headInModule common_font\"><a name=\"anchor17\"></a>اطلاعات را تکمیل کنید.</h4><a href=\"javascript:void(0)\" class=\"box_close\"></a></div></div></div>";
                    Place_msg.Controls.Add(div3);
                }
            }
            else
            {
                tblOrder list_order = new tblOrder();
                list_order.fact_code = Convert.ToInt32(code_s);
                list_order.date_now = DateTime.Now.ToShortDateString();

                list_order.name_buy = list_code_esh[0].full_name;
                list_order.name_co = list_code_esh[0].name_store;
                list_order.email = list_code_esh[0].email;
                list_order.tel = list_code_esh[0].tel;
                list_order.addr = list_code_esh[0].addr;
                list_order.act = 0;
                list_order.Create();

                //
                btn_ok.Enabled = false;

                //msg for save

                Literal div1 = new Literal();
                div1.Text = "<div class=\"row-fluid common_div\" style=\"position: fixed;top: 40%;left: 25%;width:675px;\"><div class=\"span12 module_cont module_messageboxes margin10\" style=\"border: 2px dashed black;\">";
                Place_msg.Controls.Add(div1);

                Literal div2 = new Literal();
                div2.Text = "<div class=\"shortcode_messagebox box_type1 common_font\" style=\"background-color: rgb(204, 204, 204);\">";
                Place_msg.Controls.Add(div2);

                Literal div3 = new Literal();
                div3.Text = "<h4 class=\"headInModule common_font\"><a name=\"anchor17\"></a>خرید شما با موفقیت انجام شد.</h4><a href=\"javascript:void(0)\" class=\"box_close\"></a></div></div></div>";
                Place_msg.Controls.Add(div3);
            }
        }
        catch (Exception)
        {
            Response.Write("Error,...");
        }
    }

    protected void txt_eshterak_TextChanged(object sender, EventArgs e)
    {
        //if length code>0 then just disable componnent
        if (txt_eshterak.Text.Length > 0)
        {
            txt_name.Enabled = false;
            txt_email.Enabled = false;
            txt_tel.Enabled = false;
            txt_co.Enabled = false;
            txt_addr.Enabled = false;
        }
        else
        {
            txt_name.Enabled = true;
            txt_email.Enabled = true;
            txt_tel.Enabled = true;
            txt_co.Enabled = true;
            txt_addr.Enabled = true;
        }
    }
}