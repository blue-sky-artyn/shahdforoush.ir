using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bluesky.artyn;
using Cruder.Core;

public partial class faq : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            tblFAQCollection faqTbl = new tblFAQCollection();
            faqTbl.ReadList();

            string faqStr = "<h4 class='headInModule common_font'><a name='blockquote'></a>سوالات رایج درباره عسل:</h4><br />";
            if (faqTbl.Count > 0)
            {
                for (int i = 0; i < faqTbl.Count; i++)
                {
                    #region faq side questions
                    faqQuestionsHtml.InnerHtml += "<li class='menu-item'><a href='#a1'>" + faqTbl[i].faqTitle + "</a><span class='menu_marker'></span></li>";
                    #endregion

                    #region faq questions

                    faqStr += "<blockquote class='type2'><div class='blockquote_wrapper' style='padding-right: 50px;'>" +
                    "<p class='common_font' style='line-height: 32px;'>" + faqTbl[i].faqTitle + "</p>" +
                    "<a class='faq_query common_font' name='a1' style='text-align: left;'>پورحیدر</a>" +
                    "</div></blockquote>";
                    #endregion

                    #region faq answers
                    faqStr += "<div class='faq_div'><p class='common_font' style='line-height: 32px;'>" + faqTbl[i].faqDetail + "</p></div>";
                    #endregion
                }
            }

            faqHtml.InnerHtml = faqStr;
        }
        catch (Exception)
        {
            faqHtml.InnerHtml += "هیج سوال و جواب رایجی وجود ندارد.";
        }
    }
}