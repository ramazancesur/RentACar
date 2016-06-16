<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Uye-Ol.aspx.cs" Inherits="Uye_Ol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="../css/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $("[id*=btnModalPopup]").live("click", function () {
        $("#modal_dialog").dialog({
            title: "Üyelik Sözleşmesi",
            buttons: {
                Kapat: function () {
                    $(this).dialog('close');
                }
            },
            modal: true
        });
        return false;
    });
</script>
<div id="modal_dialog" style="display: none" class="box">
    1-TARAFLAR İşbu sözleşme, www.otokiralamada.biz adresinde faaliyet gösteren Polat Oto Kiralama ile siteye üye olan Üye arasında, üyenin www.otokiralamada.biz alan adlı internet sitesi üzerinden kendi iradesi ile yaptığı üye kaydı aşamasında yapılmıştır. Üye, siteye üye olarak, sözleşmenin tamamını okuduğunu, anladığını ve tüm hükümlerini onayladığını kabul, beyan ve taahhüt eder.
    <hr />

    2-SÖZLEŞMENİN KONUSU İşbu sözleşmenin konusu, araçların Polat Oto Kiralama tarafından sitede çevrimiçi olarak internet üzerinden kiralanmaya sunulmasına dair usul ve esaslar ile Metal Oto ve Üyenin karşılıklı hak ve yükümlülüklerinin belirlenmesidir. İş bu sözleşme, sitede yapılacak olan ve üyenin kiralayacağı araç/araçlar hakkında hüküm ifade eder.
</div>
    <div class="container pages">
  <div class="row-fluid">
    <div class="span12">
    <!-- Page layout: Varsayılan -->
<h3 class="title gradient-reverse txt-color-one">Üyelik Formu</h3>
<div class="content">
<section id="default" class="page-chunk "><div class="page-chunk-pad"><div class="span6" >
    
    
    <div class="container mini-boxes2">
  
    
    <div class="span4 box2">
        
      <h3 class="title2 txt-shadow">Üye Olun</h3>
      
      	<ul class="services row-fluid">
              <br />
              <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/username.png" CssClass="position:absolute; top:15px; right:90px;"/> <asp:TextBox ID="TextBox1" runat="server" CssClass="span7" placeholder="Kullanıcı Adı*"></asp:TextBox><br />
              <asp:Image ID="Image2" runat="server" ImageUrl="~/images/username.png" CssClass="position:absolute; top:15px; right:90px;" /> <asp:TextBox ID="TextBox2" runat="server" CssClass="span8" placeholder="Ad ve Soyad*"></asp:TextBox><br />
              <asp:Image ID="Image3" runat="server" ImageUrl="~/images/mail.PNG" CssClass="position:absolute; top:15px; right:90px;" /> <asp:TextBox ID="TextBox3" runat="server" CssClass="span8" placeholder="E-Mail*"></asp:TextBox><br />
              <asp:Image ID="Image4" runat="server" ImageUrl="~/images/locked.PNG" CssClass="position:absolute; top:15px; right:90px;" /> <asp:TextBox ID="TextBox4" runat="server" type="password" CssClass="span8" placeholder="Şifre*"></asp:TextBox><br />
              <asp:Image ID="Image5" runat="server" ImageUrl="~/images/locked.PNG" CssClass="position:absolute; top:15px; right:90px;"/> <asp:TextBox ID="TextBox5" runat="server" type="password" CssClass="span8" placeholder="Şifre Tekrar*"></asp:TextBox><br />
              <asp:CheckBox ID="CheckBox1" runat="server" Checked="false" /> <a href="#" id="btnModalPopup"> Üyelik sözleşmesini kabul ediyorum </a><br />
              
              
        </ul>

         <div align="center"> <asp:Button ID="Button1" runat="server" Text="Üye Ol" CssClass="btn" OnClick="Button1_Click" /></div>
     
      </div>
    </div>
    
</div>


</div></section>

</div>

    </div>
  </div>
        </div>
<!--/pages-->
</asp:Content>

