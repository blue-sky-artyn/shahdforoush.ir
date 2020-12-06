using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using honeyBL;
using Cruder.Core;

using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using System.Net;

public partial class resultbuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //RefIdLabel.Text = Request.Params["RefId"];
            int status =Convert.ToInt32(Request.Params["ResCode"]);
            lbl_state.Text = status.ToString();

            if (Request.Params["SaleReferenceId"].Length > 0)

                if (status == 17)
                    lbl_state.Text = "كاربر از انجام تراكنش منصرف شده است";
                else if (status == 0)
                    lbl_state.Text = "تراكنش با موفقيت انجام شد";
                else if (status == 12)
                    lbl_state.Text = "موجودي كافي نيست";
                else
                    lbl_state.Text = "تراکنش با شکست متوقف شد.";


            switch (status)
            {
                case 0: lbl_state.Text = "تراكنش با موفقيت انجام شد"; break;
                case 11: lbl_state.Text = "شماره كارت نامعتبر است"; break;
                case 12: lbl_state.Text = "موجودي كافي نيست"; break;
                case 13: lbl_state.Text = "رمز نادرست است"; break;
                case 14: lbl_state.Text = "تعداد دفعات وارد كردن رمز بيش از حد مجاز است"; break;
                case 15: lbl_state.Text = "كارت نامعتبر است"; break;
                case 16: lbl_state.Text = "دفعات برداشت وجه بيش از حد مجاز است"; break;
                case 17: lbl_state.Text = "كاربر از انجام تراكنش منصرف شده است"; break;

                case 18: lbl_state.Text = "تاريخ انقضاي كارت گذشته است"; break;
                case 19: lbl_state.Text = "مبلغ برداشت وجه بيش از حد مجاز است"; break;
                
                case 111: lbl_state.Text = "مبلغ برداشت وجه بيش از حد مجاز است"; break;

                case 112: lbl_state.Text = "خطاي سوييچ صادر كننده كارت"; break;
                case 113: lbl_state.Text = "پاسخي از صادر كننده كارت دريافت نشد"; break;
                case 114: lbl_state.Text = "دارنده كارت مجاز به انجام اين تراكنش نيست"; break;

                case 21: lbl_state.Text = "پذيرنده نامعتبر است"; break;
                case 23: lbl_state.Text = "خطاي امنيتي رخ داده است"; break;
                case 24: lbl_state.Text = "اطلاعات كاربري پذيرنده نامعتبر است"; break;

                case 25: lbl_state.Text = "مبلغ نامعتبر است"; break;
                case 31: lbl_state.Text = "پاسخ نامعتبر است"; break;
                case 32: lbl_state.Text = "فرمت اطلاعات وارد شده صحيح نمي باشد"; break;

                case 33: lbl_state.Text = "حساب نامعتبر است"; break;
                case 34: lbl_state.Text = "خطاي سيستمي"; break;
                case 35: lbl_state.Text = "تاريخ نامعتبر است"; break;
                case 41: lbl_state.Text = "شماره درخواست تكراري است"; break;

                case 42: lbl_state.Text = "تراكنش sale یافت نشد"; break;
                case 43: lbl_state.Text = "قبلا درخواست verify داده شده است"; break;

                case 44: lbl_state.Text = "درخواست verify یافت نشد"; break;
                case 45: lbl_state.Text = "تراکنش settle یافت شده است"; break;
                case 46: lbl_state.Text = "تراکنش settle یافت نشده است"; break;
                case 47: lbl_state.Text = "تراکنش settle یافت نشد"; break;
                default: lbl_state.Text = "کار با خطا متوقف شد."; break;
            }
                    
            
            lbl_no_fact.Text = Request.Params["SaleOrderId"];
            
            lbl_resid.Text = Request.Params["SaleReferenceId"]; //Receipt Number From Bank

            //save into DB
            try
            {
                tblFactOnCollection list_fact = new tblFactOnCollection();
                list_fact.ReadList(Criteria.NewCriteria(tblFactOn.Columns.id_fact, CriteriaOperators.Equal, Convert.ToInt32(lbl_no_fact.Text)));

                list_fact[0].state = lbl_state.Text;

                if (lbl_resid.Text.Length > 0)
                    list_fact[0].ref_num = lbl_resid.Text;
                else
                    list_fact[0].ref_num = "cancel";

                list_fact[0].res_num = lbl_no_fact.Text;

                list_fact.UpdateList(true);
            }
            catch (Exception)
            {
                
            }
        }

        catch (Exception ex)
        {

        }
    }
}