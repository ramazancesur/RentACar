using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user_yetki_id"] != (object)1)
        //{
        //    Response.Redirect("../Default2.aspx");
        //}

        UyeIslemleri islem = new UyeIslemleri();
        lblUye.Text = islem.Uye_Sayisi().ToString();
    }
}