<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="janBatchWebFormApp.First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Id<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            name<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            salary<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            dept<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>it</asp:ListItem>
                <asp:ListItem>sales</asp:ListItem>
                <asp:ListItem>hr</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
