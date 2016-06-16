<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Haber-Detay.aspx.cs" Inherits="Haber_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container pages">
  <div class="row-fluid">
	<h3 class="title gradient-reverse txt-color-one" style="margin:0px; padding-left:10px;"><asp:Label ID="Label1" runat="server" Text="Haber Başlığı"></asp:Label> </h3>

	<div class="row-fluid content" style="padding:10px">
	  <div class="span12">

		<div class="date pull-left color-one" style="margin-right:10px;">Tarih: <span>15 Ocak 2013</span></div>

				<div class="category pull-left color-one" style="margin-right:10px;">
			Kategori: 
			<span><a href="#">Ankara Araç Kiralama</a></span>
		</div>&nbsp;
						<div class="keywords pull-left color-one" style="margin-right:10px;">
			Etiket:
							<span><a href="#" class="keyword">ankara araba kiralama</a></span>
							<span><a href="#" class="keyword">ankara araç kiralama</a></span>
							<span><a href="#" class="keyword">ankara kiralık araç</a></span>
							<span><a href="#" class="keyword">ankara kiralık oto</a></span>
							<span><a href="#" class="keyword">ankara oto kiralama</a></span>
							<span><a href="#" class="keyword">ankara otomobil kiralama</a></span>
							<span><a href="#" class="keyword">araba kiralama ankara</a></span>
							<span><a href="#" class="keyword">araç kiralama ankara</a></span>
							<span><a href="#" class="keyword">kiralık araç ankara</a></span>
							<span><a href="#" class="keyword">oto kiralama ankara</a></span>
							<span><a href="#" class="keyword">otomobil kiralama ankara</a></span>
					</div>&nbsp;
			  </div>
	</div>
      <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
          <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
          <ItemStyle BackColor="White" ForeColor="#330099" />
          <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />

          <ItemTemplate>
              <table>
                  <tr>
                      <td>
                          <asp:TextBox ID="txt_id" runat="server" Text="ajjas"></asp:TextBox>
                      </td>
                  </tr>
              </table>

          </ItemTemplate>
      </asp:DataList>
	<div class="row-fluid content" style="padding:10px">
	  <div class="span12">
			<p>
	<strong>Ankara'da araç kiralama</strong> nın adresi olarak da bilinen kiralıkotoarac araç kiralama uygun fiyatlı araç seçenekleriyle siz değerli müşterilerimizin her zaman yanında.</p>
<p>
	<strong>Araç kiralamanın Ankara'daki</strong> adresi olarak da bilinen kiralıkotoarac araç kiralama uygun araç seçenekleriyle siz değerli müşterilerimizin her zaman yanında. Kısa veya uzun süreli araç ihtiyaçlarınızda uygun fiyat seçenekleri ve <strong>geniş araç yelpazesiyle</strong> üstün hizmet anlayışına sahip firmamız 15 yılı aşkın deneyimiyle araç kiralama konusunda Ankara'da&nbsp;adından sıkça söz ettirmekte.</p>
<p>
	Araçlarımız hakkında detaylı bilgi almak için araç filomuza göz atabilir , araç kiralama ihtiyacınızı hemen karşılamak için aşağıdaki rezervasyon formunu kullanabilirsiniz.</p>	  </div>
	</div>

	<div class="row-fluid" style="padding:10px">
	  <div class="span12">
					  </div>
	</div>
	
  </div>
</div>
</asp:Content>

