<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
      
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/jcarousel/0.2.8/jquery.jcarousel.min.js"></script>
    <link href="http://cdn.jsdelivr.net/jcarousel/0.2.8/skins/tango/skin.css" rel="Stylesheet" />
    <script type="text/javascript">
        $(function () {
            $('#mycarousel').jcarousel();
        });
    </script>
    <div class="container homepage">

        <!--reservation-->
        <div class="row-fluid">

            <!--reservation-->
            <div class="span7 reservation">
                <!--reservation-form-->
                <div class="row-fluid reservation-form">
                    <!--pickup-->
                    <div class="span6 pickup">
                        <h3 class="title">Alış yeri</h3>
                        <div class="controls">
                            <asp:DropDownList ID="Drp_Alis_Sehir" runat="server" AutoPostBack="true" CssClass="span12" OnSelectedIndexChanged="Drp_Alis_Sehir_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="controls">
                            <asp:DropDownList ID="Drp_alis_ilce" runat="server" CssClass="span12"></asp:DropDownList>
                        </div>
                        <div class="controls relative">
                            <asp:DropDownList ID="DropDownList12" runat="server" CssClass="span3">
                                  <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>  <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>  <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>  <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>  <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>  <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>  <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>  <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>  <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>

                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>  <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>  <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>  <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>  <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem><asp:ListItem>31</asp:ListItem>

                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList13" runat="server" CssClass="span3">

                                  <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>  <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>  <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>  <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>  <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>

                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList14" runat="server" CssClass="span4">

                                  <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>  <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>  <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>  <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>  <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>

                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2026</asp:ListItem>

                            </asp:DropDownList>
                            <img height="21" src="addons/default/themes/otokiralamadabiz/img/simge/reservation_date_icon.jpg" style="position: absolute; top: 2px; right: 5px;" width="24" />

                        </div>
                        <div class="controls relative">
                            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="span3">
                                <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>  <asp:ListItem>17</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="span3">
                                 <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>  <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                            </asp:DropDownList>
                            <img height="21" src="addons/default/themes/otokiralamadabiz/img/simge/time.png" style="position: absolute; top: 2px; right: 90px;" width="24" />
                        </div>
                        <div class="controls">
                            <asp:DropDownList ID="DropDownList9" runat="server" CssClass="span10">
                                <asp:ListItem>Ekonomik</asp:ListItem>
                                <asp:ListItem>Lüks</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!--/pickup-->
                    <!--return-->
                    <div class="span6 return">
                        <h3 class="title">Teslimat yeri</h3>
                        <div class="controls">
                            <asp:DropDownList ID="drp_teslim_sehir" runat="server" CssClass="span12" AutoPostBack="true" OnSelectedIndexChanged="drp_teslim_sehir_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div>
                            <asp:DropDownList ID="drp_teslim_ilce" runat="server" CssClass="span12"></asp:DropDownList>
                        </div>
                        <div class="controls relative">

                            <asp:DropDownList ID="DropDownList15" runat="server" CssClass="span3">
                                  <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>  <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>  <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>  <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>  <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>  <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>  <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>  <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>  <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>

                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>  <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>  <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>  <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>  <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem><asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList16" runat="server" CssClass="span3">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>  <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>  <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>  <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>  <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem> 

                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList17" runat="server" CssClass="span4">

                                 <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>  <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>  <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>  <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>  <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>

                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>



                            </asp:DropDownList>
                            <img height="21" src="addons/default/themes/otokiralamadabiz/img/simge/reservation_date_icon.jpg" style="position: absolute; top: 2px; right: 5px;" width="24" />
                        </div>
                        <div class="controls relative">
                            <asp:DropDownList ID="DropDownList10" runat="server" CssClass="span3">
                                <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>  <asp:ListItem>17</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList11" runat="server" CssClass="span3">
                                 <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>  <asp:ListItem>30</asp:ListItem>
                                   <asp:ListItem>45</asp:ListItem>
                            </asp:DropDownList>
                            <img height="21" src="addons/default/themes/otokiralamadabiz/img/simge/time.png" style="position: absolute; top: 2px; right: 90px;" width="24" />
                        </div>
                        <div class="controls">
                            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="reservation-search-btn" ImageUrl="~/Default.aspx" OnClick="ImageButton1_Click"  />

                        </div>
                    </div>
                    <!--/return-->
                </div>
                <!--/reservation-form-->

                <!--reservation-search-->
                <div class="row-fluid reservation-search">
                    <div class="span12">
                        <div class="controls">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="span5" Style="background-color: #FF9;" placeholder="REZERVASYON KODU"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="reservation-show-btn" />
                            <asp:ImageButton ID="ImageButton3" runat="server" CssClass="reservation-cancel-btn" />

                        </div>
                    </div>
                </div>
                <!--/reservation-search-->
            </div>
            <!--/reservation-->

            <!--slider-->
            <div id="car-slides" class="span5 car-slider">
                <div class="slides_container">
                    <div class="slide" style="min-height: 295px;">
                        <h3 class="title txt-color-one"><span class="logo">
                            <img alt="BMW" height="22" src="files/thumb/12/40/22.png" /></span>&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="LABEL"></asp:Label>
                        </h3>
                        <div>
                            <a href="#" style="min-height: 248px;">
                                <img alt="X 5" class="image" height="248" src="files/thumb/404/382/248/fit/x-5.jpg" style="min-height: 248px;" width="382" /></a>
                        </div>
                        <div class="caption" style="bottom: 0">
                            <ul>
                                <li><span class="med-car-icons med-person-icon pull-left"></span>&nbsp;<asp:Label ID="Label5" runat="server" Text="00"></asp:Label>
                                </li>
                                <li><span class="med-car-icons med-baggage-icon pull-left"></span>&nbsp;<asp:Label ID="Label6" runat="server" Text="00"></asp:Label>
                                </li>
                                <li><span class="med-car-icons med-fuel-icon pull-left"></span>&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text="Dizel"></asp:Label></li>
                                <li><span class="med-car-icons med-climate-icon pull-left"></span>&nbsp;<asp:Label ID="Label8" runat="server" Text="Klimalı"></asp:Label>
                                </li>
                                <li><span class="med-car-icons med-gear-icon pull-left"></span>&nbsp;
                                    <asp:Label ID="Label9" runat="server" Text="Otomatik"></asp:Label></li>
                            </ul>
                        </div>
                    </div>



                </div>
            </div>
            <!--/slider-->

        </div>
        <!--/reservation-->
    </div>
    <!--/reservation/and/slider-->
     
    <div class="container space">
         <ul id="mycarousel" class="jcarousel-skin-tango" style="width:950px; height:auto">
        <asp:Repeater ID="rptImages" runat="server">
            <ItemTemplate>
                <li>
                    <img alt="" style='height: 100px; width: 200px' src='<%# Eval("path") %>' />
                   
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

    </div>

    <div class="container space">

    
    </div>

    <!--mini-boxes-->
    <div class="container mini-boxes">
        <div class="row-fluid">
            <div class="span4 box">
                <h3 class="title txt-shadow">HİZMETLERİMİZ</h3>
                <div class="span12">
                    <ul class="services row-fluid">
                        <li class="span6 pull-left"><span class="service-icons service-nav-icon pull-left"></span><a href="Hizmetler/Navigasyon.aspx">Navigasyon</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-cheuf-icon pull-left"></span><a href="Hizmetler/Soforlu-Arac-Kiralama.aspx">Şoför</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-baby-icon pull-left"></span><a href="Hizmetler/Bebek-Koltugu.aspx">Bebek Koltuğu</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-asist-icon pull-left"></span><a href="Hizmetler/Yol-Yardimi.aspx">Yol Yardımı</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-secure-icon pull-left"></span><a href="Hizmetler/Full-Kasko.aspx">Full Kasko</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-airport-icon pull-left"></span><a href="Hizmetler/Havaalani-Arac-Teslim.aspx">Araç Teslim</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-limit-icon pull-left"></span><a href="Hizmetler/Limitsiz-Km.aspx">Limitsiz Km</a></li>
                        <li class="span6 pull-left"><span class="service-icons service-sales-icon pull-left"></span><a href="Hizmetler/Indirimli-Fiyatlar.aspx">İndirimli Fiyatlar</a></li>
                    </ul>
                </div>
            </div>
            <div class="span4 box newsletters">
                <h3 class="title txt-shadow">E-BÜLTEN</h3>
                <div class="row-fluid">
                    <div class="span4" style="padding: 15px 10px;">
                        <span class="newsletters-icon"></span>
                    </div>
                    <div class="span8" style="padding: 15px 15px 0px 0px;">
                        <label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="span12" placeholder="Adınız ve Soyadınız"></asp:TextBox>
                            <label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="span12" placeholder="E-Posta Adresiniz"></asp:TextBox>
                                <label style="text-align: right;">
                                    <span class="pull-left" style="font-size: 10px; letter-spacing: -0.05em; margin-right: 10px;"></span>
                                    <input class="newsletters-btn" name="newsletter-send" type="submit" /></label>
                    </div>
                </div>
            </div>
            <div class="span4 box calc_range">
                <script type="text/javascript">

                    jQuery(function ($) {
                        $origin = $('select[name="origin"]');
                        $destin = $('select[name="destin"]');

                        $origin.live('change', function () {
                            if ($('option:selected', this).val() == $destin.find('option:selected').val()) {
                                alert('Aynı şehri seçtiniz!');
                                return false;
                            }
                            $.ajax({
                                url: BASE_URI + 'mesafe/ajax/distance',
                                dataType: "json",
                                type: "POST",
                                data: { origin: $('option:selected', this).text(), destin: $destin.find('option:selected').text() },
                                success: function (data) {
                                    $('.km').html(data.distance);
                                    $('.time').html(data.duration);
                                }
                            });
                        });

                        $destin.live('change', function () {
                            if ($('option:selected', this).val() == $origin.find('option:selected').val()) {
                                alert('Aynı şehri seçtiniz!');
                                return false;
                            }
                            $.ajax({
                                url: BASE_URI + 'mesafe/ajax/distance',
                                dataType: "json",
                                type: "POST",
                                data: { destin: $('option:selected', this).text(), origin: $origin.find('option:selected').text() },
                                success: function (data) {
                                    $('.km').html(data.distance);
                                    $('.time').html(data.duration);
                                }
                            });
                        });

                        $('select[name="origin"]').trigger('change');
                    });

                </script>
                <h3 class="title txt-shadow">MESAFE HESAPLA</h3>
                <div class="row-fluid">
                    <div class="span4" style="padding: 15px 10px;">
                        <span class="range-icon"></span>
                    </div>
                    <div class="span8" style="padding: 15px 15px 0px 0px;">
                        <label>
                            <asp:DropDownList ID="Drp_il" runat="server" CssClass="span12 city" AutoPostBack="true" OnSelectedIndexChanged="Drp_il_SelectedIndexChanged"></asp:DropDownList>
                            <asp:DropDownList ID="Drp_ilce" runat="server" CssClass="span12 city" OnSelectedIndexChanged="Drp_ilce_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                        </label>
                        <p style="margin-top: -5px;">
                            <span class="mesafe txt-color-one">MESAFE</span>&nbsp;&nbsp;<span class="txt-color-two km" style="font-size: 20px;"><asp:Label ID="lblMesafe" runat="server" Text="0"></asp:Label>
                                </span>
                        </p>
                        <p style="margin-top: -10px;">
                            <span class="mesafe txt-color-one">ZAMAN</span>&nbsp;&nbsp;<span class="txt-color-two time" style="font-size: 12px;"><asp:Label ID="lblSaat" runat="server" Text="0"></asp:Label></span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </label>
    </label>
</asp:Content>




