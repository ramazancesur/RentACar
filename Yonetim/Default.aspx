<%@ Page Title="" Language="C#" MasterPageFile="~/otokiralama.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div> <br /> <br /> <br /> <br />
        <br />
    </div> 
    <div class="container-liquid">
                    <div class="row">
                        <div class="col-xs-2">
                        <a href="Uye-Listesi.aspx" title="Üyeler" >
                            <div class="stat-box colorone">
                                <i class="author">&nbsp;</i>
                              <h4>Üyeler</h4>
                                <h1>
                                    <asp:Label ID="lblUye" runat="server" Text="01"></asp:Label>
                                    </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                            <div class="stat-box colortwo">
                            <a href="Rezervasyonlar.aspx" title="Rezervasyon" >
                                <i class="chart">&nbsp;</i>
                                <h4>Rezervasyon</h4>
                                <h1>
                                    <asp:Label ID="lblReservation" runat="server" Text="03"></asp:Label>
                                </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        <a href="Arac-Listesi.aspx" title="Araçlar" >
                            <div class="stat-box colorthree">
                                <i class="pages">&nbsp;</i>
                                <h4>Araçlar</h4>
                                <h1>

                                    <asp:Label ID="lblArac" runat="server" Text="18"></asp:Label>

                                </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        <a href="Mesaj-Listesi.aspx" title="Mesajlar" >
                            <div class="stat-box colorfour">
                                <i class="users">&nbsp;</i>
                                <h4>Mesajlar</h4>
                                <h1>
                                    <asp:Label ID="lblMesaj" runat="server" Text="05"></asp:Label>
                                </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        <a href="Mail-Listesi.aspx" title="E-Bülten" >
                            <div class="stat-box colorfive">
                                <i class="downloads">&nbsp;</i>
                                <h4>E-Bülten</h4>
                                <h1>
                                    <asp:Label ID="lblEBulten" runat="server" Text="45"></asp:Label>
                                </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        <a href="Sayfalar.aspx" title="Sayfalar" >
                            <div class="stat-box colorsix">
                                <i class="comments">&nbsp;</i>
                                <h4>Sayfalar</h4>
                                <h1>
                                    <asp:Label ID="lblSayfa" runat="server" Text="56"></asp:Label>
                                </h1></a>
                            </div>
                        </div>
                      <div class="col-xs-2">
                        <a href="Duyurular.aspx" title="Duyurular" >
                            <div class="stat-box colorsix">
                                <i class="comments">&nbsp;</i>
                                <h4>Duyurular</h4>
                                <h1>
                                    <asp:Label ID="lblDuyuru" runat="server" Text="26"></asp:Label>
                                </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        <a href="Yoneticiler.aspx" title="Yöneticiler" >
                            <div class="stat-box colorfive">
                                <i class="downloads">&nbsp;</i>
                                <h4>Yöneticiler</h4>
                                <h1>
                                    <asp:Label ID="lblYonetici" runat="server" Text="02"></asp:Label>
                                </h1></a>
                            </div>
                        </div>
                        <div class="col-xs-2">
                        <a href="IK-Form-Listesi.aspx" title="İnsan Kaynakları" >
                            <div class="stat-box colorone">
                                <i class="author">&nbsp;</i>
                              <h4>İnsan Kaynakları</h4>
                                <h1>
                                    <asp:Label ID="lblIK" runat="server" Text="07"></asp:Label>
                                </h1></a>
                            </div>
</asp:Content>

