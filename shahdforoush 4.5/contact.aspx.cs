using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Drawing;
using honeyBL;

public partial class contact : System.Web.UI.Page
{
    tblCompanyCollection list = tblCompany.readall();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Literal addr = new Literal();
            addr.Text = "<div class=\"continfo_item common_font\" style=\"text-align: left;\">"+ list[0].addr +"<span style=\"direction: rtl;margin-top: 3%;font-size: larger;text-shadow: gray 1px 1px 3px;margin-left: 95%;color: orange;\">آدرس: </span></div>";
            PlaceHolder.Controls.Add(addr);

            Literal tel = new Literal();
            tel.Text = "<div class=\"continfo_item\"><span style\"direction: ltr;margin-top: 3%;font-size: larger;text-shadow: gray 1px 1px 3px;margin-left: -16px;color: orange;\"> </span>" + list[0].tel_co + "</div>";
            PlaceHolder.Controls.Add(tel);

            Literal email = new Literal();
            email.Text = "<div class=\"continfo_item\" style=\"left: 45px;\"><span style\"direction: ltr;margin-top: 3%;font-size: larger;text-shadow: gray 1px 1px 3px;margin-left: -16px;color: orange;\"><a href=\"" + list[0].name_co + "\">" + list[0].name_co + "</a></div>";
            PlaceHolder.Controls.Add(email);
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