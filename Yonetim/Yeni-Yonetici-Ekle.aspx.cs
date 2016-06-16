using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yeni_Yonetici_Ekle : System.Web.UI.Page
{
    UyeIslemleri uye = new UyeIslemleri();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }
       
        DropDownList1.DataSource = uye.get_Uye_List();
        DropDownList1.DataTextField = "adi_soyadi";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();

    }
    protected void btn_Yonetici_yap_Click(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }
        else
        {
            try
            {
                uye.Admin_Ekle(Convert.ToInt64(DropDownList1.SelectedItem.Value.ToString()));
                Label1.Visible = true;
                Label1.Text = "işlem başarılı";
            }
            catch
            {
                Label1.Visible = true;
                Label1.Text = "Bir hata oluştu";
            }
        }
    }
}