using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Rezervasyon_Islemleri
/// </summary>
public class Rezervasyon_Islemleri
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
    int son_rezervasyon;
    public int Son_Rezervasyon()
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

                son_rezervasyon = Convert.ToInt32(dataReader["id"] + "");

            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return son_rezervasyon;
        }

        else
        {
            return 0;
        }
    }
    public DataSet SecilenIl_Ilce(int sehir_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select id,adi from  Ilceler where sehir_id="+sehir_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Ilceler");
        return ds;
    }
    public List<Rezervasyon> ReservationListesi(int rezervasyonsayisi, int sayfa_numarasi)
    {

        BaglantiAc();
        string query = "select top" + rezervasyonsayisi * sayfa_numarasi + "* from Rezervasyonlar";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Rezervasyon> reservationList = new List<Rezervasyon>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Rezervasyon reservation = new Rezervasyon();

                reservation.id = Convert.ToInt64(dataReader["id"] + "");
                reservation.arac_id = Convert.ToInt64(dataReader["arac_id"] + "");
                reservation.odem_bilgisi = dataReader["odeme_bilgisi"] + "";
                reservation.rezervasyon_durumu = Convert.ToInt32(dataReader["reservation_durumu"] + "");
                reservation.rezervasyon_tarihi = Convert.ToDateTime(dataReader["uye_sifre"] + "");
                reservation.uye_id = Convert.ToInt64(dataReader["uye_id"] + "");


                reservationList.Add(reservation);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return reservationList;
        }

        else
        {
            return null;
        }
    }
    public void Insert(int arac_id, long uye_id, DateTime reservation_date, string odeme_bilgisi, int reservation_case)
    {
        string query = "INSERT INTO [dbo].[Rezervasyonlar]([arac_id] ,[uye_id],[rezervasyon_tarihi],[odem_bilgisi],[rezervasyon_durumu])" +
 "VALUES (" + arac_id + ","  + uye_id + ",'" + reservation_date.ToString().Replace(".","-")+ "','" + odeme_bilgisi + "'," + reservation_case +")";

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
    public void Update(int id, int arac_id, long uye_id, DateTime reservation_date, string odeme_bilgisi, int reservation_case)
    {
        string query = "UPDATE Rezervasyon SET arac_id ='" + arac_id + "' ,uye_id=" + uye_id + " ,rezervasyon_tarihi  =" + reservation_date + " ,odem_bilgisi like '" + odeme_bilgisi +
            "',rezervasyon_durumu=" + reservation_case + "where id=" + id;
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
    public void Delete(long id, int arac_id, int uye_id)
    {
        string query;
        if (uye_id != null && arac_id != null)
        {
            query = "DELETE FROM Rezervasyonlar WHERE arac_id==" + arac_id + "and uye_id=" + uye_id;
        }
        else
        {
            query = "delete from Rezervasyonlar where id==" + id.ToString();
        }
        BaglantiAc();
        SqlCommand cmd = new SqlCommand(query, baglanti);
        cmd.ExecuteNonQuery();
        this.BaglantiKapat();
    }


}
