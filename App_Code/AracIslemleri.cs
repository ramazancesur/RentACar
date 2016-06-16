using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for AracIslemleri
/// </summary>
public class AracIslemleri
{

    SqlConnection baglanti = new SqlConnection(@"Data Source=94.73.149.9;Network Library=DBMSSOCN;
Initial Catalog=DB150411230441;User ID=USR150411230441;Password=PSS!T3L8Q1%;");

    private void BaglantiAc()
    {
        baglanti.Open();
    }
    private void BaglantiKapat()
    {
        baglanti.Close();
    }
    public DataSet Marka_Modelleri(int marka_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from Modeller where marka_id="+marka_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Modeller");
        return ds;
    }
    public DataSet Arac_Renk()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from Renkler", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Renkler");
        return ds;
    }
    public DataSet Kisi_Sayisi()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from Kisiler", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Kisiler");
        return ds;
    }
    public DataSet Arac_Yil(int marka_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from Modeller where marka_id=" + marka_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Modeller");
        return ds;
    }
    public DataSet AracFiyat(int arac_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from Araclar where id=" + arac_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Araclar");
        return ds;
    }

    public DataSet Arac_Vites()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from  Vites ", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Vites");
        return ds;
    }
    public DataSet Arac_Marka()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from  Markalar ", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Markalar");
        return ds;
    }


    public DataSet Arac_Klima()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from  Klima ", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Klima");
        return ds;
    }
    public DataSet Arac_Yakit()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from  Yakit ", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Yakit");
        return ds;
    }
    public DataSet Default_Arac_Sayfa()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select top(ABS(CHECKSUM(NewId())) % 5) a.id ,r.path, a.yakıt_tipi,md.adi as model_adi,a.bagaj_sayisi,m.adi as marka_adi,a.kiralama_ucreti,path from Araclar a inner join Resimler r on r.arac_id=a.id inner join Modeller md on a.model_id=md.id inner join Markalar m on m.id=md.marka_id", baglanti);
            DataSet ds = new DataSet();
        verial.Fill(ds, "Araclar");
        return ds;
    }
    public DataSet MarkaYili()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select marka_yili from Araclar", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Araclar");
        return ds;
    }
    public DataSet AracDetay(int arac_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("SELECT a.id, a.kisi_sayisi, m.adi AS marka_Adi, md.adi AS model_adi, a.kiralama_ucreti,a.bagaj_sayisi,a.vites,a.arac_özellikleri,a.yakit_tüketimi,a.yakıt_tipi FROM Araclar AS a INNER JOIN Modeller AS md ON md.id = a.model_id INNER JOIN Markalar AS m ON m.id = a.marka_id INNER JOIN Uyeler AS u ON u.id = a.ekleyen_id where a.id=" + arac_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Araclar");
        return ds;
    }
    public DataSet AracFiyatlarSayfa()
    {

        SqlDataAdapter verial = new SqlDataAdapter("SELECT a.id, a.kisi_sayisi, m.adi AS marka_Adi, md.adi AS model_adi, a.fiyat FROM Araclar AS a INNER JOIN Modeller AS md ON md.id = a.model_id INNER JOIN Markalar AS m ON m.id = a.marka_id INNER JOIN Uyeler AS u ON u.id = a.ekleyen_id", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Araclar");
        return ds;
    }
    int id;
    public int Son_Arac_id()
    {
        BaglantiAc();
        string query = "select top(1) id from Araclar order by id desc";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                id = Convert.ToInt32(dataReader["id"] + "");

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
    public List<Arac> AracListesi(int sayfa_numarasi, int arac_sayisi)
    {
        BaglantiAc();
        string query = "select top(" + sayfa_numarasi * arac_sayisi + ") * from Araclar";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Arac> araclist = new List<Arac>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Arac arac = new Arac();

                arac.id = Convert.ToInt64(dataReader["id"] + "");
                arac.marka = Convert.ToInt32(dataReader["marka"] + "");
                arac.model = Convert.ToInt64(dataReader["model"] + "");
                arac.kilometre = Convert.ToInt16(dataReader["kilometre"] + "");
                arac.yakit_tipi = dataReader["yakit_tipi"] + "";
                arac.kiralama_ucreti = Convert.ToInt32(dataReader["kiralama_ucreti"] + "");
                arac.yakit_tüketimi = Convert.ToDouble(dataReader["yakit_tuketimi"] + "");



                arac.kisi_sayisi = Convert.ToInt16(dataReader["kisi_sayisi"] + "");
                arac.vites = Convert.ToInt16(dataReader["vites"] + "");
                arac.klima = dataReader["klima"] + "";

                arac.arac_ozellikleri = dataReader["arac_ozellikleri"] + "";
                arac.renk = dataReader["renk"] + "";

                arac.ekleme_tarihi = Convert.ToDateTime(dataReader["ekleme_tarihi"] + "");
                arac.ekleyen_id = Convert.ToInt64(dataReader["ekleyen_id"] + "");
                arac.fiyat = Convert.ToInt32(dataReader["fiyat"] + "");

                araclist.Add(arac);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return araclist;
        }

        else
        {
            return null;
        }
    }
    public Arac get_arac(int arac_id)
    {
        BaglantiAc();
        string query = "select  * from Araclar where id="+arac_id;
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Arac> araclist = new List<Arac>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Arac arac = new Arac();

                arac.id = Convert.ToInt64(dataReader["id"] + "");
                arac.marka = Convert.ToInt32(dataReader["marka_id"] + "");
                arac.model = Convert.ToInt64(dataReader["model_id"] + "");
            
                arac.yakit_tipi = dataReader["yakıt_tipi"] + "";
                arac.kiralama_ucreti = Convert.ToInt32(dataReader["kiralama_ucreti"] + "");
          
             
                araclist.Add(arac);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return araclist[0];
        }

        else
        {
            return null;
        }
    }
    public void InsertArac(int marka_id, long model_id, int kiralama_ucreti, string yakit_tipi, int maks_hiz, double yakit_tuketimi, int kisi_sayisi, string vites, string klima,
       string arac_özellikleri, int renk_id, DateTime ekleme_tarihi, long ekleyen_id,int marka_yili,int bagaj_sayisi)
    {
        string query = "iNSERT INTO [dbo].[Araclar]" +
       "([marka_id]"+
           ",[model_id]"+
         
           ",[kiralama_ucreti]"+
           ",[yakıt_tipi]"+
            ",[max_hiz]"+
           ",[yakit_tüketimi]"+
           ",[kisi_sayisi]"+
           ",[vites]"+
           ",[klima]"+
           ",[arac_özellikleri]"+
          " ,[renk_id]"+
           
           ",[ekleyen_id]"+
           
           ",[marka_yili]"+
           ",[bagaj_sayisi])"+

"  VALUES (" + marka_id + "," + model_id  + "," + kiralama_ucreti + ",'" + yakit_tipi + "'," + maks_hiz + "," + yakit_tuketimi + "," + kisi_sayisi + ",'" + vites + "','" + klima + "','"  + arac_özellikleri
+ "'," + renk_id +  "," + ekleyen_id + "," +marka_yili+","+bagaj_sayisi+")";
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
    public void UpdateArac(int id, string marka, string model, int kilometre, int kiralama_ucreti, string yakit_tipi, int maks_hiz, double yakit_tuketimi, int kisi_sayisi, string vites, string klima,
      string arac_özellikleri, string renk, DateTime ekleme_tarihi, long ekleyen_id, int fiyat)
    {
        string query = "UPDATE Araclar SET marka='" + marka + "' ,model='" + model + "', kilometre =" + kilometre + " ,kiralama_ucreti= " + kiralama_ucreti +
            ",yakit_tipi'" + yakit_tipi + "',maks_hiz=" + maks_hiz + " ,yakit_tuketimi=" + yakit_tuketimi + ",kisi_sayisi=" + kisi_sayisi +
            " ,arac_ozellikleri='" + arac_özellikleri + "',renk like ' =" + renk + "',ekleme tarihi =" + ekleme_tarihi + ",ekleyen_id=" + ekleyen_id + ",fiyat=" + fiyat
            +

            " WHERE id=" + id;

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
    public void Delete(long id)
    {

        string query = "delete from Uyeler where id==" + id.ToString();

        BaglantiAc();
        SqlCommand cmd = new SqlCommand(query, baglanti);
        cmd.ExecuteNonQuery();
        this.BaglantiKapat();
    }



}
