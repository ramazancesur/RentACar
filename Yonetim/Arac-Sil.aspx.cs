using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Arac_Sil : System.Web.UI.Page
{
    AracIslemleri araclar;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

        araclar = new AracIslemleri();
    }
    protected void btnKisi_Command(object sender, CommandEventArgs e)
    {
        araclar.Delete(
            Convert.ToInt32(
            e.ToString()
            )
            );
    }
}