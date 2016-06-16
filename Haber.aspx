<%@ Page Title="" Language="C#" MasterPageFile="~/Otokiralamadabiz/HomePage.master" AutoEventWireup="true" CodeFile="Haber.aspx.cs" Inherits="Haber" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!--blogs-->
<div class="container pages">
  <div class="row-fluid">
  
<h3 class="title gradient-reverse txt-color-one">Duyurular</h3>

<div class="row-fluid">	
  <div class="span12" style="padding:10px;">
    <div class="row-fluid">
	<ul class="thumbnails">
		<li class="span3 pull-left" style="margin:0px 5px 5px 0px;">
			<div class="thumbnail" style="min-height:290px;">
								
			</div>
		</li>
            <asp:DataList ID="DataList1" runat="server">
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
			
	</div>	</ul>

  </div>
</div>
<div class="clearfix"></div>
<div class="pagination"> <ul>
     <li class="active"><span>1</span></li>
    <li><a href="#">2</a></li><li><a href="#">3</a></li></ul></div>

  </div>
</div>
<!--/blogs-->

</asp:Content>

