<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Arac-Ekle.aspx.cs" Inherits="Arac_Ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <!-- Right Section Header End -->
            <!-- Content Section Start -->
            <div class="content-section">
                <div class="container-liquid">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="sec-box">
                                <a class="closethis">Close</a>
                                <header>
                                    <h2 class="heading">Araç Ekle</h2>
                                </header>
                                <div class="contents">
                                    <a class="togglethis">Toggle</a>
                                    <div class="table-box">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="col-md-4">Araç Özellikleri</th>
                                                    <th class="col-md-8"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                    <td class="col-md-4">Araç Fiyatı:</td>
                                                    <td class="col-md-8">
                                                        <div class="form-group has-success">
                                                            <asp:TextBox ID="txt_Fiyat" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>
                                              <tr>
                                                    <td class="col-md-4">Marka Seçiniz:</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_marka" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="adi" AutoPostBack="true" DataValueField="id" OnSelectedIndexChanged="drp_marka_SelectedIndexChanged"></asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT id, adi FROM Markalar"></asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Marka Modeli Seçiniz:</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_model" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="col-md-4">Marka Yılı Seçiniz:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_yil" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Araç Rengi</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_renk" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="col-md-4">Bagaj Sayısı:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_bagaj" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="col-md-4">Kişi Sayısı:</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_kisi_sayisi" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Yakıt:</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_yakit" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="col-md-4">Yakıt Tüketimi:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_yakit_tuketimi" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="col-md-4">Maksimum Hız:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_maks_hiz" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Vites:</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_vites" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Klima:</td>
                                                    <td class="col-md-8">
                                                        <asp:DropDownList ID="drp_klima" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Araç Özellikleri:</td>
                                                    <td class="col-md-8">
                                                    <asp:TextBox id="txt_arac_ozellik" rows="3" Cssclass="form-control" runat="server"></asp:TextBox>
                                                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                                                        </td>
                                                </tr>
                                                
                                                
                                                
                                                <tr>
                                                    <td class="col-md-4">Araç Resimleri:</td>
                                                    <td class="col-md-8">
                                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Araç Resim-2:</td>
                                                    <td class="col-md-8">
                                                        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                                                    </td>
                                                </tr>
                                               <tr>
                                                    <td class="col-md-4">Araç Resim-3:</td>
                                                   <td class="col-md-8">
                                                        <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                                                    </td>
                                                    
                                                </tr>
                                                
                                               
                                            </tbody>
                                        </table>
                                        
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                   
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <br>
                    <div align="right">
                        <asp:Button ID="btn_Kaydet" runat="server" Text="Kaydet" CssClass="btn btn-danger" OnClick="btn_Kaydet_Click" />
                     </div>
                    <!-- Row End -->
                </div>
            </div>
            <!-- Content Section End -->
        </div>
        <!-- Right Section End -->
    </div>
</div>
<!-- Wrapper End -->
</asp:Content>

