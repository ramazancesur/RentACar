using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.MasterPage
{

    public string GetContent(string AdressUrl)
    {
        Uri url = new Uri(AdressUrl);
        WebClient client = new WebClient();
        client.Encoding = System.Text.Encoding.UTF8;

        string html = client.DownloadString(url);
        return html;
    }
    private List<Doviz> DovizKuruList()
    {
        HtmlAgilityPack.HtmlWeb htmlweb = new HtmlAgilityPack.HtmlWeb();
        string htmlContext = GetContent("http://www.bigpara.com/doviz/dolar/");
        HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
        document.LoadHtml(htmlContext);
        List<Doviz> dovizList = new List<Doviz>();
        HtmlNodeCollection element = document.DocumentNode.SelectNodes("//div[contains(@class,'kurBox')]//span[contains(@class,'value')]");
        int sayac = 0;
        foreach (HtmlNode item in element)
        {
            sayac += 1;
            Doviz doviz = new Doviz();
            if (sayac == 1)
            {
                doviz.cinsi = "dolar";

                doviz.degeri = Convert.ToDouble(item.InnerText);
            }

            dovizList.Add(doviz);
        }
        return dovizList;
    }


    private List<Doviz> DovizKuruListEuro()
    {
        HtmlAgilityPack.HtmlWeb htmlweb = new HtmlAgilityPack.HtmlWeb();
        string htmlContext = GetContent("http://www.bigpara.com/doviz/euro/");
        HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
        document.LoadHtml(htmlContext);
        List<Doviz> dovizList = new List<Doviz>();
        HtmlNodeCollection element = document.DocumentNode.SelectNodes("//div[contains(@class,'kurBox')]//span[contains(@class,'value')]");
        int sayac = 0;
        foreach (HtmlNode item in element)
        {
            sayac += 1;
            Doviz doviz = new Doviz();
            if (sayac == 1)
            {
                doviz.cinsi = "euro";

                doviz.degeri = Convert.ToDouble(item.InnerText);
            }

            dovizList.Add(doviz);
        }
        return dovizList;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1 .Text = String.Empty;
        List<Doviz> dovizList = DovizKuruList();
        foreach (var item in dovizList)
        {
            Label1.Text = Label1.Text + item.degeri;
        }
        int sayac = 0;
        Label3.Text = String.Empty;
        List<Doviz> dovizListeuro = DovizKuruListEuro();
        foreach (var item in dovizListeuro)
        {
            sayac = sayac + 1;
            if (sayac == 1)
            {
                Label3.Text = Label3.Text + item.degeri;
            }
        }
    }
}
