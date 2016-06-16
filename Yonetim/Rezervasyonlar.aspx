<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Rezervasyonlar.aspx.cs" Inherits="Rezervasyonlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <b>
        Rezervasyon Listesi
    </b>

    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
            <asp:BoundField DataField="uye_adi_soyadi" HeaderText="uye_adi_soyadi" ReadOnly="True" SortExpression="uye_adi_soyadi" />
            <asp:BoundField DataField="uye_eposta" HeaderText="uye_eposta" SortExpression="uye_eposta" />
            <asp:BoundField DataField="uye_tel_no" HeaderText="uye_tel_no" SortExpression="uye_tel_no" />
            <asp:BoundField DataField="odem_bilgisi" HeaderText="odem_bilgisi" SortExpression="odem_bilgisi" />
            <asp:BoundField DataField="rezervasyon_tarihi" HeaderText="rezervasyon_tarihi" SortExpression="rezervasyon_tarihi" />
            <asp:DynamicField DataField="rezervasyon_durumu" HeaderText="rezervasyon_durumu" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT u.uye_adi + u.soyadi AS uye_adi_soyadi, u.uye_eposta, u.uye_tel_no, r.rezervasyon_durumu, r.odem_bilgisi, r.rezervasyon_tarihi, r.id FROM Rezervasyonlar AS r INNER JOIN Uyeler AS u ON u.id = r.uye_id INNER JOIN Araclar AS a ON a.id = r.arac_id"></asp:SqlDataSource>
</asp:Content>

