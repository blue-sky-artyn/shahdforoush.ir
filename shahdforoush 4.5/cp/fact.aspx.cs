using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using Cruder.Core;

public partial class cp_fact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //set ddlFact number
        if (Page.IsPostBack == false)
        {
            tblFactOnCollection list_id_inqiry = tblFactOn.readall();
            ddl_no_fact.DataSource = list_id_inqiry;
            ddl_no_fact.DataBind();
        }


        //set value for dgv
        ASPxGridView1.DataSource = tblFactOn.readall();
        ASPxGridView1.KeyFieldName = "id_fact";
        ASPxGridView1.DataBind();


    }
    protected void btn_refresh_Click(object sender, EventArgs e)
    {
        try
        {
            tblDetailStuffCollection lists = new tblDetailStuffCollection();
            lists.ReadList(Criteria.NewCriteria(tblDetailStuff.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(ddl_no_fact.Items[ddl_no_fact.SelectedIndex].Value)));

            lbl_no_fact.Text = lists[0].id_fact.ToString();

            ////set value for dgv
            //ASPxGridView2.DataSource = lists;
            //ASPxGridView2.KeyFieldName = "id_fact";
            //ASPxGridView2.DataBind();
			
			string content = "";
			content = "<div class='title-header'><span class='title'>شماره کالا</span><span class='title'>نام کالا</span><span class='title'>تعداد</span><span class='title'>بهای کالا</span></div>"; 
			
			for (int i = 0; i < lists.Count; i++)
			{
				content += "<div class='title-header'>";
				content += "<span class='title1'>"+ lists[i].id_stuff +"</span>";
				content += "<span class='title2'>"+ lists[i].name_stuff +"</span>";
				content += "<span class='title3'>"+ lists[i].pay_one +"</span>";
				content += "<span class='title4'>"+ lists[i].no_stuff +"</span>";
				content += "</div>";
			}
			Place_preview.InnerHtml = content;
			
        }
        catch (Exception)
        {
            Literal text = new Literal();
            text.Text = "فاکتور خالی است";
            Place_detail.Controls.Add(text);
            
        }
        
    }
}