using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ASPxGridView1.DataSource = tblMainCenter.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        ASPxGridView1.DataSource = tblMainCenter.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowUpdated(object sender, DevExpress.Web.Data.ASPxDataUpdatedEventArgs e)
    {
        
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblMainCenterCollection lists = new tblMainCenterCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblMainCenter.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        lists[0].header = e.NewValues["header"].ToString();
        lists[0].detail = e.NewValues["detail"].ToString();
        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}