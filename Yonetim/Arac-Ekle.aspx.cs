using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Arac_Ekle : System.Web.UI.Page
{
    AracIslemleri araclar;
    Resim_Islemleri resimler;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

        araclar = new AracIslemleri();
        resimler = new Resim_Islemleri();
        Label3.Visible = false;
        drp_renk.DataSource = araclar.Arac_Renk();
        drp_renk.DataTextField = "adi";
        drp_renk.DataValueField = "id";
        drp_renk.DataBind();

        drp_kisi_sayisi.DataSource = araclar.Kisi_Sayisi();
        drp_kisi_sayisi.DataTextField = "sayi";
        drp_kisi_sayisi.DataValueField = "id";
        drp_kisi_sayisi.DataBind();



        drp_vites.DataSource = araclar.Arac_Vites();
        drp_vites.DataTextField = "adi";
        drp_vites.DataValueField = "id";
        drp_vites.DataBind();


        drp_klima.DataSource = araclar.Arac_Klima();
        drp_klima.DataTextField = "Klima";
        drp_klima.DataValueField = "id";
        drp_klima.DataBind();

        drp_yakit.DataSource = araclar.Arac_Yakit();
        drp_yakit.DataTextField = "tip";
        drp_yakit.DataValueField = "id";
        drp_yakit.DataBind();

    }



    public void ResimEkle(int arac_id)
    {
        if (FileUpload1.HasFile)
        {
            string degisken = FileUpload1.PostedFile.ContentType.ToString();

            if (FileUpload1.PostedFile.ContentType.ToString() == "image/jpeg")
            {

                FileUpload1.SaveAs(Server.MapPath("~/ClientBin/AracResim/" + arac_id + "--1.jpg"));

                string path = "ClientBin/AracResim/" + arac_id + "--1.jpg";
                resimler.insert_arac_resim(arac_id, txt_arac_ozellik.Text, path);
                Label3.Visible = false;
            }
            else
            {

                Label3.Text = "Resim Uzantısı jpg/jpeg olmalıdır.";
                Label3.Visible = true;
            }
        }


        if (FileUpload2.HasFile)
        {
            if (FileUpload2.PostedFile.ContentType.ToString() == "image/jpeg" )
            {

                FileUpload2.SaveAs(Server.MapPath("~/ClientBin/AracResim/" + arac_id + "--2.jpg"));

                string path = "ClientBin/AracResim/" + arac_id + "--2.jpg";
                resimler.insert_arac_resim(arac_id, txt_arac_ozellik.Text, path);
                Label3.Visible = false;
            }
            else
            {

                Label3.Text = "Video Uzantısı jpg/jpeg olmalıdır.";
                Label3.Visible = true;
            }
        }


        if (FileUpload3.HasFile)
        {
            if (FileUpload3.PostedFile.ContentType.ToString() == "image/jpeg")
            {
                //Label1.Text = Server.MapPath("~/UrunResim/" + ViewState["UrunId"] + "-3.jpg");
                if (FileUpload3.PostedFile.ContentType.ToString() == "image/jpeg")
                {

                    FileUpload3.SaveAs(Server.MapPath("~/ClientBin/AracResim/" + arac_id + "--3.jpg"));

                    string path = "ClientBin/AracResim/" + arac_id + "--3.jpg";
                    resimler.insert_arac_resim(arac_id, txt_arac_ozellik.Text, path);
                    Label3.Visible = false;
                }
                else
                {

                    Label3.Text = "Video Uzantısı jpg/jpeg olmalıdır.";
                    Label3.Visible = true;
                }
            }
        }
    }
   

    protected void drp_marka_SelectedIndexChanged(object sender, EventArgs e)
    {
        drp_model.DataSource = araclar.Marka_Modelleri(Convert.ToInt32(drp_marka.SelectedItem.Value.ToString()));
        drp_model.DataTextField = "adi";
        drp_model.DataValueField = "id";
        drp_model.DataBind();
    }
    protected void btn_Kaydet_Click(object sender, EventArgs e)
    {
        try
        {
            Session["user_id"] = 1;
            araclar.InsertArac(
                Convert.ToInt32(drp_marka.SelectedItem.Value), Convert.ToInt64(drp_model.SelectedItem.Value), Convert.ToInt32(txt_Fiyat.Text), drp_yakit.SelectedItem.Text,
                Convert.ToInt32(txt_maks_hiz.Text), Convert.ToDouble(txt_yakit_tuketimi.Text), Convert.ToInt32(drp_kisi_sayisi.SelectedItem.Text), drp_vites.SelectedItem.Text, drp_klima.SelectedItem.Text,
                txt_arac_ozellik.Text, Convert.ToInt32(drp_renk.SelectedItem.Value), DateTime.Now, Convert.ToInt64(Session["user_id"]),
                Convert.ToInt32(txt_yil.Text),
                Convert.ToInt32(txt_bagaj.Text)

               );
            ResimEkle(araclar.Son_Arac_id());
        }
        catch (Exception ex)
        {
            throw new Exception("eksik bilgi girdiniz");
        }
    }
}