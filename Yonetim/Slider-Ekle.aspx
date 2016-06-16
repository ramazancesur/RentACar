<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Slider-Ekle.aspx.cs" Inherits="Slider_Ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>

        <tr>
            <td class="col-md-4">Slider Resimleri:</td>
            <td class="col-md-8">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td class="col-md-4">Slider Resim-2:</td>
            <td class="col-md-8">
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td class="col-md-4">Slider Resim-3:</td>
            <td class="col-md-8">
                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
            </td>

        </tr>
        <tr>
            <td class="col-md-4">Slider Resim4:</td>
            <td class="col-md-8">
                <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td class="col-md-4">Slider Resim-5:</td>
            <td class="col-md-8">
                <asp:FileUpload ID="FileUpload5" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>
            <td class="col-md-4">Slider Resim-6:</td>
            <td class="col-md-8">
                <asp:FileUpload ID="FileUpload6" runat="server" CssClass="form-control" />
            </td>
        </tr>
        <tr>

            <td>
                <asp:Button ID= "btn_slider_Ekle" runat="server" Text="EKle" OnClick="btn_slider_Ekle_Click" />

            </td>

        </tr>
        </tbody>
    </table>
    </table>
</asp:Content>

