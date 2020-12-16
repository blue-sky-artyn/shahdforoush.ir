using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class Master : System.Web.UI.MasterPage
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
            lbl_lgoin.Text = "مهمان";
            //lnkbtn_status.ForeColor = Color.Green;
            lnk_status.Text = "";
        }
        else if (CurrentMember != null)
        {
            lbl_username.Text = CurrentMember.full_name;
            lnk_status.Text = "خروج";
        }
    }
    protected void lnk_login_Click(object sender, EventArgs e)
    {
        if (lnk_status.Text == "")
        {
            //Response.Redirect("controlpanel/admin.aspx");
        }
        else if (lnk_status.Text == "خروج")
        {
            Session.Abandon();
            lnk_status.Text = "";
            lbl_username.Text = "مهمان";
            Response.Redirect("Default.aspx");
        }
    }
}
