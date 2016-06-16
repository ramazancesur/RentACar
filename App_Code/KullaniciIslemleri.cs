using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for KullaniciIslemleri
/// </summary>
public class KullaniciIslemleri
{
    public KullaniciIslemleri()
    {
        //
        // TODO: Add constructor logic here
        //
    }
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
    public List<Kullanici> getKullanici(string e_posta)
    {
        BaglantiAc();
        string query = "select * from Uyeler";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Kullanici> kullaniciList = new List<Kullanici>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Kullanici kullanici = new Kullanici();

                kullanici.id = Convert.ToInt64(dataReader["id"] + "");
                kullanici.adi = dataReader["uye_adi"] + "";
                kullanici.soyadi = dataReader["uye_soyadi"] + "";
                kullanici.e_posta = dataReader["uye_e_posta"] + "";
                kullanici.sifre = dataReader["uye_sifre"] + "";
                kullanici.tel_no = dataReader["uye_tel_no"] + "";
                kullanici.yetki_id = Convert.ToInt32(dataReader["yetki_id"] + "");
                kullaniciList.Add(kullanici);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return kullaniciList;
        }

        else
        {
            return null;
        }

    }
    public List<Kullanici> KullaniciListesi(int aracsayisi, int sayfa_numarasi)
    {

        BaglantiAc();
        string query = "select top" + aracsayisi * sayfa_numarasi + "* from Uyeler";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Kullanici> kullaniciList = new List<Kullanici>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Kullanici kullanici = new Kullanici();

                kullanici.id = Convert.ToInt64(dataReader["id"] + "");
                kullanici.adi = dataReader["uye_adi"] + "";
                kullanici.soyadi = dataReader["uye_soyadi"] + "";
                kullanici.e_posta = dataReader["uye_e_posta"] + "";
                kullanici.sifre = dataReader["uye_sifre"] + "";
                kullanici.tel_no = dataReader["uye_tel_no"] + "";
                kullanici.yetki_id = Convert.ToInt32(dataReader["yetki_id"] + "");
                kullaniciList.Add(kullanici);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return kullaniciList;
        }

        else
        {
            return null;
        }
    }
    public void Insert(string adi, string soyadi, string e_posta, string sifre, long resim_id, int yetki_id)
    {
        string query = "INSERT INTO uyeler (uye_adi,soyadi,uye_eposta,  uye_sifre,  uye_resim_id, yetki_id) VALUES(" + adi.ToString() + "," + soyadi + "," + e_posta + "," + sifre + "," + resim_id + "," + yetki_id.ToString();

        //open connection
        BaglantiAc();
        //create command and assign the query and connection from the constructor
        SqlCommand cmd = new SqlCommand(query, baglanti);

        //Execute command
        cmd.ExecuteNonQuery();

        //close connection
        BaglantiKapat();
    }


    //Update statement
    public void Update(long id, string adi, string soyadi, string e_posta, string sifre, long resim_id, int yetki_id)
    {
        string query = "UPDATE Uyeler SET uye_adi='" + adi + "' ,soyadi='" + soyadi + "' ,uye_eposta like '" + e_posta + "' ,uye_sifre like '" + sifre +
            "',uye_resim_id like'" + resim_id + "',yetki_id=" + yetki_id + " WHERE id=" + id;

        //Open connection
        BaglantiAc();
        //create mysql command
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Assign the query using CommandText
        cmd.CommandText = query;
        //Assign the connection using Connection
        cmd.Connection = baglanti;

        //Execute query
        cmd.ExecuteNonQuery();

        //close connection
        BaglantiKapat();
    }


    //Delete statement
    public void Delete(long id, string name)
    {
        string query;
        if (name != null)
        {
            query = "DELETE FROM Uyeler WHERE name==" + name;
        }
        else
        {
            query = "delete from Uyeler where id==" + id.ToString();
        }
        BaglantiAc();
        SqlCommand cmd = new SqlCommand(query, baglanti);
        cmd.ExecuteNonQuery();
        this.BaglantiKapat();
    }

    public List<Kullanici> getKullanici(string EPosta, string Sifre)
    {
        BaglantiAc();
        string query = "select * from Uyeler where uye_eposta like '" + EPosta + "' and uye_sifre like '" + Sifre + "'";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Kullanici> kullaniciList = new List<Kullanici>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Kullanici kullanici = new Kullanici();

                kullanici.id = Convert.ToInt64(dataReader["id"] + "");
                kullanici.adi = dataReader["uye_adi"] + "";
                kullanici.soyadi = dataReader["soyadi"] + "";
                kullanici.e_posta = dataReader["uye_eposta"] + "";
                kullanici.sifre = dataReader["uye_sifre"] + "";
                kullanici.tel_no = dataReader["uye_tel_no"] + "";
                kullanici.yetki_id = Convert.ToInt32(dataReader["yetki_id"] + "");
                kullaniciList.Add(kullanici);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return kullaniciList;
        }

        else
        {
            return null;
        }
    }
}
