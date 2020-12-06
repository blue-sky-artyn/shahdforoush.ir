using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_about : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblCompanyCollection list = tblCompany.readall();

        lbl_name_co.Text = "مرکز پخش عسل حکمت";
        lbl_addr.Text = list[0].addr;
        lbl_email_co.Text = list[0].name_co;
        //lbl_fax.Text = list[0].fax;
        lbl_manager.Text = list[0].manager;
        lbl_tel.Text = list[0].tel_co;

        //set txt about
        if (!IsPostBack)
        {
            tblAboutCollection list_about = tblAbout.readall();
            txt_detail.Text = list_about[0].detail;
        }
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (txt_detail.Text != "")
        {
            tblAboutCollection lists = new tblAboutCollection();
            lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblAbout.Columns.id, Cruder.Core.CriteriaOperators.Equal, 1));
            lists[0].detail = txt_detail.Text;
            lists.UpdateList(true);

            lbl_msg.Visible = true;
            lbl_msg.Text = "مقادیر ذخیره شد";
        }
        else
        {
            lbl_msg.Visible = true;
            lbl_msg.Text = "مقدار فیلد توضیحات درباره شرکت خالی است";
        }
    }
}