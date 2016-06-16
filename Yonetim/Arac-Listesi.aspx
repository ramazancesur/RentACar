<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Arac-Listesi.aspx.cs" Inherits="Arac_Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h3> 
            <b>Arac Listesi</b>
        </h3>
        <asp:DataList ID="dataAraclar" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="0" DataKeyField="id" DataSourceID="sqlDataArac" GridLines="Horizontal" RepeatColumns="1" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                
  <table style="width:100%;" class="table ">
                 
                    
                    <tr>
                        <td> Kişi Sayısı: <asp:Label ID="Label1" runat="server" Text='<%# Eval("kisi_sayisi") %>' /></td>
                        
                        <td> Marka Adı <asp:Label ID="Label3" runat="server" Text='<%# Eval("marka_Adi") %>' />  </td>

                        <td> Model Adı: <asp:Label ID="Label4" runat="server" Text='<%# Eval("model_adi") %>' /></td>
                        <td> Ekleyen Uye:  <asp:Label ID="Label5" runat="server" Text='<%# Eval("uye_adi") %>' />;</td>
                        <td >
                            <asp:Button ID="btnKisi" runat="server" Text="Seç..." CommandArgument='<%# Eval("id") %>' OnCommand="btnKisi_Command" />


                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>

        <asp:SqlDataSource ID="sqlDataArac" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT a.id, a.kisi_sayisi, m.adi AS marka_Adi, md.adi AS model_adi, u.uye_adi FROM Araclar AS a INNER JOIN Modeller AS md ON md.id = a.model_id INNER JOIN Markalar AS m ON m.id = a.marka_id INNER JOIN Uyeler AS u ON u.id = a.ekleyen_id"></asp:SqlDataSource>

    </div>

   
</asp:Content>

