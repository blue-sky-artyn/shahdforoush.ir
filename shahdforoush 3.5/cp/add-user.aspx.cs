using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Drawing;
using honeyBL;

public partial class cp_add_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_save1_Click(object sender, EventArgs e)
    {

    }

    protected void btn_send1_Click(object sender, EventArgs e)
    {
        var fromAddress = "taheritavanir@gmail.com";
        var toAddress = lbl_email1.Text;
        const string fromPassword = "farhad1639";
        string subject = "ایمیل ارسالی از طرف مدیریت انجمن آتش نشانان خراسان رضوی";
        string body = "با عرض سلام آقای/خانم " + lbl_name1.Text + "\n";
        body += "با تشکر از عضویت شما  در انجمن آتش نشانان خراسان رضوی،عضویت شما با" + "\n\n\n";
        body += "نام کاربری:" + lbl_email1.Text + "\n\n";
        body += "کلمه عبور:" + txt_pass.Text + "\n\n\n";
        body += "انجام شد.شما اکنون می توانید به انجمن وارد شوید.خواهشمند است با توجه به مقررات سایت در این انجمن فعالیت های خود را انجام دهید." + "\n";
        body += "با تشکر مدیریت انجمن آتش نشانان خراسان رضوی";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);

        lbl_msg1.Visible = true;
        lbl_msg1.ForeColor = SystemColors.Highlight;
        lbl_msg1.Text = "مشخصات کاربری ایمیل شد.";
    }

    protected void btn_cancel1_Click(object sender, EventArgs e)
    {

    }

    protected void btn_save2_Click(object sender, EventArgs e)
    {

    }

    protected void btn_send2_Click(object sender, EventArgs e)
    {
        var fromAddress = "taheritavanir@gmail.com";
        var toAddress = lbl_email2.Text;
        const string fromPassword = "farhad1639";
        string subject = "ایمیل ارسالی از طرف مدیریت انجمن آتش نشانان خراسان رضوی";
        string body = "با عرض سلام آقای/خانم " + lbl_name2.Text + "\n";
        body += "با تشکر از عضویت شما  در انجمن آتش نشانان خراسان رضوی،عضویت شما با" + "\n\n\n";
        body += "نام کاربری:" + lbl_email2.Text + "\n\n";
        body += "کلمه عبور:" + txt_pass2.Text + "\n\n\n";
        body += "انجام شد.شما اکنون می توانید به انجمن وارد شوید.خواهشمند است با توجه به مقررات سایت در این انجمن فعالیت های خود را انجام دهید." + "\n";
        body += "با تشکر مدیریت انجمن آتش نشانان خراسان رضوی";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);

        lbl_msg2.Visible = true;
        lbl_msg2.ForeColor = SystemColors.Highlight;
        lbl_msg2.Text = "مشخصات کاربری ایمیل شد.";
    }

    protected void btn_cancel2_Click(object sender, EventArgs e)
    {

    }

    protected void btn_save3_Click(object sender, EventArgs e)
    {

    }

    protected void btn_send3_Click(object sender, EventArgs e)
    {
        var fromAddress = "taheritavanir@gmail.com";
        var toAddress = lbl_email3.Text;
        const string fromPassword = "farhad1639";
        string subject = "ایمیل ارسالی از طرف مدیریت انجمن آتش نشانان خراسان رضوی";
        string body = "با عرض سلام آقای/خانم " + lbl_name3.Text + "\n";
        body += "با تشکر از عضویت شما  در انجمن آتش نشانان خراسان رضوی،عضویت شما با" + "\n\n\n";
        body += "نام کاربری:" + lbl_email3.Text + "\n\n";
        body += "کلمه عبور:" + txt_pass3.Text + "\n\n\n";
        body += "انجام شد.شما اکنون می توانید به انجمن وارد شوید.خواهشمند است با توجه به مقررات سایت در این انجمن فعالیت های خود را انجام دهید." + "\n";
        body += "با تشکر مدیریت انجمن آتش نشانان خراسان رضوی";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);

        lbl_msg3.Visible = true;
        lbl_msg3.ForeColor = SystemColors.Highlight;
        lbl_msg3.Text = "مشخصات کاربری ایمیل شد.";
    }

    protected void btn_cancel3_Click(object sender, EventArgs e)
    {

    }

    protected void btn_save4_Click(object sender, EventArgs e)
    {

    }

    protected void btn_send4_Click(object sender, EventArgs e)
    {
        var fromAddress = "taheritavanir@gmail.com";
        var toAddress = lbl_email4.Text;
        const string fromPassword = "farhad1639";
        string subject = "ایمیل ارسالی از طرف مدیریت انجمن آتش نشانان خراسان رضوی";
        string body = "با عرض سلام آقای/خانم " + lbl_name4.Text + "\n";
        body += "با تشکر از عضویت شما  در انجمن آتش نشانان خراسان رضوی،عضویت شما با" + "\n\n\n";
        body += "نام کاربری:" + lbl_email4.Text + "\n\n";
        body += "کلمه عبور:" + txt_pass4.Text + "\n\n\n";
        body += "انجام شد.شما اکنون می توانید به انجمن وارد شوید.خواهشمند است با توجه به مقررات سایت در این انجمن فعالیت های خود را انجام دهید." + "\n";
        body += "با تشکر مدیریت انجمن آتش نشانان خراسان رضوی";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        smtp.Send(fromAddress, toAddress, subject, body);

        lbl_msg4.Visible = true;
        lbl_msg4.ForeColor = SystemColors.Highlight;
        lbl_msg4.Text = "مشخصات کاربری ایمیل شد.";
    }

    protected void btn_cancel4_Click(object sender, EventArgs e)
    { 
    
    }
}