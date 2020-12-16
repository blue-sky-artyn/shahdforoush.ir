﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using honeyBL;

public partial class _Default : System.Web.UI.Page
{
    tblMainCenterCollection DetailCenter = tblMainCenter.readall();
    tblNewsCollection DetailFooter = tblNews.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if save fact
        string code_s;
        if ((Request.QueryString["code"] != null))
        {
            code_s = Request.QueryString["code"];
            fact_no.InnerText = "شماره سفارش شما :" + code_s ;
        }
       

        try
        {
            lbl_hdr_main1.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 1)].header;
            lbl_detail_main1.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 1)].detail;

            lbl_hdr_main2.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 2)].header;
            lbl_detail_main2.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 2)].detail;

            lbl_hdr_main3.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 3)].header;
            lbl_detail_main3.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 3)].detail;

            lbl_hdr_main4.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 4)].header;
            lbl_detail_main4.Text = DetailCenter[Convert.ToInt32(DetailCenter.Count - 4)].detail;

        }
        catch (Exception)
        {
            lbl_hdr_main1.Text = "روال انجام کار با شکست مواجه شد.";
        }

        //footer detail

        try
        {
            lbl1.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 0)].title;
            lbla.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 0)].detail;

            lbl2.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 1)].title;
            lblb.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 1)].detail;

            lbl3.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 2)].title;
            lblc.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 2)].detail;

            lbl4.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 3)].title;
            lbld.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 3)].detail;

            lbl5.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 4)].title;
            lble.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 4)].detail;

            lbl6.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 5)].title;
            lblf.Text = DetailFooter[Convert.ToInt32(DetailCenter.Count - 5)].detail;
        }
        catch (Exception)
        {
            lbl_hdr_main1.Text = "روال انجام کار با شکست مواجه شد.";
        }
    }
    
}