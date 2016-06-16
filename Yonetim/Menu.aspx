<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <b>Menu Listesi
            </b>
            <br />
            <br />
            <table style="width: 100%;">
                <tr>
                    <td>ad:
            <asp:Label ID="adLabel" runat="server" Text='<%# Eval("ad") %>' /></td>
                    <td>location: 
            <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' /></td>
                    <td>parent_id:
            <asp:Label ID="parent_idLabel" runat="server" Text='<%# Eval("parent_id") %>' /></td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT [ad], [location], [parent_id] FROM [Menuler]"></asp:SqlDataSource>
</asp:Content>

