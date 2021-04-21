using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bluesky.artyn;
using System.Drawing;
using Cruder.Core;
public partial class porfolio_honey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            tblProductGroupCollection productsGrpTbl = new tblProductGroupCollection();
            productsGrpTbl.ReadList();

            tblProductCollection productsTbl = new tblProductCollection();
            productsTbl.ReadList();

            tblProductDetailsCollection productDetTbl = new tblProductDetailsCollection();

            #region tabs products groups

            if (productsGrpTbl.Count > 0)
            {
                productGrpHtml.InnerHtml = "<li class='selected'><a data-option-value='*' href='#filter'>تمام محصولات</a></li>";

                for (int i = 0; i < productsGrpTbl.Count; i++)
                {
                    productGrpHtml.InnerHtml += "<li><a title='یک گزینه را انتخاب کنید' data-option-value='." + productsGrpTbl[i].id + "' href='#filter'>" + productsGrpTbl[i].groupName + "</a></li>";
                }
            }

            #endregion

            #region products
            string productStr = string.Empty;
            for (int i = 0; i < Convert.ToInt32(productsTbl.Count); i++)
            {
                productDetTbl.ReadList(Criteria.NewCriteria(tblProductDetails.Columns.productId, CriteriaOperators.Equal, productsTbl[i].id));

                productStr += "<div data-category='portraits' class='"+ productsTbl[i].productGrpId + " element'><div class='filter_img span6'>" +
                              "<a href='product-det.aspx?productId="+ productsTbl[i].id + "' class='ico_link'>" +
                              "<img src='" + productsTbl[i].productCoverPicAdd + productsTbl[i].productCoverPicName + "' alt='"+ productsTbl[i].productCoverPicName + "' width='570' height='400' />" +
                              "</a><hr /></div>" +
                              "<div class='portfolio_dscr span6' style='direction: rtl; text-align: right; bottom: -180px;'>" +
                              "<span class='common_font' style='color:#FF9900;'>"+productsTbl[i].productName +"</span><div class='porfolio_next'><span class='common_font' style='color:#FF0033;'>"+ productDetTbl[0].productCode + "</span></div><br><span class='common_font'>"+productsTbl[i].productDet+"</span>" +
                              "</div></div>";
            }

            list.InnerHtml = productStr;
            #endregion

        }
        catch (Exception)
        {
            list.InnerText = "صفحه مورد نظر با مشکل مواجه شده است";
        }
    }
}