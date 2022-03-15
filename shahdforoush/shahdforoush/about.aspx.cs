using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using bluesky.artyn;

public partial class about : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            tblCompanyCollection companyTbl = new tblCompanyCollection();
            companyTbl.ReadList();

            //aboutCoHtml.InnerHtml = "<h4 class='headInModule'>مرکز پخش عسل حکیم باشی</h4>";
            //aboutCoHtml.InnerHtml += companyTbl[0].aboutPage;

        }
        catch (Exception)
        {

        }
    }
}