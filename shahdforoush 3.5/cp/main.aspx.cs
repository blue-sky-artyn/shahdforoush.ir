using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using System.Drawing;

public partial class cp_main : System.Web.UI.Page
{
    public tblManager CurrentMember
    {
        get
        {
            if (Session["tblManager"] == null)
            {
                return null;
            }
            else return ((tblManager)Session["tblManager"]);

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (CurrentMember == null)
        {
            lbl_name.Text = "Error";
            //lnkbtn_status.ForeColor = Color.Green;
        }
        else if (CurrentMember != null)
        {
            lbl_name.Text = CurrentMember.full_name;
        }

        //set username label
        tblManagerCollection lists = new tblManagerCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblManager.Columns.full_name, Cruder.Core.CriteriaOperators.Like, CurrentMember.full_name));
        lbl_username.Text = lists[0].username;
    }

    protected void btn_changepass_Click(object sender, EventArgs e)
    {
        if (txt_pass1.Text == txt_pass2.Text)
        {
            tblManagerCollection lists = new tblManagerCollection();
            lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblManager.Columns.username, Cruder.Core.CriteriaOperators.Like, lbl_username.Text));
            lists[0].pass = txt_pass1.Text;
            lists.UpdateList(true);
            lbl.Text = "عملیات تغییر کلمه عبور با موفقیت انجام شد";
            lbl.ForeColor = Color.FromArgb(0x44, 0x44, 0x44);
        }
        else
        {
            lbl.Text = "تکرار کلمه عبور یکسان نیست";
        }
    }
}