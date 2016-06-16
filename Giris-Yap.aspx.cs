using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Giris_Yap : System.Web.UI.Page
{
    static int sayac;
    KullaniciIslemleri kullaniciList = new KullaniciIslemleri();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (kullaniciList.getKullanici(TextBox1.Text, TextBox2.Text).Count>0)
        {
            Session["kullanici_id"] = kullaniciList.getKullanici(TextBox1.Text, TextBox2.Text)[0].id;
            if (kullaniciList.getKullanici(TextBox1.Text, TextBox2.Text)[0].yetki_id == 1 || kullaniciList.getKullanici(TextBox1.Text, TextBox2.Text)[0].yetki_id == 2)
            {
                Session["user_yetki_id"] = kullaniciList.getKullanici(TextBox1.Text, TextBox2.Text)[0].yetki_id;
            }
            Response.Redirect("Default.aspx");
        }
        else
        {
            sayac = sayac + 1;
            if (sayac != 3)
            {
                Label3.Text = "Yanlış girdiniz tekrar deneyin...";
            }
            else
            {
                sayac = 0;
                Response.Redirect("Uye-Ol.aspx");
            }
        }
    }
}