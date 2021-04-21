using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using bluesky.artyn;

public partial class login : System.Web.UI.Page
{
    public tblAdmin CurrentMember
    {
        get
        {
            if (Session["tblAdmin"] == null)
            {
                return null;
            }
            else return ((tblAdmin)Session["tblAdmin"]);

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        tblAdmin memberlist = tblAdmin.loginCheck(txt_email.Text, txt_password.Text);
        if (memberlist == null)
        {
            lbl_status.Visible = true;
        }
        else
        {
            Session["tblAdmin"] = memberlist;
            Response.Redirect("admin/default.aspx");
        }
    }
    protected void btn_return_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}