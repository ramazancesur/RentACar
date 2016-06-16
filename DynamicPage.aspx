<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DynamicPage.aspx.cs" Inherits="DynamicPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h2>
        <asp:Label ID="lblTitle" runat="server" /></h2>
    <hr />
    <asp:Label ID="lblContent" runat="server" />
    </form>
</html></body>

