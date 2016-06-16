using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Uye_Ekle : System.Web.UI.Page
{
    Resim_Islemleri resimler;
    UyeIslemleri uye;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

        resimler=new Resim_Islemleri();
        uye = new UyeIslemleri();
        Label3.Visible=false;
    }
    public void ResimEkle(long uye_id)
    {
        if (FileUpload1.HasFile)
        {
            string degisken = FileUpload1.PostedFile.ContentType.ToString();

            if (FileUpload1.PostedFile.ContentType.ToString() == "image/jpeg")
            {

                FileUpload1.SaveAs(Server.MapPath("~/ClientBin/UyeResim/" + uye_id + "-1.jpg"));

                string path = "ClientBin/UyeResim/" + uye_id + "--1.jpg";
                resimler.insert_Uye_resim(uye_id,uye_id+"numaralı uye resmi",path);
                Label3.Visible = false;
               
            }
            else
            {

                Label3.Text = "Resim Uzantısı jpg/jpeg olmalıdır.";
                Label3.Visible = true;
            }
        }


        }
    
   
    protected void btn_Kaydet_Click(object sender, EventArgs e)
    {
        uye.uye_ekle_admin_panel(txt_uye_adi.Text, txt_uye_soyadi.Text, txt_eposta.Text, txt_sifre.Text, txt_tel_no.Text);
        uye.Uye_Resim_Guncelle(uye.get_Son_Uye_Id());
    }
}