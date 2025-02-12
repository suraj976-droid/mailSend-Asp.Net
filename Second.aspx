<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Second.aspx.cs" Inherits="janBatchWebFormApp.Second" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="width:30%; padding:50px; margin-left: 40%; border:2px solid gray ;">
        <div>
            Id<asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            <br />
            <br />
            name<asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
            <br />
            <br />
            salary<asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
            <br />
            <br />
            dept<asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                <asp:ListItem>it</asp:ListItem>
                <asp:ListItem>sales</asp:ListItem>
                <asp:ListItem>hr</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn-primary" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
