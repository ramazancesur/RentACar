using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Otokiralamadabiz_Fiyatlar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    
    }
    protected void btnKisi_Command(object sender, CommandEventArgs e)
    {
        Session["arac_id"] = Convert.ToInt32(e.CommandArgument.ToString());
        int sayi = Convert.ToInt32( ViewState["arac_id"]);
        Response.Redirect("Arac-Detay.aspx");
    }
}