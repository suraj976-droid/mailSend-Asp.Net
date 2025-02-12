<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DbImplementation.aspx.cs" Inherits="janBatchWebFormApp.DbImplementation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Product Name
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Product Image
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            Product Category<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Electronic</asp:ListItem>
                <asp:ListItem>Cloth</asp:ListItem>
                <asp:ListItem>Fruits</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Price<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Fetch" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Style="margin-left: 35em;" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("oid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height="100px" Width="100px" ImageUrl='<%#Eval("productimage") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
            <br />
            DataList<br />
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="3" CssClass="align-content-center" GridLines="Horizontal" Height="514px" RepeatColumns="4" RepeatDirection="Horizontal" Width="1320px">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src='<%#Eval("productimage") %>' alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">'<%#Eval("pname") %>'</h5>
                            <p class="card-text">'<%#Eval("pcat") %>'.</p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">'<%#Eval("price") %>'</li>
                       
                        </ul>
                        <div class="card-body">
                            <a href="#" class="btn btn-primary">Add to Cart</a>

                        </div>
                    </div>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
        </div>
    </form>
</body>
</html>
