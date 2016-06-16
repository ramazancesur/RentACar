<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Uye-Ekle.aspx.cs" Inherits="Uye_Ekle" %>

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
                                    <h2 class="heading">Üyelik Paneli</h2>
                                </header>
                                <div class="contents">
                                    <a class="togglethis">Toggle</a>
                                    <div class="table-box">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="col-md-4">Üye Ekle</th>
                                                    <th class="col-md-8"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                           <tr>
                                                    <td class="col-md-4">Üye Adı:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_uye_adi" runat="server" CssClass="form-control" placeholder="Üye Adı"></asp:TextBox>
                                                   </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Üye Soyadı:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_uye_soyadi" runat="server" CssClass="form-control" placeholder="Üye Soyadı"></asp:TextBox>
                                                    </td>
                                                </tr>
                                              <tr>
                                                    <td class="col-md-4">Üye E-Posta:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_eposta" runat="server" CssClass="form-control" placeholder="Üye E-Posta"></asp:TextBox>
                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="col-md-4">Üye Şifre:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_sifre" runat="server" CssClass="form-control" placeholder="Üye Şifre"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                    <td class="col-md-4">Üye Telefon Numarası:</td>
                                                    <td class="col-md-8">
                                                        <asp:TextBox ID="txt_tel_no" runat="server" CssClass="form-control" placeholder="Üye Telefon Numarası"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="col-md-4">Üye Resimi:</td>
                                                    <td class="col-md-8">
                                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                                    </td>
                                                </tr>

                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                               
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

