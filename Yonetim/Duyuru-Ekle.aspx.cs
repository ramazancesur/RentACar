using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Duyuru_Ekle : System.Web.UI.Page
{
    Duyuru_Islemleri duyuru;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

    }
    protected void Submit(object sender, EventArgs e)
    {
        duyuru = new Duyuru_Islemleri();
        duyuru.Duyuru_Ekle(Convert.ToInt32(Session["user_yetki_id"]), txtIcerik.Text);
    }
}