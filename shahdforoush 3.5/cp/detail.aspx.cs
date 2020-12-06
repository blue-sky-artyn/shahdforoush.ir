using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class cp_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblCompanyCollection list = tblCompany.readall();

        //set field header
        lbl_nameco.Text = "مرکز پخش عسل حکمت";
        lbl_managername.Text = list[Convert.ToInt32(list.Count - 1)].manager;
        lbl_addr.Text = list[Convert.ToInt32(list.Count - 1)].addr;
        lbl_email.Text = "Email: " + list[Convert.ToInt32(list.Count - 1)].name_co;
        lbl_tel.Text = "Tel: " + list[Convert.ToInt32(list.Count - 1)].tel_co;
        //lbl_fax.Text = "Fax: +98 " + list[Convert.ToInt32(list.Count - 1)].fax;

        //set data grid view data
        ASPxGridView1.DataSource = tblCompany.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        //set data grid view data
        ASPxGridView1.DataSource = tblCompany.readall();
        ASPxGridView1.KeyFieldName = "id";
        ASPxGridView1.DataBind();
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        tblCompanyCollection lists = new tblCompanyCollection();
        lists.ReadList(Cruder.Core.Criteria.NewCriteria(tblService.Columns.id, Cruder.Core.CriteriaOperators.Equal, e.Keys["id"]));
        lists[0].manager = e.NewValues["manager"].ToString();
        lists[0].name_co = e.NewValues["name_co"].ToString();
        lists[0].tel_co = e.NewValues["tel_co"].ToString();
        lists[0].addr = e.NewValues["addr"].ToString();

        lists.UpdateList(true);
        e.Cancel = true;
        ASPxGridView1.CancelEdit();
    }
}