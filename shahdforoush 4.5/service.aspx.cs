using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class service : System.Web.UI.Page
{
    tblServiceCollection list = tblService.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl_left_row1.Text = list[Convert.ToInt32(list.Count) - 1].detaol_serv;
            lbl_left_row2.Text = list[Convert.ToInt32(list.Count) - 2].detaol_serv;

            lbl_right_row1.Text = list[Convert.ToInt32(list.Count) - 3].detaol_serv;
            lbl_rigth_row2.Text = list[Convert.ToInt32(list.Count) - 4].detaol_serv;

        }
        catch (Exception)
        {
            
        }
    }
}