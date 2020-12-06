using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_footer : System.Web.UI.Page
{
    tblStoriesCollection DetailFooter = tblStories.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        txt_titr1.Text = DetailFooter[Convert.ToInt32(DetailFooter.Count - 1)].title;
        txt_detail1.Text = DetailFooter[Convert.ToInt32(DetailFooter.Count - 1)].comment;
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        try
        {
            tblStoriesCollection lists = new tblStoriesCollection();
            lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblStories.Columns.id_store, Cruder.Core.CriteriaOperators.Equal, 1));
            lists[0].title = txt_titr1.Text;
            lists[0].comment = txt_detail1.Text;
            lists[0].act = Convert.ToInt32("1");
            lists.UpdateList(true);
            Label1.Text = "nashod";
        }
        catch (Exception)
        {

            Label1.Text = "nashod";
        }
        
    }
}