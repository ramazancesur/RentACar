<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Fiyatlar.aspx.cs" Inherits="Otokiralamadabiz_Fiyatlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.mousewheel.min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.carousel.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/slides.min.jquery.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/scrollable/scrollable.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/scrollable/scrollable.autoscroll.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/global.js" type="text/javascript"></script>
    <!--pages-->
    <div class="container pages">
        <div class="row-fluid">
            <div class="span12">
                <h3 class="title gradient-reverse txt-color-one">ARAÇ FİYATLARI</h3>
                <div class="content">

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <table class="table table-striped table-hover">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="../files/thumb/374/20/20.jpg" height="20" alt="#" />
                                            <a href="../Cars/Arac-Detay.aspx" class="txt-color-one">
                                                <asp:Label ID="Label1" runat="server" Text="LABEL LABEL"></asp:Label></a></td>
                                        <tr>
                                            <td>Kişi Sayısı:
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("kisi_sayisi") %>' /></td>

                                            <td>Marka Adı
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("marka_Adi") %>' />

                                            </td>
                                            <td>Model Adı:
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("model_adi") %>' /></td>
                                            <td>Gunlük Kiralama Ücreti:
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("kiralama_ucreti") %>' />;</td>
                                            <td>
                                                <asp:Button ID="btnKisi" runat="server" Text="Rezervasyon" CommandArgument='<%# Eval("id") %>' OnCommand="btnKisi_Command" />


                                            </td>
                                        </tr>
                                    </tr>

                                </tbody>
                            </table>
                        </ItemTemplate>


                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Polat8091ConnectionString %>" SelectCommand="SELECT a.id, a.kisi_sayisi, m.adi AS marka_Adi, md.adi AS model_adi, a.kiralama_ucreti FROM Araclar AS a INNER JOIN Modeller AS md ON md.id = a.model_id INNER JOIN Markalar AS m ON m.id = a.marka_id INNER JOIN Uyeler AS u ON u.id = a.ekleyen_id"></asp:SqlDataSource>

                    <div align="right">
                        <button>1</button>
                        <button>2</button>
                        <button>3</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/pages-->
</asp:Content>

