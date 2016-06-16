using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mesaj_Gonder : System.Web.UI.Page
{
    private void Mail_Gonder(string gonderen, string gonderen_sifre, string alan, string baslik, string icerik)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

        string smtpAddress = "smtp.gmail.com";
        int portNumber = 587;
        bool enableSSL = true;

        string emailFrom = gonderen;
        string password = gonderen_sifre;
        string emailTo = alan;
        string subject = baslik;
        string body = icerik;

        using (MailMessage mail = new MailMessage())
        {
            mail.From = new MailAddress(emailFrom);
            mail.To.Add(emailTo);
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;
            // Can set to false, if you are sending pure text.


            using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
            {
                smtp.Credentials = new NetworkCredential(emailFrom, password);
                smtp.EnableSsl = enableSSL;
                smtp.Send(mail);
            }

        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_gonder_Click(object sender, EventArgs e)
    {
        Mail_Gonder(txt_Gonderen_EPosta.Text, txt_Sifre.Text, txt_GonderenEPosta.Text, txtBaslik.Text, txtMesaj.Text);
    }
}