using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_master : System.Web.UI.MasterPage
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
            lbl_user.Text = "Error";
            //lnkbtn_status.ForeColor = Color.Green;
        }
        else if (CurrentMember != null)
        {
            lbl_user.Text = " آقای " + CurrentMember.full_name;
        }
    }
    protected void lnk_logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
