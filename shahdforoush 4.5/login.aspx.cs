using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class login : System.Web.UI.Page
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

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        tblManager memberlist = tblManager.logincheck(txt_email.Text, txt_password.Text);
        if (memberlist == null)
        {
            lbl_status.Visible = true;
        }
        else
        {
            Session["tblManager"] = memberlist;
            Response.Redirect("cp/main.aspx");
        }
    }
    protected void btn_return_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}