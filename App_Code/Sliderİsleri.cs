using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Sliderİsleri
/// </summary>
public class Sliderİsleri
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=MACOS\SQLEXPRESS;Initial Catalog=Polat8091;Integrated Security=True;");

    private void BaglantiAc()
    {
        baglanti.Open();
    }
    private void BaglantiKapat()
    {
        baglanti.Close();
    }

    public void slider_Ekle(long resim_id1, long resim_id2, long resim_id3, long resim_id4, long resim_id5, long resim_id6, long guncelleyen_kisi)
    {
        string query = "insert into Slider values(resim_id1 " + "," + resim_id2 + "," + resim_id3 + "," + resim_id4 + "," + resim_id5 + "," + resim_id6 + ",'" + DateTime.Now.Date.ToString().Replace(".", "-") + "'," + guncelleyen_kisi + ")";
        //open connection
        BaglantiAc();
        //create command and assign the query and connection from the constructor
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Execute command
        cmd.ExecuteNonQuery();
        //close connection
        BaglantiKapat();
    }
    public DataSet get_Slider(int slider_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select *from Slider where id="+slider_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Slider");
        return ds;
    
    }
}