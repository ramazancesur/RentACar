using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Slider_Ekle : System.Web.UI.Page
{
    Sliderİsleri slider = new Sliderİsleri();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //if (Session["user_yetki_id"] != (object)1)
        //{
        //    Response.Redirect("../Default2.aspx");
        //}

    }

    protected void btn_slider_Ekle_Click(object sender, EventArgs e)
    {

        slider.slider_Ekle(
            Convert.ToInt32(FileUpload1.FileName.Split('/')[FileUpload1.FileName.Split('/').Count() - 1].Replace(".jpg", "")),
             Convert.ToInt32(FileUpload2.FileName.Split('/')[FileUpload2.FileName.Split('/').Count() - 1].Replace(".jpg", "")),
              Convert.ToInt32(FileUpload3.FileName.Split('/')[FileUpload3.FileName.Split('/').Count() - 1].Replace(".jpg", "")),
               Convert.ToInt32(FileUpload4.FileName.Split('/')[FileUpload4.FileName.Split('/').Count() - 1].Replace(".jpg", "")),
                Convert.ToInt32(FileUpload5.FileName.Split('/')[FileUpload5.FileName.Split('/').Count() - 1].Replace(".jpg", "")),
                 Convert.ToInt32(FileUpload5.FileName.Split('/')[FileUpload6.FileName.Split('/').Count() - 1].Replace(".jpg", "")),
                 Convert.ToInt32(Session["user_yetki_id"]));
            
    }
}