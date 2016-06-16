using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("/Default2.aspx");
        }
        if (!this.IsPostBack)
        {
            this.BindPages();
        }
    }

    private void BindPages()
    {
        string query = "SELECT [PageName], [Title], [Content] FROM [Pages]";
        string conString = @"Data Source=MACOS\SQLEXPRESS;Initial Catalog=Polat8091;Integrated Security=True;";
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        rptPages.DataSource = dt;
                        rptPages.DataBind();
                    }
                }
            }
        }
    }
}