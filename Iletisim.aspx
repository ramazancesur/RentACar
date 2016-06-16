<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container pages">
  <div class="row-fluid">
    <div class="span12">
    <!-- Page layout: Varsayılan -->
<h3 class="title gradient-reverse txt-color-one">İletişim</h3>
<div class="content">
<section id="default" class="page-chunk "><div class="page-chunk-pad"><div class="span6" 
            <address>
            <strong class="color-one">Polat Oto Kiralama</strong><br />
            İvedik Organize Sanayi 1349. Sk
            Ostim/Yenimahalle/ANKARA<br />
            <abbr title="Telefon">T:</abbr> 0 (312) 370 00 00<br />
            <abbr title="Mobil">M:</abbr>0 (532) 131 80 50
            </address>
             
            <address>
            <strong class="color-one">E-Posta</strong>
            <a href="mailto:info@otokiralamada.biz">info@otokiralamada.biz</a>
            </address>

    <strong class="color-one" >İletişim Formu</strong><br />
    <p> </p>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="span11" placeholder="Adınız" Height="22"></asp:TextBox><br />
    <asp:TextBox ID="TextBox2" runat="server" CssClass="span11" placeholder="E-Mail" Height="22"></asp:TextBox><br />
    <asp:TextBox ID="TextBox3" runat="server" CssClass="span11" placeholder="Telefon" Height="22"></asp:TextBox><br />
            <asp:TextBox ID="txtmesaj" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
    <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn" OnClick="Button1_Click"/>
    
</div>

<div class="span6">
<div  border:1px solid #bfbfbf;">

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3056.641756025129!2d32.75961450000001!3d39.99411050000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x91e2da1323a69ed3!2spolat+oto+kiralama!5e0!3m2!1str!2s!4v1428560764673" width="450" height="456" frameborder="0" style="border:0"></iframe>

<div id='gmap_canvas1'></div></div>
</div></div></section>

</div>

    </div>
  </div>
        </div>
<!--/pages-->
</asp:Content>

