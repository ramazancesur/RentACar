<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="IK-Form-Listesi.aspx.cs" Inherits="IK_Form_Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT o.cv_path, u.uye_adi + u.soyadi AS adi_soyadi, u.uye_eposta, u.uye_tel_no FROM Ozgecmisler AS o INNER JOIN Uyeler AS u ON o.uye_id = o.uye_id"></asp:SqlDataSource>

    <b> İnsan Kaynakları...</b>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            cv_path:
            <asp:Label ID="cv_pathLabel" runat="server" Text='<%# Eval("cv_path") %>' />
            <br />
         
            <br />
           
            <br />
           
            <br />
            <table style="width:100%;">
                <tr>
                    <td>   adi_soyadi:
            <asp:Label ID="adi_soyadiLabel" runat="server" Text='<%# Eval("adi_soyadi") %>' /></td>
                    <td>
                         uye_eposta:
            <asp:Label ID="uye_epostaLabel" runat="server" Text='<%# Eval("uye_eposta") %>' />
                        </td>
                    <td>
                         uye_tel_no:
            <asp:Label ID="uye_tel_noLabel" runat="server" Text='<%# Eval("uye_tel_no") %>' />

                    </td>

                    <td>

                        <asp:Button ID="btn_cv" runat="server" Text="Cv ye git" CommandArgument='<%# Eval("cv_path") %>' />
                    </td>
                </tr>
             
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
