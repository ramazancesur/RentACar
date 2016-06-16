using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for SehirIslemData Source=MACOS\SQLEXPRESS;Initial Catalog=Polat8091;Integrated Security=True;
/// </summary>
public class SehirIslem
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
    public DataSet get_Sehir()
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from  Sehirler ", baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Sehirler");
        return ds;
    }

}