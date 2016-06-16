using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sifre_Unuttum : System.Web.UI.Page
{
    UyeIslemleri islem = new UyeIslemleri();
    KullaniciIslemleri uye = new KullaniciIslemleri();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label3.Visible = false;
        }
      
    }
    private void Mail_Gonder(string gonderen, string gonderen_sifre, string alan, string baslik, string icerik)
    {
    
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(uye.getKullanici(TextBox1.Text).Count==0)
        {
            Label3.Visible = true;
            Label3.Text = "Böyle bir kullanıcı yok";
        }
        else
        {
            Mail_Gonder("infofp2g@gmail.com", "Ramazan.71", TextBox1.Text, "Sifre", islem.get_uye_passwd(TextBox1.Text));
        }
    }
}