<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="AddPage.aspx.cs" Inherits="Sayfa_Ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>Name:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtPageName" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>Title:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>Content:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="Submit" />
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea' });
    </script>



</asp:Content>

