using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Drawing;

using bluesky.artyn;
using Cruder.Core;

public partial class contact : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            tblCompanyCollection companyTbl = new tblCompanyCollection();
            companyTbl.ReadList();

            string coDetStr = string.Empty;
            if (companyTbl.Count > 0)
            {
                aboutHtml.InnerText = companyTbl[0].CoDetail;
                if (companyTbl[0].CoAddr.Length > 0)
                    coDetStr += "<li><p><span>آدرس:</span>"+companyTbl[0].CoAddr + "</p></li>";
                if (companyTbl[0].Tel.Length > 0)
                    coDetStr += "<li><p><span>تلفن:</span>"+companyTbl[0].Tel + "</p></li>";
                if(companyTbl[0].Phone.Length > 0)
                    coDetStr += "<li><p><span>فکس:</span>"+companyTbl[0].Phone + "</p></li>";
                if (companyTbl[0].Email.Length > 0)
                    coDetStr += "<li><p><span>ایمیل:</span>"+companyTbl[0].Email + "</p></li>";
                if (companyTbl[0].Instagram.Length > 0)
                    coDetStr += "<li><p><span>Instagram:</span>"+companyTbl[0].Instagram + "</p></li>";
                if(companyTbl[0].Telegram.Length > 0)
                    coDetStr += "<li><p><span>Telegram:</span>"+companyTbl[0].Telegram + "</p></li>";
            }

            contactDetHtml.InnerHtml = coDetStr;
        }
        catch (Exception)
        {
            
        }
    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        var fromAddress = "taheritavanir@gmail.ir";
        var toAddress = "shahdforoush@chmail.ir";
        const string fromPassword = "farhad1639";
        string subject = txt_subject.Text;//"ایمیل ارسالی از از طرف" + txt_email.Text;
        string body = "با عرض سلام آقای/خانم " + txt_name.Text + "\n";
        body += txt_detail.Text;
        try
        {
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 465;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            
            smtp.Send(fromAddress, toAddress, subject, body);

            lbl_msg.ForeColor = Color.Gray;
            lbl_msg.Text = "ایمیل شما با موفقیت به مدیر ارسال شد";
        }
        catch (Exception)
        {
            //lbl_msg.Text = "روال ارسال پیام به مدیر با شکست مواجه شد";
            lbl_msg.Text = "این سرویس موقتا قطع می باشد.";
        }
    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_detail.Text = string.Empty;
        txt_email.Text =  string.Empty;
        txt_name.Text = string.Empty;
        txt_subject.Text = string.Empty;
    }
}