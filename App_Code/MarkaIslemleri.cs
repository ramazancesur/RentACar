using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for MarkaIslemleri
/// </summary>
public class MarkaIslemleri
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
    public List<Marka> MarkaListesi()
    {

        BaglantiAc();
        string query = "select *from Markalar";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Marka> markaList = new List<Marka>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Marka marka = new Marka();

                marka.id = Convert.ToInt32(dataReader["id"] + "");
                marka.adi = dataReader["adi"] + "";



                markaList.Add(marka);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return markaList;
        }

        else
        {
            return null;
        }
    }
}