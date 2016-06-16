<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Yonetim_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Yönetim Paneli</title>
<link href="../assets/css/style.css" rel="stylesheet" media="screen" />
<link href="../assets/css/bootstrap.css" rel="stylesheet" media="screen" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/icheck.min.js"></script>
 
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="loginwrapper">
	<span class="circle"></span>
	<div class="loginone">
    	<header>
        	<a href="dashboard1.html"> <img src="../assets/images/logo.png" />  </a>
            <p>Polat Oto Kiralama İçerik Yönetimi</p>
            <asp:Label ID="Label1" runat="server" ForeColor="#99FF99" Text="Label"></asp:Label>
        </header>
        
        	<div class="username">
                <asp:TextBox ID="txtKullaniciAdi" runat="server" class="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
                <i class="glyphicon glyphicon-user"></i>
            </div>
            <div class="password">
                <asp:TextBox ID="txtPasswd" runat="server" type="password" class="form-control" placeholder="Şifre"></asp:TextBox>
                <i class="glyphicon glyphicon-lock"></i>
            </div>
        
			<script>
			    $(document).ready(function () {
			        $('.bluecheckradios').iCheck({
			            checkboxClass: 'icheckbox_flat-blue',
			            radioClass: 'iradio_flat-blue',
			            increaseArea: '20%' // optional
			        });
			    });
			</script>
            <asp:Button ID="btnGiris" runat="server" class="btn btn-primary style2" Text="Giriş" OnClick="btnGiris_Click" />
      
        <footer>
 
            <a href="#" class="register pull-right">Copyright © 2015</a>
            <div class="clear"></div>
        </footer>
       
    </div>
</div>
     
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-42761673-1', 'extracoding.com');
    ga('send', 'pageview');

</script>

    
    </div>
    </form>
</body>
</html>