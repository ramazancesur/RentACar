<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Mesaj-Listesi.aspx.cs" Inherits="Yonetim_Mesaj_Listesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    
        <table class="style1">
            <tr>
                <td colspan="3">
                    <h2 style="text-align: center">Welcome To Gmail</h2></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Gmail ID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" Width="241px" ></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="239px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_password" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Giriş Yap" />
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>

