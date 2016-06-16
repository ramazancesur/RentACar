using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
public class Resim_Islemleri
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
    Resim resim;
    public Resim get_resim(long resim_id)
    {
        BaglantiAc();
        string query = "select *from Resimler where id=" + resim_id;
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {

                resim.id = Convert.ToInt64(dataReader["id"] + "");
                resim.path = dataReader["path"] + "";
                resim.arac_id = Convert.ToInt32(dataReader["arac_id"]);
                resim.uye_id = Convert.ToInt64(dataReader["uye_id"]);
                resim.aciklama = dataReader["aciklama"] + "";


            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displa
            return resim;
        }

        else
        {
            return null;
        }
    }
    public DataSet Arac_Resim_Slider()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select  * from Resimler where arac_id is not null ", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Resimler");
        return ds;
    }
    public void insert_arac_resim(int arac_id, string aciklama, string path)
    {
        string query;
        try
        {

           
            query = "insert into Resimler values('" +
              
            path + "','" + aciklama + "',"+ arac_id+"," + "null" + ")";

            //open connection
            BaglantiAc();
            //create command and assign the query and connection from the constructor
            SqlCommand cmd = new SqlCommand(query, baglanti);

            //Execute command
            cmd.ExecuteNonQuery();

            //close connection
            BaglantiKapat();

        }
        catch (Exception ex)
        {
            throw new Exception("resim  yuklenirken hata olustu");
        }
    }

    public void insert_Uye_resim(long uye_id, string aciklama, string path)
    {
        string query;
        try
        {


            query = "INSERT INTO [dbo].[Resimler]([arac_id] ,[uye_id],[path],[aciklama])" +
"VALUES (" + null + "," + "," + uye_id + "," + path + "," + aciklama;

            //open connection
            BaglantiAc();
            //create command and assign the query and connection from the constructor
            SqlCommand cmd = new SqlCommand(query, baglanti);

            //Execute command
            cmd.ExecuteNonQuery();

            //close connection
            BaglantiKapat();

        }
        catch (Exception ex)
        {
            throw new Exception("resim  yuklenirken hata olustu");
        }
    }


}