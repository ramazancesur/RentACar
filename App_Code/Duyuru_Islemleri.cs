using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Duyuru_Islemleri
/// </summary>
public class Duyuru_Islemleri
{

    SqlConnection baglanti = new SqlConnection(@"Data Source=94.73.149.9;Network Library=DBMSSOCN;
Initial Catalog=DB150411230441;User ID=USR150411230441;Password=PSS!T3L8Q1%;


");

    private void BaglantiAc()
    {
        baglanti.Open();
    }
    private void BaglantiKapat()
    {
        baglanti.Close();
    }
    public void  Duyuru_Ekle (long uye_id, string Duyuru)
    {
        string date=DateTime.Now.Date.ToString();
        string query = "insert into Haberler values (1,'"+DateTime.Now.Date+"','"+Duyuru+"')";
        //open connection
        BaglantiAc();
        //create command and assign the query and connection from the constructor
        SqlCommand cmd = new SqlCommand(query, baglanti);

        //Execute command
        cmd.ExecuteNonQuery();

        //close connection
        BaglantiKapat();

    }

    public void Delete(long id)
    {

        string query = "delete from Haberler where id=" + id.ToString();

        BaglantiAc();
        SqlCommand cmd = new SqlCommand(query, baglanti);
        cmd.ExecuteNonQuery();
        this.BaglantiKapat();
    }
}