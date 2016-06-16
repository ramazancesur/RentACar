using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Rezervasyon
/// </summary>
public class Rezervasyon
{
    public long id;
    public long arac_id;
    public long uye_id;
    public DateTime rezervasyon_tarihi;
    public string odem_bilgisi;
    public int rezervasyon_durumu;
    public int alinan_sehir_id;
    public int alinan_ilce_id;
    public int birakilan_sehir_id;
    public int birakilan_ilce_id;
}