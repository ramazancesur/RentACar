<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Sifre-Unuttum.aspx.cs" Inherits="Sifre_Unuttum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container pages">
  <div class="row-fluid">
    <div class="span12">
    <!-- Page layout: Varsayılan -->
<h3 class="title gradient-reverse txt-color-one">Şifre Hatırlatma</h3>
<div class="content">
<section id="default" class="page-chunk "><div class="page-chunk-pad"><div class="span6" >
    
    
    <div class="container mini-boxes">
  
    
    <div class="span4 box">
        
      <h3 class="title txt-shadow">E-mail Adresinizi Yazınız</h3>
      
      	<ul class="services row-fluid">
              
              <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/mail.png" CssClass="position:absolute; top:15px; right:90px;"/> <asp:TextBox ID="TextBox1" runat="server" CssClass="span8" placeholder="E-Posta"></asp:TextBox><br />
                     <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn" OnClick="Button1_Click" />
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </ul>
       
        
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

