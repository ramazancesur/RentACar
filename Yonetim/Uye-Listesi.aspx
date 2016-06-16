<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Uye-Listesi.aspx.cs" Inherits="Uye_Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT [uye_adi], [uye_sifre], [uye_eposta], [soyadi], [id] FROM [Uyeler]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="id" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>


            <table>
                <tr>
                    <td>uye_adi:
            <asp:Label ID="uye_adiLabel" runat="server" Text='<%# Eval("uye_adi  ") %>  ' />
                    </td>
                    <td>
                          uye_sifre:
            <asp:Label ID="uye_sifreLabel" runat="server" Text='<%# Eval("uye_sifre  ") %>' />
                    </td>
                    <td>
                          uye_eposta:
            <asp:Label ID="uye_epostaLabel" runat="server" Text='<%# Eval("uye_eposta  ") %> ' />
                    </td>
                    <td>
                           soyadi:
            <asp:Label ID="soyadiLabel" runat="server" Text='<%# Eval("soyadi  ") %>' />
                    </td>
                    <td>
                        <asp:Button ID="btnGuncelle" Text="Seç ve Guncelle" runat="server" CommandArgument='<%# Eval("id") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>

