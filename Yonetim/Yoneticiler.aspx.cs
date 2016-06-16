using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yoneticiler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }
        UyeIslemleri uyeler = new UyeIslemleri();
        DataList1.DataSource = uyeler.get_Uye_List();
        DataList1.DataBind();
    }
}