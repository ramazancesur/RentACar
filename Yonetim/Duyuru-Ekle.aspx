<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Duyuru-Ekle.aspx.cs" Inherits="Duyuru_Ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <title></title>
        <style type="text/css">
            body {
                font-family: Arial;
                font-size: 10pt;
            }
        </style>
 

<table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>Name:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtName" runat="server" />
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
                <asp:TextBox ID="txtBaslik" runat="server" />
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
                <asp:TextBox ID="txtIcerik" runat="server" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" Text="Duyuru Ekle" runat="server" OnClick="Submit" />
            </td>
        </tr>
    </table>

   
</asp:Content>

