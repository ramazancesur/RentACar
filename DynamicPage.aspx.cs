using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class DynamicPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("/kiralikotodabiz/default.aspx");
        }
        if (!this.IsPostBack)
        {
            this.PopulatePage();
        }
    }

    private void PopulatePage()
    {
        string pageName = this.Page.RouteData.Values["PageName"].ToString();
        string query = "SELECT [Title], [Content] FROM [Pages] WHERE [PageName] = @PageName";
        string conString = @"Data Source=MACOS\SQLEXPRESS;Initial Catalog=Polat8091;Integrated Security=True;";
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@PageName", pageName);
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        lblTitle.Text = dt.Rows[0]["Title"].ToString();
                        lblContent.Text = dt.Rows[0]["Content"].ToString();
                    }
                }
            }
        }
    }
}
