using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_faq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //fit data into data grid view
        ASPxGridView1.DataSource = tblFaq.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        //fit data into data grid view
        ASPxGridView1.DataSource = tblFaq.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        tblFaqCollection lists = new tblFaqCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblFaq.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        lists[0].Delete();
        e.Cancel = true;
    }
    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        tblFaq list = new tblFaq();
        list.question = e.NewValues["question"].ToString();
        list.answer = e.NewValues["answer"].ToString();
        list.Create();
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblFaqCollection lists = new tblFaqCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblFaq.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        lists[0].question = e.NewValues["question"].ToString();
        lists[0].answer = e.NewValues["answer"].ToString();
        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}