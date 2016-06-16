<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Duyurular.aspx.cs" Inherits="Duyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <b> Sayfadaki Duyurular</b>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT u.uye_adi + u.soyadi AS adi_soyadi, h.tarihi, h.id AS haber_id FROM Haberler AS h INNER JOIN Uyeler AS u ON h.giren_id = u.id"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="haber_id" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
         
            <table style="width:100%;">
                <tr>
                    <td>
                          adi_soyadi:
            <asp:Label ID="adi_soyadiLabel" runat="server" Text='<%# Eval("adi_soyadi") %>' />
                        </td>
                    <td>
                          tarihi:
            <asp:Label ID="tarihiLabel" runat="server" Text='<%# Eval("tarihi") %>' />
                        </td>
                    <td>
                        <asp:Button ID="btnHaberGor" runat="server" Text="Haber Görüntüle" CommandArgument='<%# Eval("haber_id") %>' /></td>
                </tr>
                
            </table>
          
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>

