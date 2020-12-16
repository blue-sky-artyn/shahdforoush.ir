using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_footer : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        tblNewsCollection DetailFooter = tblNews.readall();
        txt_titr1.Text = DetailFooter[Convert.ToInt32(DetailFooter.Count - 1)].title;
        txt_detail1.Text = DetailFooter[Convert.ToInt32(DetailFooter.Count - 1)].detail;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            tblNewsCollection lists = new tblNewsCollection();
            lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblNews.Columns.id, Cruder.Core.CriteriaOperators.Equal, 1));
            lists[0].title = txt_titr1.Text;
            lists[0].detail = txt_detail1.Text;
            lists[0].date_news = "test"
            lists.UpdateList(true);
            
        }
        catch (Exception)
        {

            Label1.Text = "nashod";
        }
        
    }
}