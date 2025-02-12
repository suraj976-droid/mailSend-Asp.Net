<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtpVerify.aspx.cs" Inherits="janBatchWebFormApp.OtpVerify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Email
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send OTP" />
        <br />
        <br />
        OTP<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Verify" />
        <br />
    </form>
</body>
</html>
