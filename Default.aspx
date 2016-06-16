﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        Dynamic Pages</h2>
    <br />
    <asp:HyperLink NavigateUrl="~/AddPage.aspx" Text="Add Page" runat="server" />
    <hr />
    <asp:Repeater ID="rptPages" runat="server">
        <ItemTemplate>
            <%# Container.ItemIndex + 1 %>
            <asp:HyperLink NavigateUrl='<%# Eval("PageName", "~/Pages/{0}.aspx") %>' Text='<%# Eval("Title") %>'
                runat="server" />
        </ItemTemplate>
        <SeparatorTemplate>
            <br />
        </SeparatorTemplate>
    </asp:Repeater>
    </form>
</body>
</html>
