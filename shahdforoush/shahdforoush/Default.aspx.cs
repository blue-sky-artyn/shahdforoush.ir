using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using honeyBL;
using bluesky.artyn;
using Cruder.Core;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            #region News 
            tblNewsDetailsCollection newsTbl = new tblNewsDetailsCollection();
            newsTbl.ReadList();

            string newsStr = string.Empty;

            for (int i = newsTbl.Count - 1; i >= 0; i--)
            {
                newsStr += "<div class='span3 module_cont module_iconboxes'><div class='shortcode_iconbox'>" +
                               "<img src='" + newsTbl[i].topPageFileAddr + "' alt='' />" +
                               "<h4>" + newsTbl[i].newsDetTitle + "</h4>" +
                               "<p style='width: 100%;'>" + newsTbl[i].newsDetGist + "</p>" +
                               "</div></div>";
            }

            newsHTML.InnerHtml = newsStr;
            #endregion


            //if save fact
            string code_s;
            if ((Request.QueryString["code"] != null))
            {
                code_s = Request.QueryString["code"];
                fact_no.InnerText = "شماره سفارش شما :" + code_s;
            }

            #region information
            tblInformationDetailCollection infoTbl = new tblInformationDetailCollection();
            infoTbl.ReadList();

            string infoStr = string.Empty;

            for (int i = infoTbl.Count - 1; i >= 0; i--)
            {
                infoStr += "<li><div class='item'>" +
                        "<div class='img_block'><img class='img_footer' style='width:260px;' src='" + infoTbl[i].frontFile + "' alt='عسل شهد فروش' />" +
                        "</div><div class='carousel_title'>" +
                        "<h4 class='featured_ico_video'>" + infoTbl[i].infDetailTitle + "</h4>" +
                        "</div><div class='carousel_desc'>" +
                        "<div class='exc common_font' style='font-size:10pt;line-height: 20px;font-weight: bold;overflow: hidden;'>" + infoTbl[i].infDetailsGist + "</div>" +
                        "</div></div></li>";
            }

            infoHtml.InnerHtml = infoStr;
            #endregion

        }
        catch (Exception)
        {
            newsHTML.InnerText = "روال انجام کار با شکست مواجه شد.";
        }
    }

}