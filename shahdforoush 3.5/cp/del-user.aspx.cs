using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
public partial class cp_del_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ASPxGridView1.DataSource = tblMember.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        ASPxGridView1.DataSource = tblMember.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {
        tblMemberCollection lists = new tblMemberCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblMember.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));

        lists[0].Delete();
        e.Cancel = true;
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblMemberCollection lists = new tblMemberCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblMember.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));

        lists[0].mobile = e.NewValues["mobile"].ToString();
        lists[0].name_store = e.NewValues["name_store"].ToString();
        lists[0].tel = e.NewValues["tel"].ToString();
        lists[0].email = e.NewValues["email"].ToString();
        lists[0].full_name = e.NewValues["full_name"].ToString();
        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}