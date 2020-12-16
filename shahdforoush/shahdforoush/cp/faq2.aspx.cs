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
        ASPxGridView1.DataSource = tblNews.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        //fit data into data grid view
        ASPxGridView1.DataSource = tblNews.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        
    }
    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
       
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblNewsCollection lists = new tblNewsCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblNews.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        lists[0].title = e.NewValues["title"].ToString();
        lists[0].detail = e.NewValues["detail"].ToString();
        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}