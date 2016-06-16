using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yonetim_Mesaj_Listesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_yetki_id"] != (object)1)
        {
            Response.Redirect("../Default2.aspx");
        }

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["email"] = txt_email.Text;
        Session["pwd"] = txt_password.Text;
        Response.Redirect("Mesaj-List-gmail.aspx");
    }
}