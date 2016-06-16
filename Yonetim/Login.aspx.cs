using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yonetim_Login : System.Web.UI.Page
{
    KullaniciIslemleri islem;
    protected void Page_Load(object sender, EventArgs e)
    {
        islem = new KullaniciIslemleri();
        if (Session["Kullanici_yetki_id"] == (object)1 || Session["Kullanici_yetki_id"] == (object)2)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("../default.aspx");
        }
        Label1.Visible = false;
        
    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        List <Kullanici> kullanici = new List<Kullanici>();
        kullanici = islem.getKullanici(txtKullaniciAdi.Text, txtPasswd.Text);
        if (kullanici.Count == 0)
        {
            Session["user_yetki_id"] = kullanici[0].yetki_id;
            Label1.Visible = true;
            Label1.Text = "EPosta yada Şifreniz yanlıştır tekrar giriniz ...";
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}