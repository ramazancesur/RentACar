using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    AracIslemleri arac = new AracIslemleri();
    SehirIslem sehir = new SehirIslem();
    IlceIslemleri ilce = new IlceIslemleri();
    Html_Parser html_parser = new Html_Parser();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        rptImages.DataSource= arac.Default_Arac_Sayfa();
           rptImages.DataBind();
            Drp_Alis_Sehir.DataSource = sehir.get_Sehir();
            Drp_Alis_Sehir.DataTextField = "adi";
            Drp_Alis_Sehir.DataValueField = "id";
            Drp_Alis_Sehir.DataBind();

            Drp_il.DataSource = html_parser.IlListesi();
            Drp_il.DataBind();

            Drp_ilce.DataSource = html_parser.IlListesi();
            Drp_ilce.DataBind();

            drp_teslim_sehir.DataSource = sehir.get_Sehir();
            drp_teslim_sehir.DataTextField = "adi";
            drp_teslim_sehir.DataValueField = "id";
            drp_teslim_sehir.DataBind();

            drp_teslim_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(1));
            drp_teslim_ilce.DataTextField = "adi";
            drp_teslim_ilce.DataValueField = "id";
            drp_teslim_ilce.DataBind();

            Drp_alis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(1));
            Drp_alis_ilce.DataTextField = "adi";
            Drp_alis_ilce.DataValueField = "id";
            Drp_alis_ilce.DataBind();
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    
  
    protected void TextBox4_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void Drp_Alis_Sehir_SelectedIndexChanged(object sender, EventArgs e)
    {
        Drp_alis_ilce.DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(Drp_Alis_Sehir.SelectedItem.Value));
        Drp_alis_ilce.DataTextField = "adi";
        Drp_alis_ilce.DataValueField = "id";
        Drp_alis_ilce.DataBind();
    }
    protected void drp_teslim_sehir_SelectedIndexChanged(object sender, EventArgs e)
    {
      drp_teslim_ilce .DataSource = ilce.get_Sehir_Ilce(Convert.ToInt32(drp_teslim_sehir.SelectedItem.Value));
        drp_teslim_ilce.DataTextField = "adi";
        drp_teslim_ilce.DataValueField = "id";
        drp_teslim_ilce.DataBind();
    }
    protected void btnKisi_Command(object sender, CommandEventArgs e)
    {
        Session["arac_id"] = e.CommandArgument.ToString();
        Response.Redirect("Arac-Detay.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drp_il_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMesafe.Text = html_parser.MesafeAndSaat(Drp_il.SelectedItem.Text.ToString(), Drp_ilce.SelectedItem.Text.ToString())[0];
        lblSaat.Text = html_parser.MesafeAndSaat(Drp_il.SelectedItem.Text.ToString(), Drp_ilce.SelectedItem.Text.ToString())[1];
    }
    protected void Drp_ilce_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMesafe.Text = html_parser.MesafeAndSaat(Drp_il.SelectedItem.Text.ToString(), Drp_ilce.SelectedItem.Text.ToString())[0];
        lblSaat.Text = html_parser.MesafeAndSaat(Drp_il.SelectedItem.Text.ToString(), Drp_ilce.SelectedItem.Text.ToString())[1];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Fiyatlar.aspx");
    }
}