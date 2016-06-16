using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cars_Arac_Detay : System.Web.UI.Page
{
    Html_Parser html_parser = new Html_Parser();
    SehirIslem sehir = new SehirIslem();
    IlceIslemleri ilce = new IlceIslemleri();
    AracIslemleri arac = new AracIslemleri();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["arac_id"] == null)
        {
            Response.Redirect("Default2.aspx");
        }
        if (!IsPostBack)
        {
            DataList1.DataSource = arac.AracDetay(Convert.ToInt32(Session["arac_id"]));
            DataList1.DataBind();
           
            drp_alis_sehir.DataSource = sehir.get_Sehir();
            drp_alis_sehir.DataTextField = "adi";
            drp_alis_sehir.DataValueField = "id";
            drp_alis_sehir.DataBind();

            DrpSehir .DataSource = html_parser.IlListesi();
            DrpSehir.DataBind();

            drp_alis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(1));
            drp_alis_ilce.DataTextField = "adi";
            drp_alis_ilce.DataValueField = "id";
            drp_alis_ilce.DataBind();

            drp_satis_sehir.DataSource = sehir.get_Sehir();
            drp_satis_sehir.DataTextField = "adi";
            drp_satis_sehir.DataValueField = "id";
            drp_satis_sehir.DataBind();

            lbl_gunluk.Text = arac.get_arac(Convert.ToInt32(Session["arac_id"])).kiralama_ucreti.ToString();
            lbl_Ekstra.Text = Convert.ToString(Convert.ToInt32(txt_bebek.Text) * 3 + Convert.ToInt32(txt_nav.Text) * 3 + Convert.ToInt32(txt_sofor.Text) * 40);
            long toplam = Convert.ToInt64(lbl_gunluk.Text) + Convert.ToInt64(lbl_Ekstra.Text);
            lbl_Total.Text = Convert.ToString(Convert.ToInt32(txt_gun.Text) * toplam);

            drp_satis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(1));
            drp_satis_ilce.DataTextField = "adi";
            drp_satis_ilce.DataValueField = "id";
            drp_satis_ilce.DataBind();
        }

     
    }

    protected void Drp_Alis_Sehir_SelectedIndexChanged(object sender, EventArgs e)
    {
        drp_alis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(drp_satis_sehir.SelectedItem.Value));
        drp_alis_ilce.DataTextField = "adi";
        drp_alis_ilce.DataValueField = "id";
        drp_alis_ilce.DataBind();
    }
    protected void drp_teslim_sehir_SelectedIndexChanged(object sender, EventArgs e)
    {

        drp_satis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(drp_alis_sehir.SelectedItem.Value));
        drp_satis_ilce.DataTextField = "adi";
        drp_satis_ilce.DataValueField = "id";
        drp_satis_ilce.DataBind();
    }

    protected void btnKisi_Command(object sender, CommandEventArgs e)
    {

    }
    protected void btnKisi_Click(object sender, EventArgs e)
    {
        Rezervasyon_Islemleri reservation = new Rezervasyon_Islemleri();
        if(Session["kisi_id"]==null){
            Response.Redirect("Uye-Ol.aspx");
      reservation.Insert(Convert.ToInt32(Session["arac_id"]),Convert.ToInt64(Session["kisi_id"]),DateTime.Now.Date,"odenmedi",1);
    }
    }
    protected void btn_Hesapla_Click(object sender, EventArgs e)
    {
        lbl_gunluk.Text = arac.get_arac(Convert.ToInt32(Session["arac_id"])).kiralama_ucreti.ToString();
        lbl_Ekstra.Text = Convert.ToString(Convert.ToInt32(txt_bebek.Text) * 3 + Convert.ToInt32(txt_nav.Text) * 3 + Convert.ToInt32(txt_sofor.Text) * 40);
        long toplam = Convert.ToInt64(lbl_gunluk.Text) + Convert.ToInt64(lbl_Ekstra.Text);
        lbl_Total.Text = Convert.ToString(Convert.ToInt32(txt_gun.Text) * toplam);
    }
    protected void drp_alis_sehir_SelectedIndexChanged(object sender, EventArgs e)
    {

        drp_alis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(drp_alis_sehir.SelectedItem.Value.ToString()));
        drp_alis_ilce.DataTextField = "adi";
        drp_alis_ilce.DataValueField = "id";
        drp_alis_ilce.DataBind();
    }
    protected void drp_satis_sehir_SelectedIndexChanged(object sender, EventArgs e)
    {
        drp_satis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(drp_satis_sehir.SelectedItem.Value.ToString()));
        drp_satis_ilce.DataTextField = "adi";
        drp_satis_ilce.DataValueField = "id";
        drp_satis_ilce.DataBind();
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
    UyeIslemleri uye_islem = new UyeIslemleri();
    Rezervasyon_Islemleri rezervasyon = new Rezervasyon_Islemleri();
    protected void btn_rezervasyon_Click(object sender, EventArgs e)
    {
        Rezervasyon_Islemleri reservation = new Rezervasyon_Islemleri();
        if (Session["kisi_id"] == null)
        {
            Response.Redirect("Uye-Ol.aspx");
        
        }
        else
        {
            try
            {
                reservation.Insert(Convert.ToInt32(Session["arac_id"]), Convert.ToInt64(Session["kisi_id"]), DateTime.Now.Date, "odenmedi", 1);
                Uyeler uye = uye_islem.get_uye(Convert.ToInt64(Session["kisi_id"]));
                string uye_epostasi = uye.e_posta;
                Mail_Gonder("infofp2g@gmail.com", "Ramazan.71", uye_epostasi, "Rezervasyon numarası", rezervasyon.Son_Rezervasyon().ToString());
                lbl_Bilgi.Visible = true;
                lbl_Bilgi.Text = "İşlem Başarılı  Rezervasyın Kodunuz Mailinize gönderildi ";
            }
            catch
            {
                lbl_Bilgi.Visible = true;
                lbl_Bilgi.Text = "Sistemden kaynaklanan bir arıza meydana geldi lütfen daha sonra tekrar deneyiniz ";
            }
        }
    }
}