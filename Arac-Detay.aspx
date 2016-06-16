<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Arac-Detay.aspx.cs" Inherits="Cars_Arac_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../../addons/default/themes/otokiralamadabiz/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../../addons/default/themes/otokiralamadabiz/css/style.css" rel="stylesheet" type="text/css" />
    <link href="../../addons/default/themes/otokiralamadabizc/css/colorbox.css" rel="stylesheet" type="text/css" />

   <script src="../addons/default/themes/otokiralamadabiz/js/jquery.min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.mousewheel.min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.carousel.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/slides.min.jquery.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/scrollable/scrollable.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/scrollable/scrollable.autoscroll.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="../addons/default/themes/otokiralamadabiz/js/global.js" type="text/javascript"></script>

    <script src="../../assets/cache/5d47807bc25b243515777168f326badf.js"></script>
<div class="container">
      
  <!--rows-->
  <div class="row-fluid">
    <!--col/left-->
    <div class="span4">
      <!--row/booking-->
      <div class="row-fluid">
        <div class="span12 bg-white">
              <!--reservation-left-->
      <div class="row-fluid reservation-form">
          <div class="span12 pickup">
            <h3 class="title">Alış Bilgisi</h3>
                      <div class="controls">
                          <asp:DropDownList ID="drp_alis_sehir" runat="server" AutoPostBack="true" CssClass="span12" OnSelectedIndexChanged="drp_alis_sehir_SelectedIndexChanged"></asp:DropDownList>
          </div>
          <div class="controls">
                 <asp:DropDownList ID="drp_alis_ilce" runat="server" AutoPostBack="false" CssClass="span12"></asp:DropDownList>
          </div>
          <div class="controls relative">
              <asp:DropDownList ID="drxpd" runat="server" CssClass="span3">
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
              <asp:DropDownList ID="weqq" runat="server" CssClass="span3">
                   <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>  <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>  <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>  <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>  <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem> 
              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList5" runat="server" CssClass="span4">
                  
                                 <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>  <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>  <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>  <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>  <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>

                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>

              </asp:DropDownList>
            <img height="21" src="../addons/default/themes/otokiralamadabiz/img/simge/reservation_date_icon.jpg" style="position:absolute; top:2px; right:5px;" width="24" />
          </div>
          <div class="controls relative">
              <asp:DropDownList ID="DropDownList6" runat="server" CssClass="span3"> <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>  <asp:ListItem>17</asp:ListItem></asp:DropDownList>
              <asp:DropDownList ID="DropDownList7" runat="server" CssClass="span3">
                   <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>  <asp:ListItem>30</asp:ListItem>
                  <asp:ListItem>45</asp:ListItem>
              </asp:DropDownList>
            <img height="21" src="../addons/default/themes/otokiralamadabiz/img/simge/time.png" style="position:absolute; top:2px; right:100px;" width="24" />
          </div>  
          </div>
          <div class="span12 return" style="margin-top:0px; padding-top:0px;">
            <h3 class="title">Dönüş Bilgisi</h3>
                      <div class="controls">
                          <asp:DropDownList ID="drp_satis_sehir" runat="server" CssClass="span12" AutoPostBack="true" OnSelectedIndexChanged="drp_satis_sehir_SelectedIndexChanged"></asp:DropDownList>
          </div>
          <div>
              <asp:DropDownList ID="drp_satis_ilce" runat="server" CssClass="span12"></asp:DropDownList>
       
          </div>
          <div class="controls relative">
              <asp:DropDownList ID="DropDownList10" runat="server" CssClass="span3">
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
              <asp:DropDownList ID="DropDownList11" runat="server" CssClass="span3">
                  <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>  <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>  <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>  <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>  <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>

                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem> 

              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList12" runat="server" CssClass="span4">
                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>  <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>  <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>  <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>  <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>

                                <asp:ListItem>2025</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                  </asp:DropDownList>
                       <img height="21" src="../addons/default/themes/otokiralamadabiz/img/simge/reservation_date_icon.jpg" style="position:absolute; top:2px; right:5px;" width="24" />
   
          </div>
          <div class="controls relative">
              <asp:DropDownList ID="DropDownList13" runat="server" CssClass="span3">
                    <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>  <asp:ListItem>17</asp:ListItem>

              </asp:DropDownList>
              <asp:DropDownList ID="DropDownList14" runat="server" CssClass="span3">
                    <asp:ListItem>00</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>  <asp:ListItem>30</asp:ListItem>
                  <asp:ListItem>45</asp:ListItem>
              </asp:DropDownList>
            <img height="21" src="../addons/default/themes/otokiralamadabiz/img/simge/time.png" style="position:absolute; top:2px; right:100px;" width="24" />
          </div>     
          </div>
      </div>
    <!--reservation-left-->
        </div>
      </div>
      <!--/row/booking-->
      <div class="space"></div>
      <!--row/prices-->
      <div class="row-fluid">
        <div class="span12 bg-white">
          <h3 class="title gradient-reverse txt-color-one" style="font-size: 14px; margin:0px; padding-left: 10px;">TOPLAMLAR</h3>
          <div style="padding: 10px;">
              <table class="table">
                <tr>
                  <th>Günlük</th>
                  <td class="daily_price">
                      <asp:Label ID="lbl_gunluk" runat="server" Text="00"></asp:Label> TL</td>
                </tr>
                <tr>
                  <th>Yol Ücreti</th>
                  <td class="road_fee">
                      <asp:Label ID="lbl_yol_ucreti" runat="server" Text="00"></asp:Label>,00 TL</td>
                </tr>
                <tr>
                  <th>Toplam Gün</th>
                  <td class="total_day">
                     <asp:TextBox ID="txt_gun" Text="1" runat="server"></asp:TextBox>
                </tr>
                <tr>
                  <th>Ekstra Ücretler</th>
                  <td class="extra_price">
                      <asp:Label ID="lbl_Ekstra" runat="server" Text="0"></asp:Label>,00 TL</td>
                </tr>
                <tr>
                  <th>Toplam Tutar</th>
                  <td class="total_price">
                      <asp:Label ID="lbl_Total" runat="server" Text="000"></asp:Label>.00 TL</td>
                </tr>
                  <tr>
                     
                      <td colspan="2" style="text-align:center">
                          <asp:Button ID="btn_Hesapla" runat="server" Text="Toplam Hesapla" OnClick="btn_Hesapla_Click" />
                      </td>
                  </tr>
              </table>
          </div>        
        </div>
      </div>
      <!--/row/prices-->
    </div>
    <!--/col/left-->
    
    <!--col/right-->
    <div class="span8">
    
      <!--row/car-info--> 
      <div class="row-fluid">
        <div class="span12 bg-white">
          <h3 class="title gradient-reverse txt-color-one" style="font-size: 14px; margin:0px; padding-left:10px;"><img src="../../files/thumb/12/20.png" border="0" style="border: none;" /> <asp:Label ID="Label7" runat="server" Text="ARAÇ MARKA"></asp:Label></h3>
           <asp:DataList ID="DataList1" runat="server">
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
                                            <td>Kiralama Ücreti Günlük
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("kiralama_ucreti") %>' />;</td>

                                            <tr>
                                        <td>
                                           Bagaj:
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("bagaj_sayisi") %>'></asp:Label></a></td>
                                        <tr>
                                            <td>Vites:
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("vites") %>' /></td>

                                            <td>Arac Özellikleri
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("arac_özellikleri") %>' />

                                            </td>
                                            <td>Yskit Tüketimi:
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("yakit_tüketimi") %>' /></td>
                                            <td> Yakit tipi:
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("yakıt_tipi") %>' />;</td>



                                            <td>
                                              


                                            </td>
                                        </tr>
                                    </tr>

                                </tbody>
                            </table>
                        </ItemTemplate>


                    </asp:DataList>
        </div>
      </div>
      <!--/row/car-info-->
      
      <div class="space"></div>
      
      <!--row/car-extras-->
      <div class="row-fluid">
        <div class="span12 bg-white">
          <h3 class="title gradient-reverse txt-color-one" style="margin: 0px; padding-left:10px; font-size:14px;">EKSTRALAR</h3>
                        <div class="controls" style="padding: 10px;">
                                        <div class="row-fluid">
                          <div class="span3">
                             Navigasyon                          </div>
                          
                          <div class="span6">
                            
                                <asp:Label ID="Label15" runat="server" CssClass="pull-left">
             <input id="Text1" type="radio" name="extras[1][status]" value="1" class="extra_radio" />  İstiyorum  </asp:Label> 
                              <asp:Label ID="Label16" runat="server" CssClass="pull-left" ><input id="Text1" type="radio" name="extras[1][status]" value="0" checked="checked" class="extra_radio" />
                               İstemiyorum </asp:Label>
                           
                                <br />
                                <asp:TextBox ID="txt_nav" runat="server">0</asp:TextBox>
                                <br />

                          </div>
                        
                            <div class="hidden">
                              
<input type="hidden" name="extras[1][item_price]" value="3.00" />
                              
<input type="hidden" name="extras[1][name]" value="Navigasyon" />
                              
<input type="hidden" name="extras[1][id]" value="1" />
                            </div>
                            
                            <div class="span3">
                                Günlük Fiyatı :<asp:Label ID="Label23" runat="server" Text="3.00"></asp:Label> TL                            </div>
                        
                        </div>

                                        <div class="row-fluid">
                          <div class="span3">
                             Bebek Koltuğu                          </div>
                          
                          <div class="span6">
                              <asp:Label ID="Label17" runat="server" CssClass="pull-left">
                        <input id="Text1" type="radio" name="extras[2][status]" value="1" class="extra_radio" /> İstiyorum
                              </asp:Label>
                              <asp:Label ID="Label18" runat="server" CssClass="pull-left">
                        <input id="Text1" type="radio" name="extras[2][status]" value="0" checked="checked" class="extra_radio" /> İstemiyorum
                              </asp:Label>
                           
                              <br />
                              <asp:TextBox ID="txt_bebek" runat="server">0</asp:TextBox>
                              <br />

                          </div>
                        
                            <div class="hidden">
                              
<input type="hidden" name="extras[2][item_price]" value="3.00" />
                              
<input type="hidden" name="extras[2][name]" value="Bebek Koltuğu" />
                              
<input type="hidden" name="extras[2][id]" value="2" />
                            </div>
                            
                            <div class="span3">
                                Günlük Fiyatı :   <asp:Label ID="Label21" runat="server" Text="3.00"></asp:Label>  TL  </div>
                        
                        </div>

                                        <div class="row-fluid">
                          <div class="span3">
                             Şoför                          </div>
                          
                          <div class="span6">
                              <asp:Label ID="Label19" runat="server" CssClass="pull-left">
                                <input id="Text1" type="radio" name="extras[3][status]" value="1" class="extra_radio" /> İstiyorum
                              </asp:Label>
                              <asp:Label ID="Label20" runat="server" CssClass="pull-left">
                                <input id="Text1" type="radio" name="extras[3][status]" value="1" checked="checked" class="extra_radio" /> İstemiyorum
                              </asp:Label>
                            
                              <br />
                              <asp:TextBox ID="txt_sofor" runat="server">0</asp:TextBox>
                              <br />

                          </div>
                        
                            <div class="hidden">
                              
<input type="hidden" name="extras[3][item_price]" value="40.00" />
                              
<input type="hidden" name="extras[3][name]" value="Şoför" />
                              
<input type="hidden" name="extras[3][id]" value="3" />
                            </div>
                            
                            <div class="span3">
                                Günlük Fiyatı :<asp:Label ID="Label22" runat="server" Text="40.00"></asp:Label> TL                            </div>
                        
                        </div>

                     
            </div>
                    </div>
      </div>      
      <!--/row/car-extras-->
      
      <div class="space"></div>
      
      <!--row/booking-form-->
      <div class="row-fluid">
        <div class="span12 bg-white">
        
          <h3 class="title gradient-reverse txt-color-one" style="margin: 0px; padding-left:10px; font-size:14px;">REZERVASYON FORMU</h3> 
            
            <div class="hidden">
                <input name="car_id" type="hidden" value="7" />
            </div>
            
            <div class="row-fluid" style="padding: 10px;">
              <div class="span6">
              
                <div class="control-group">
                    <label>Adı</label>
                    <div class="input">
                        <asp:TextBox ID="txtAdi" runat="server" CssClass="width-15"></asp:TextBox>
</div>
                </div>
                
                <div>
                    <label>Soyadı</label>
                    <div class="input">
                        <asp:TextBox ID="txtSoyadi" runat="server" CssClass="width-15"></asp:TextBox>
</div>
                </div>
                
                <div>
                    <label>Telefon</label>
                    <div class="input">
                        <asp:TextBox ID="txtTelefon" runat="server" CssClass="width-15"></asp:TextBox>
                    
                     </div>        
                </div>
                
                <div>
                    <label>Email</label>
                    <div class="input">
                        <asp:TextBox ID="txtEMail" runat="server" CssClass="width-15"></asp:TextBox>
</div>        
                </div>
                <br />

                                <div>
        			<div>
                       Ödeme Şekli : <asp:DropDownList ID="DropDownList15" runat="server" CssClass="span6">
                                    <asp:ListItem>Nakit</asp:ListItem>
                                    <asp:ListItem>Kredi Kartı</asp:ListItem>

                                     </asp:DropDownList>
                                        
                                        </div>        
                </div>
                                          
              </div>
              <div class="span6">
              
                <div>
                    <label>Ülke</label>
                    <div class="input">
                        <asp:DropDownList ID="DropDownList16" runat="server" CssClass="span8">
                            <asp:ListItem>Türlkiye</asp:ListItem>
                            <asp:ListItem>Rusya</asp:ListItem>
                            <asp:ListItem>Azerbeycan</asp:ListItem>
                            <asp:ListItem>Arabistan</asp:ListItem>
                            <asp:ListItem>Yemen</asp:ListItem>
                            <asp:ListItem>Bulgaristan</asp:ListItem>

                        </asp:DropDownList>
</div>
                </div>
                
                <div>
                    <label>Şehir</label>
                    <div class="input">
                        <asp:DropDownList ID="DrpSehir" runat="server" CssClass="span8"></asp:DropDownList>
</div>    
                </div>
        
                <div>
                    <label>Uçuş No</label>
                    <div class="input">
                        <asp:TextBox ID="txtUcus" runat="server" CssClass="width-15"></asp:TextBox>
</div>        
                </div>
                
                <div>
                    <label>Kalkış Havayolu</label>
                    <div class="input">
                        <asp:TextBox ID="txtKalkıs" runat="server" CssClass="width-15"></asp:TextBox>
</div>
                </div>
              
              </div>
            </div>
            
            <div class="row-fluid" style="padding: 10px;">
              <div class="span12">
                <div>
                    <label>Özel İstekler</label>
                    <div class="input">
                          <asp:TextBox ID="txt_Istek" runat="server" TextMode="MultiLine" Rows="8" CssClass="span9"></asp:TextBox>
</div>
                    
                  
                                        
                </div>
              </div>
            </div>
            <asp:Button ID="btn_rezervasyon" runat="server" Text="Rezervasyon" OnClick="btn_rezervasyon_Click" />
            <asp:Label ID="lbl_Bilgi" runat="server" ForeColor="#FF9966" Text="İİİİ"></asp:Label>
        </div>
      </div>  
      <!--/row/booking-form-->
      
    </div>
    <!--/col/right-->
    
  </div>
  <!--/rows-->
</div>

</form>
<!--/pages-->
</asp:Content>

