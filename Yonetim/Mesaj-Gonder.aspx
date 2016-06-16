<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Mesaj-Gonder.aspx.cs" Inherits="Mesaj_Gonder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <b>GMail için geçerlidir  </b><br /> <br />
     <table>
         <tr>
             <td>
                 <label>Gönderen EPosta </label>
             </td>
             <td>
                 <asp:TextBox ID="txt_GonderenEPosta" runat="server"></asp:TextBox>
             </td>
         </tr>

          <tr>
             <td>
                 <label>Sifre </label>
             </td>
             <td>
                 <asp:TextBox ID="txt_Sifre" runat="server" TextMode="Password"></asp:TextBox>
             </td>
         </tr>

          <tr>
             <td>
                 <label>Alan EPosta </label>
             </td>
             <td>
                 <asp:TextBox ID="txt_Gonderen_EPosta" runat="server" ></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>
                 <label>Mail Başlık</label>
             </td>
             <td>
                  <asp:TextBox ID="txtBaslik" runat="server"></asp:TextBox>
             </td>
         </tr>
        <tr>
            <td>
                <label>Mail Içeriği </label>
            </td>
            <td>

                <asp:TextBox ID="txtMesaj" runat="server" MaxLength="4000" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_gonder" runat="server" Text="Mail Gonder" OnClick="btn_gonder_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

