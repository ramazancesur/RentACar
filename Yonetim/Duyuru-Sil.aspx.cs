using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Duyuru_Sil : System.Web.UI.Page
{
    Duyuru_Islemleri duyuru;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

        duyuru = new Duyuru_Islemleri();
    }
    protected void btnHaberGor_Command(object sender, CommandEventArgs e)
    {
        duyuru.Delete(Convert.ToInt32( e.CommandArgument));
    }
}