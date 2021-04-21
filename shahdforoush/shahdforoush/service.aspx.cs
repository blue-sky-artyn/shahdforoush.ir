using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

public partial class service : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            tblServicesCollection serviceTbl = new tblServicesCollection();
            serviceTbl.ReadList();

            string serviceStr = "<h4 class='headInModule' style='text-align: right; direction: rtl; margin-bottom: 50px; margin-top: 10px; font-size: 28pt;'>خدمات</h4>";
            for (int i = 0; i < serviceTbl.Count; i++)
            {
                serviceStr += "<div class='span12 module_cont module_text_area'>" +
                               "<h5>"+serviceTbl[i].ServiceTitle+"</h5>" +
                               "<p>" + serviceTbl[i].ServiceDetail + "</p></div>";
            }
            serviceHtml.InnerHtml = serviceStr;
        }
        catch (Exception)
        {
            serviceHtml.InnerHtml = "خطا در بارگذاری اطلاعات.";
        }
    }
}