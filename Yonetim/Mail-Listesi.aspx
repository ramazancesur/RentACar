<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Mail-Listesi.aspx.cs" Inherits="Mail_Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <b> Uyelerden gelen İstekler </b>

    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="id" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
           
            <table style="width:100%;">
             <tr>
                 <td>
                      uye_adi:
            <asp:Label ID="uye_adiLabel" runat="server" Text='<%# Eval("uye_adi") %>' />
                 </td>
                 <td>
                       yorum:
            <asp:Label ID="yorumLabel" runat="server" Text='<%# Eval("yorum") %>' />
                 </td>
                 <td>
                      uye_eposta:
            <asp:Label ID="uye_epostaLabel" runat="server" Text='<%# Eval("uye_eposta") %>' />
                 </td>
                 <td>
                     <asp:Button ID="btn_Sec" runat="server" Text="Seç ve Güncelle" CommandArgument='<%# Eval("id") %>' />
                 </td>
             </tr>  
            </table>
            yadi:
            <asp:Label ID="soyadiLabel" runat="server" Text='<%# Eval("soyadi") %>' />
            <br />
<br />
        </ItemTemplate>




        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT uye.uye_adi, yrm.yorum, yrm.id, uye.uye_eposta, uye.soyadi FROM Yorumlar AS yrm INNER JOIN Uyeler AS uye ON uye.id = yrm.kisi_id"></asp:SqlDataSource>
</asp:Content>

