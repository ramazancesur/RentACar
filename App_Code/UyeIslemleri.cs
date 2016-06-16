using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Uyeler
/// </summary>
public class UyeIslemleri
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
    int sayi;

    public void uye_ekle_admin_panel(string uye_adi, string uye_soyadi, string uye_e_postasi, string uye_sifresi, string uye_tel_no)
    {
        string query = "insert into Uyeler values('" + uye_adi + "','" + uye_e_postasi + "','" + uye_sifresi + "','" + uye_tel_no + "'," + "null" + ",2,'" + uye_soyadi + "')";
        //open connection
        BaglantiAc();
        //create command and assign the query and connection from the constructor
        SqlCommand cmd = new SqlCommand(query, baglanti);

        //Execute command
        cmd.ExecuteNonQuery();

        //close connection
        BaglantiKapat();



    }
    public long Son_Uye_ResimID()
    {
        BaglantiAc();
        string query = "select top(1) id from Resimler order by id desc";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                id = Convert.ToInt64(dataReader["id"] + "");

            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return id;
        }

        else
        {
            return 0;
        }
    }

    public DataSet get_Uye_List()
    {
        SqlDataAdapter verial = new SqlDataAdapter("sselect uye_adi+soyadi as adi_soyadi,id from Uyeler", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Uyeler");
        return ds;
    }
    string sifre;
    public string get_uye_passwd(string e_posta)
    {
        BaglantiAc();
        string query = "select uye_sifre from Uyeler where uye_eposta like '"+e_posta+"'";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                sifre = dataReader["uye_sifre"] + "";

            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return sifre;
        }

        else
        {
            return null;
        }
   
    }
   /// <summary>
   /// Admin Yetkisi Atar
   /// </summary>
   /// <param name="Uye_id"></param>
    public void Admin_Ekle(long Uye_id)
    {
        string query = "update Uyeler set yetki_id=1 where id=" + Uye_id;
        BaglantiAc();
        //create command and assign the query and connection from the constructor
        SqlCommand cmd = new SqlCommand(query, baglanti);

        //Execute command
        cmd.ExecuteNonQuery();

        //close connection
        BaglantiKapat();

    }
    Uyeler uye = new Uyeler();
    public Uyeler get_uye(long id)
    {
        BaglantiAc();
        string query = "select * from Uyeler where id =" + id;
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                uye.uye_tel_no = dataReader["uye_tel_no"]+"";
                uye.sifre = dataReader["uye_sifre"] + "";
                uye.adi = dataReader["uye_adi"] + "";
                uye.e_posta = dataReader["uye_epostasi"] + "";
                uye.Soyadi = dataReader["soyadi"]+"";
                
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return uye;
        }

        else
        {
            return null;
        }

    }

    public void Uye_Resim_Guncelle(long uye_id)
    {
        string query = "update Uyeler set uye_resim_id=" + Son_Uye_ResimID() + " where id=" +uye_id;
        //open connection
        BaglantiAc();
        //create command and assign the query and connection from the constructor
        SqlCommand cmd = new SqlCommand(query, baglanti);

        //Execute command
        cmd.ExecuteNonQuery();

        //close connection
        BaglantiKapat();
    }
       

    long id;

     public long get_Son_Uye_Id()
    {
        BaglantiAc();
        string query = "select top(1) id from Uyeler order by id desc";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                id = Convert.ToInt64(dataReader["id"] + "");

            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return id;
        }

        else
        {
            return 0;
        }
    }
   public long Son_Uye_Id()
    {
        BaglantiAc();
        string query = "select top(1) id from Uyeler order by id desc";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                id = Convert.ToInt64(dataReader["id"] + "");

            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return id;
        }

        else
        {
            return 0;
        }
    }
    public int Uye_Sayisi()
    {
        BaglantiAc();
        string query = "select count (*) as sayi from uyeler ";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                sayi = Convert.ToInt32(dataReader["sayi"] + "");

            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return sayi;
        }

        else
        {
            return 0;
        }
    }
}