using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using honeyBL;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_name.Text != "" && txt_tel.Text != "" && txt_addr.Text != "")
            {
                tblMember list = new tblMember();
                list.full_name = txt_name.Text;
                list.no_code_meli = txt_code_meli.Text;
                list.name_store = txt_name_co.Text;
                list.email = txt_email.Text;
                list.tel = txt_email.Text;
                list.mobile = txt_mob.Text;
                list.addr = txt_addr.Text;
                list.Create();

                //msg it`s ok save
                lbl_msg.ForeColor = Color.Orange;
                lbl_msg.CssClass = "common_font";

                tblMemberCollection list_mem = tblMember.readall();
                lbl_msg.Text = "ذخیره سازی با موفقیت انجام گردید" + "  کد کاربری شما  :  " + list_mem[(list_mem.Count) - 1].id.ToString();

                //clear field
                txt_addr.Text = "";
                txt_code_meli.Text = "";
                txt_email.Text = "";
                txt_mob.Text = "";
                txt_name.Text = "";
                txt_name_co.Text = "";
                txt_tel.Text = "";
            }
        }
        catch (Exception)
        {
            //msg error
            lbl_msg.ForeColor = Color.Red;
            lbl_msg.CssClass = "common_font";
            lbl_msg.Text = "روال ذخیره سازی با شکست مواجه شد";
        }
    }
}