using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class about : System.Web.UI.Page
{
    tblAboutCollection list = tblAbout.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            Literal lbl_about = new Literal();
            lbl_about.Text = "<p>"+ list[Convert.ToInt32(list.Count - 1)].detail +"</p>";
            PlaceHolder1.Controls.Add(lbl_about);
        }
        catch (Exception)
        {

        }
    }
}