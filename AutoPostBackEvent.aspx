<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoPostBackEvent.aspx.cs" Inherits="janBatchWebFormApp.AutoPostBackEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            1st No<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            2nd No<asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
