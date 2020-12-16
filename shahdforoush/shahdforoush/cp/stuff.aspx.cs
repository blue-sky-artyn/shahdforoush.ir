using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_stuff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ASPxGridView1.DataSource = tblPorfolio.readall();
        ASPxGridView1.KeyFieldName = "id_profolio";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        ASPxGridView1.DataSource = tblPorfolio.readall();
        ASPxGridView1.KeyFieldName = "id_profolio";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        tblPorfolioCollection lists = new tblPorfolioCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.id_profolio, Cruder.Core.CriteriaOperators.Equal, e.Keys["id_profolio"]));

        lists[0].Delete();
        e.Cancel = true;
    }
    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        tblPorfolio list = new tblPorfolio();
        list.grp_stuff = Convert.ToInt32(e.NewValues["grp_stuff"].ToString());
        list.title_prof = e.NewValues["title_prof"].ToString();
        list.detail = e.NewValues["detail"].ToString();
        list.code_stuff = Convert.ToInt32(e.NewValues["code_stuff"].ToString());
        list.pic_addr = e.NewValues["pic_addr"].ToString();
        list.Create();
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblPorfolioCollection lists = new tblPorfolioCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblPorfolio.Columns.id_profolio, Cruder.Core.CriteriaOperators.Equal, e.Keys["id_profolio"]));

        lists[0].grp_stuff = Convert.ToInt32(e.NewValues["grp_stuff"].ToString());
        lists[0].title_prof = e.NewValues["title_prof"].ToString();
        lists[0].detail = e.NewValues["detail"].ToString();
        lists[0].code_stuff = Convert.ToInt32(e.NewValues["code_stuff"].ToString());
        lists[0].pic_addr = e.NewValues["pic_addr"].ToString();
        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}