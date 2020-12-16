using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_service : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblCompanyCollection list = tblCompany.readall();

        lbl_name_co.Text = "مرکز پخش عسل حکمت";
        lbl_addr.Text = list[0].addr;
        lbl_email_co.Text = list[0].name_co;
        //lbl_fax.Text = list[0].fax;
        lbl_manager.Text = list[0].manager;
        lbl_tel.Text = list[0].tel_co;

        //set data grid view data
        ASPxGridView1.DataSource = tblService.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        //set data grid view data
        ASPxGridView1.DataSource = tblService.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblServiceCollection lists = new tblServiceCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblService.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        lists[0].detaol_serv = e.NewValues["detaol_serv"].ToString();
        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}