using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HtmlAgilityPack;
using System.Net;

/// <summary>
/// Summary description for Html_Parser
/// </summary>
public class Html_Parser
{
    public string GetContent(string AdressUrl)
    {
        Uri url = new Uri(AdressUrl);
        WebClient client = new WebClient();
        client.Encoding = System.Text.Encoding.UTF8;

        string html = client.DownloadString(url);
        return html;
    }
    public List<Doviz> DovizKuruList()
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
    public List<string> IlListesi()
    {
        HtmlAgilityPack.HtmlWeb htmlweb = new HtmlAgilityPack.HtmlWeb();
        string htmlContext = GetContent("http://www.illerarasimesafe.com/");
        HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
        document.LoadHtml(htmlContext);
        List<IlList> illist = new List<IlList>();
        HtmlNodeCollection element = document.DocumentNode.SelectNodes("//*[contains(@class,'selectBox')]");
        int sayac = 0;
        foreach (HtmlNode item in element)
        {
            sayac += 1;
            IlList il = new IlList();
            if (sayac == 1)
            {


                il.il_adi = item.InnerText;
            }
            illist.Add(il);

        }
        List<string> il_listesi=new List<string>();
        foreach (var item in illist)
        {
            try
            {
                string[] iller = item.il_adi.ToString().Replace("\t\t", "").Replace(" ", "").Split('\n');
                int sayac1 = 0;
                foreach (string sehir in iller)
                {
                    sayac1= sayac1 + 1;
                    if (sayac1 == 2)
                    {
                        il_listesi.Add("ADANA");
                        sayac1 = sayac1 + 1;
                    }
                    if (sayac1 == 3 || sayac1== 1)
                    {
                        continue;
                    }
                    il_listesi.Add(sehir.ToUpper());

                }
            }
            catch { }

        }
        return il_listesi;
    }
    private List<IlList> IlceListesi(string il_adi)
    {
        HtmlAgilityPack.HtmlWeb htmlweb = new HtmlAgilityPack.HtmlWeb();
        string htmlContext = GetContent("http://www.illerarasimesafe.com/" + il_adi.ToLower());
        HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
        document.LoadHtml(htmlContext);
        List<IlList> illist = new List<IlList>();
        HtmlNodeCollection element = document.DocumentNode.SelectNodes("//*[contains(@class,'searched')]//ul");
        int sayac = 0;
        foreach (HtmlNode item in element)
        {
            sayac += 1;
            IlList il = new IlList();
            if (sayac == 1)
            {


                il.il_adi = item.InnerText;
            }
            illist.Add(il);

        }
        return illist;
    }
    private List<IlList> MesafeAndSaat(string ilksehir, string ilkilce, string ikincisehir, string ikinciIlce)
    {
        HtmlAgilityPack.HtmlWeb htmlweb = new HtmlAgilityPack.HtmlWeb();
        string htmlContext = GetContent("http://www.illerarasimesafe.com/" + ilksehir.ToLower() + "-" + ilkilce.ToLower() + "_" + ikincisehir.ToLower() + "-" + ikinciIlce.ToLower() + "/");
        HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
        document.LoadHtml(htmlContext);
        List<IlList> illist = new List<IlList>();
        HtmlNodeCollection element = document.DocumentNode.SelectNodes("//div[contains(@class,'result')]//span");
        int sayac = 0;
        foreach (HtmlNode item in element)
        {
            sayac += 1;
            IlList il = new IlList();
            if (sayac < 3)
            {
                il.il_adi = item.InnerText;
            }
            illist.Add(il);
        }
        return illist;
    }
    List<string> mesafe = new List<string>();
    public List<string> MesafeAndSaat(string ilksehir, string ikincisehir)
    {
        HtmlAgilityPack.HtmlWeb htmlweb = new HtmlAgilityPack.HtmlWeb();
        string htmlContext = GetContent("http://www.illerarasimesafe.com/" + ilksehir.ToLower() + "_" + ikincisehir.ToLower() + "/");
        HtmlAgilityPack.HtmlDocument document = new HtmlAgilityPack.HtmlDocument();
        document.LoadHtml(htmlContext);
        List<IlList> illist = new List<IlList>();
        HtmlNodeCollection element = document.DocumentNode.SelectNodes("//div[contains(@class,'result')]//span");
           int sayac = 0;
            foreach (HtmlNode item in element)
            {
                sayac += 1;
                IlList il = new IlList();
                if (sayac < 3)
                {
                    il.il_adi = item.InnerText;
                }
                illist.Add(il);
            }
           
            foreach (var item in illist)
            {
                mesafe.Add(item.il_adi);
            }
            return mesafe;
    }

}