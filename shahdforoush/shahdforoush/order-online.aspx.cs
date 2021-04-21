using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bluesky.artyn;
using Cruder.Core;


public partial class order_online : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            tblProductGroupCollection productGrpTbl = new tblProductGroupCollection();
            productGrpTbl.ReadList();

            tblProductCollection productTbl = new tblProductCollection();
            
            if (productGrpTbl.Count == 0)
            {
                block_accordeon.InnerText = "گروه بندی نشده!";
            }



            string productsStr = string.Empty;
            for (int i = 0; i < productGrpTbl.Count; i++)
            {
                #region groups on the side

                productGrpHtml.InnerHtml += "<div class='highlighter_item'><a>" + productGrpTbl[i].groupName + "</a></div>";
                #endregion
            
                productTbl.ReadList(Criteria.NewCriteria(tblProduct.Columns.productGrpId, CriteriaOperators.Equal, productGrpTbl[i].id));

                #region groups for stuff
                productsStr += "<div class='button_outer'><div class='button_inner'>" + productGrpTbl[i].groupName + "</div></div>";
                #endregion

                #region products of a group

                for (int j = 0; j < productTbl.Count; j++)
                {
                    productsStr += "<div class='product-all accordeon_content'>" +
                                   "<div class='picture-product'>"+
                                   "<img src='" + productTbl[j].productCoverPicAdd + productTbl[j].productCoverPicName + "' alt='" + productTbl[j].productCoverPicName + "' class='box_shadows' style='padding: 2px;'>" +
                                   "</div><div class='content-product'>"+
                                   "<p class='cover'><span class='pic alignright'>"+
                                   "<a href='product-det.aspx?productId=" + productTbl[j].id + "' class='pic r_coner'>" + productTbl[j].productName + "</a>" +
                                   "<br /></span>قیمت : " + productTbl[j].productPrice + "<br />" +
                                   "تعداد:<input name='count_stuffs_input_" + productTbl[j].id + "' type='text' value='1' disabled class='count-stuffs' />" +
                                   "<a href='#' class='dark-2 add2basket' data-product-id='" + productTbl[j].id + "' style='pointer-events: none;'>اضافه به لیست خرید</a>" +
                                   "</p></div><hr style='height: 10px;' /></div>";
                }
                #endregion

            }

            block_accordeon.InnerHtml = productsStr;

        }
        catch (Exception)
        {
            block_accordeon.InnerText = "خطا در برقراری ارتباط با پایگاه داده!";
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {

    }
}