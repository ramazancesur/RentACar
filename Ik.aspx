<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Ik.aspx.cs" Inherits="Ik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--pages-->
<div class="container pages">
  <div class="row-fluid">
    <div class="span12">
    


    <h3 class="title gradient-reverse txt-color-one">Polat Oto Kiralama</h3>
	
	<div class="content">

  

		<form enctype="multipart/form-data" method="post">
					   
		   		   
		   <h4>İş Başvuru Formu</h4>
          
		  <span class="left-block">
		  
		  <label>Ad Soyad:</label>
              <asp:TextBox ID="TextBox1" runat="server" CssClass="span4" placeholder="Ad Soyad"></asp:TextBox>
		
		  <label>Email:</label>
              <asp:TextBox ID="TextBox2" runat="server" CssClass="span4" placeholder="E-mail"></asp:TextBox>
		  
		  <label>Doğum Tarihi </label>
              <asp:TextBox ID="TextBox3" runat="server" CssClass="span4" placeholder="Doğum Tarihi"></asp:TextBox>
		  
		   <label>Cinsiyet </label>
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="span4"></asp:DropDownList>
		</span>  
		     <label>Cep Telefon</label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="span4" placeholder="Cep Telefon"></asp:TextBox>
		  
		    <label>Açık Pozisyon</label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="span4"></asp:DropDownList>
		  
		 <label>CV Gönderin </label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="span4"/>
		  <br />
		  <div class="clearfix"></div>
		  
		  <label>Mesajınız</label>
		  
            <textarea id="TextArea1" cols="20" rows="5" class="span8"></textarea>
		  
		  <br/>
		
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Formu Gönderin" />
		</form>

		</div>
    </div>
  </div>
</div>
<!--/pages-->
</asp:Content>

