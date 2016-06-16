using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for ModelIslemleri
/// </summary>
public class ModelIslemleri
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

    public DataSet MarkaModelGetir(int model_id)
    {
        SqlDataAdapter verial = new SqlDataAdapter("select *from Modeller where marka_id=" + model_id, baglanti);
        DataSet ds = new DataSet();
        verial.Fill(ds, "Marka");
        return ds;
    }
    public List<Model> MarkayaGoreModel(int model_id)
    {

        BaglantiAc();
        string query = "select *from Modeller where marka_id=" + model_id;
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Model> model_List = new List<Model>();

        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Model model = new Model();

                model.id = Convert.ToInt64(dataReader["id"] + "");
                model.adi = dataReader["adi"] + "";



                model_List.Add(model);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return model_List;
        }

        else
        {
            return null;
        }
    }

    public List<Model> ModelListesi()
    {

        BaglantiAc();
        string query = "select *from Modeller";
        SqlCommand cmd = new SqlCommand(query, baglanti);
        //Create a data reader and Execute the command
        SqlDataReader dataReader = cmd.ExecuteReader();
        List<Model> model_List = new List<Model>();
        if (dataReader != null)
        {
            //Read the data and store them in the list
            while (dataReader.Read())
            {
                Model model = new Model();

                model.id = Convert.ToInt64(dataReader["id"] + "");
                model.adi = dataReader["adi"] + "";
                model.marka_id = Convert.ToInt32(dataReader["marka_id"] + "");



                model_List.Add(model);
            }

            //close Data Reader
            dataReader.Close();

            //close Connection
            this.BaglantiKapat();

            //return list to be displayed
            return model_List;
        }

        else
        {
            return null;
        }
    }

}