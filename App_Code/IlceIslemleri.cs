using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for IlceIslemleri
/// </summary>
public class IlceIslemleri
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
    public DataSet get_Sehir_Ilce(int sehir_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select * from  Ilceler where sehir_id="+sehir_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Ilceler");
        return ds;
    }
}