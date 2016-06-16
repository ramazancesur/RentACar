using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class AddPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("/kiralikotodabiz/default.aspx");
        }
       
    }

    protected void Submit(object sender, EventArgs e)
    {
        string query = "INSERT INTO [Pages] VALUES (@PageName, @Title, @Content)";
        string conString = @"Data Source=MACOS\SQLEXPRESS;Initial Catalog=Polat8091;Integrated Security=True;";
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@PageName", txtPageName.Text.Replace(" ", "-"));
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Content", txtContent.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}