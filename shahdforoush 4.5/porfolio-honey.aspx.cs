using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;
using System.Drawing;

public partial class porfolio_honey : System.Web.UI.Page
{
    tblPorfolioCollection list_profolio = tblPorfolio.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            for (int i = 0; i < Convert.ToInt32(list_profolio.Count); i++)
            {
                if (list_profolio[i].grp_stuff == 1)
                {
                    #region group porfolio 1
                    Literal div1 = new Literal();
                    div1.Text = "<div data-category=\"portraits\" class=\"accounting element\">";
                    PlaceHolder.Controls.Add(div1);

                    Literal div2 = new Literal();
                    div2.Text = "<div class=\"filter_img span6\">";
                    PlaceHolder.Controls.Add(div2);

                    Literal a1 = new Literal();
                    a1.Text = "<a href=\"javascript:void(0)\" class=\"ico_link\">";
                    PlaceHolder.Controls.Add(a1);

                    Literal img1 = new Literal();
                    img1.Text = "<img src=\"img/portfolio/portfolio1.jpg\" alt=\"عکس لود نشد\" />";
                    PlaceHolder.Controls.Add(img1);

                    Literal end1 = new Literal();
                    end1.Text = "</a><hr /></div>";
                    PlaceHolder.Controls.Add(end1);

                    Literal div3 = new Literal();
                    div3.Text = "<div class=\"portfolio_dscr span6\" style=\"direction: rtl;text-align: right;\">";
                    PlaceHolder.Controls.Add(div3);

                    Label lbl_header = new Label();
                    lbl_header.Text = list_profolio[i].title_prof;
                    lbl_header.ForeColor = Color.FromArgb(0xFF, 0x99, 0x00);
                    lbl_header.CssClass = "common_font";
                    //lbl_header.Font = Font.Equals("tahoma");
                    //lbl_header.Font Bold _ Font-Italic="True" _ Font-Size="12pt"
                    PlaceHolder.Controls.Add(lbl_header);

                    Literal div4 = new Literal();
                    div4.Text = "<div class='porfolio_next'>";
                    PlaceHolder.Controls.Add(div4);

                    Label lbl_code = new Label();
                    lbl_code.Text = "کد کالا:" + list_profolio[i].code_stuff.ToString();
                    lbl_code.ForeColor = Color.FromArgb(0xFF, 0x00, 0x33);
                    lbl_code.CssClass = "common_font";
                    PlaceHolder.Controls.Add(lbl_code);

                    Literal end2 = new Literal();
                    end2.Text = "</div><br />";
                    PlaceHolder.Controls.Add(end2);

                    Label lbl_detail = new Label();
                    lbl_detail.Text = list_profolio[i].detail;
                    lbl_detail.CssClass = "common_font";
                    PlaceHolder.Controls.Add(lbl_detail);

                    Literal end3 = new Literal();
                    end3.Text = "</div></div>";
                    PlaceHolder.Controls.Add(end3);
                    #endregion
                }
                else if (list_profolio[i].grp_stuff == 2)
                {
                    #region group porfolio 2
                    Literal div1 = new Literal();
                    div1.Text = "<div data-category=\"advertising\" class=\"programs element row-fluid\">";
                    PlaceHolder.Controls.Add(div1);

                    Literal div2 = new Literal();
                    div2.Text = "<div class=\"filter_img span6\">";
                    PlaceHolder.Controls.Add(div2);

                    Literal a1 = new Literal();
                    a1.Text = "<a href=\"javascript:void(0)\" class=\"ico_link\">";
                    PlaceHolder.Controls.Add(a1);

                    Literal img1 = new Literal();
                    img1.Text = "<img src=\"img/portfolio/portfolio2.jpg\" alt=\"عکس لود نشد\" />";
                    PlaceHolder.Controls.Add(img1);

                    Literal end1 = new Literal();
                    end1.Text = "</a><hr /></div>";
                    PlaceHolder.Controls.Add(end1);

                    Literal div3 = new Literal();
                    div3.Text = "<div class=\"portfolio_dscr span6\" style=\"direction: rtl;text-align: right;\">";
                    PlaceHolder.Controls.Add(div3);

                    Label lbl_header = new Label();
                    lbl_header.Text = list_profolio[i].title_prof;
                    lbl_header.ForeColor = Color.FromArgb(0xFF, 0x99, 0x00);
                    lbl_header.CssClass = "common_font";
                    //lbl_header.Font = Font.Equals("tahoma");
                    //lbl_header.Font Bold _ Font-Italic="True" _ Font-Size="12pt"
                    PlaceHolder.Controls.Add(lbl_header);

                    Literal div4 = new Literal();
                    div4.Text = "<div class='porfolio_next'>";
                    PlaceHolder.Controls.Add(div4);

                    Label lbl_code = new Label();
                    lbl_code.ForeColor = Color.FromArgb(0xFF, 0x00, 0x33);
                    lbl_code.CssClass = "common_font";
                    lbl_code.Text = "کد کالا:" + list_profolio[i].code_stuff.ToString();
                    PlaceHolder.Controls.Add(lbl_code);

                    Literal end2 = new Literal();
                    end2.Text = "</div><br />";
                    PlaceHolder.Controls.Add(end2);

                    Label lbl_detail = new Label();
                    lbl_detail.CssClass = "common_font";
                    lbl_detail.Text = list_profolio[i].detail;
                    PlaceHolder.Controls.Add(lbl_detail);

                    Literal end3 = new Literal();
                    end3.Text = "</div></div>";
                    PlaceHolder.Controls.Add(end3);
                    #endregion
                }
                else if (list_profolio[i].grp_stuff == 3)
                {
                    #region group profolio 3
                    Literal div1 = new Literal();
                    div1.Text = "<div data-category=\"fashion\" class=\"promotion element row-fluid\">";
                    PlaceHolder.Controls.Add(div1);

                    Literal div2 = new Literal();
                    div2.Text = "<div class=\"filter_img span6\">";
                    PlaceHolder.Controls.Add(div2);

                    Literal a1 = new Literal();
                    a1.Text = "<a href=\"javascript:void(0)\" class=\"ico_link\">";
                    PlaceHolder.Controls.Add(a1);

                    Literal img1 = new Literal();
                    img1.Text = "<img src=\"img/portfolio/portfolio3.jpg\" alt=\"عکس لود نشد\" width=\"570\" height=\"400\" />";
                    PlaceHolder.Controls.Add(img1);

                    Literal end1 = new Literal();
                    end1.Text = "</a><hr /></div>";
                    PlaceHolder.Controls.Add(end1);

                    Literal div3 = new Literal();
                    div3.Text = "<div class=\"portfolio_dscr span6\" style=\"direction: rtl;text-align: right;\">";
                    PlaceHolder.Controls.Add(div3);

                    Label lbl_header = new Label();
                    lbl_header.Text = list_profolio[i].title_prof;
                    lbl_header.ForeColor = Color.Silver;
                    //lbl_header.Font = Font.Equals("tahoma");
                    //lbl_header.Font Bold _ Font-Italic="True" _ Font-Size="12pt"
                    PlaceHolder.Controls.Add(lbl_header);

                    Literal div4 = new Literal();
                    div4.Text = "<div>";
                    PlaceHolder.Controls.Add(div4);

                    Label lbl_code = new Label();
                    lbl_code.Text = "کد کالا:" + list_profolio[i].code_stuff.ToString();
                    PlaceHolder.Controls.Add(lbl_code);

                    Literal end2 = new Literal();
                    end2.Text = "</div><br />";
                    PlaceHolder.Controls.Add(end2);

                    Label lbl_detail = new Label();
                    lbl_detail.Text = list_profolio[i].detail;
                    PlaceHolder.Controls.Add(lbl_detail);

                    Literal end3 = new Literal();
                    end3.Text = "</div></div>";
                    PlaceHolder.Controls.Add(end3);
                    #endregion
                }
                //else if (list_profolio[i].grp_stuff == 4)
                //{
                //    #region group profolio 4
                //    Literal div1 = new Literal();
                //    div1.Text = "<div data-category=\"landscapes\" class=\"accounting element row-fluid\">";
                //    PlaceHolder.Controls.Add(div1);

                //    Literal div2 = new Literal();
                //    div2.Text = "<div class=\"filter_img span6\">";
                //    PlaceHolder.Controls.Add(div2);

                //    Literal a1 = new Literal();
                //    a1.Text = "<a href=\"javascript:void(0)\" class=\"ico_link\">";
                //    PlaceHolder.Controls.Add(a1);

                //    Literal img1 = new Literal();
                //    img1.Text = "<img src=\"img/portfolio/portfolio4.jpg\" alt=\"عکس لود نشد\" width=\"570\" height=\"400\" />";
                //    PlaceHolder.Controls.Add(img1);

                //    Literal end1 = new Literal();
                //    end1.Text = "</a><hr /></div>";
                //    PlaceHolder.Controls.Add(end1);

                //    Literal div3 = new Literal();
                //    div3.Text = "<div class=\"portfolio_dscr span6\" style=\"direction: rtl;text-align: right;\">";
                //    PlaceHolder.Controls.Add(div3);

                //    Label lbl_header = new Label();
                //    lbl_header.Text = list_profolio[i].title_prof;
                //    lbl_header.ForeColor = Color.Silver;
                //    //lbl_header.Font = Font.Equals("tahoma");
                //    //lbl_header.Font Bold _ Font-Italic="True" _ Font-Size="12pt"
                //    PlaceHolder.Controls.Add(lbl_header);

                //    Literal div4 = new Literal();
                //    div4.Text = "<div>";
                //    PlaceHolder.Controls.Add(div4);

                //    Label lbl_code = new Label();
                //    lbl_code.Text = "کد کالا:" + list_profolio[i].code_stuff.ToString();
                //    PlaceHolder.Controls.Add(lbl_code);

                //    Literal end2 = new Literal();
                //    end2.Text = "</div><br />";
                //    PlaceHolder.Controls.Add(end2);

                //    Label lbl_detail = new Label();
                //    lbl_detail.Text = list_profolio[i].detail;
                //    PlaceHolder.Controls.Add(lbl_detail);

                //    Literal end3 = new Literal();
                //    end3.Text = "</div></div>";
                //    PlaceHolder.Controls.Add(end3);
                //    #endregion
                //}
            }

        }
        catch (Exception)
        {
            Literal error = new Literal();
            error.Text = "صفحه مورد نظر با مشکل مواجه شده است";
            PlaceHolder.Controls.Add(error);
        }
    }
}