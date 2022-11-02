<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="exam.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>

        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" />
                <asp:BoundField DataField="email" HeaderText="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" />
                <asp:BoundField DataField="address" HeaderText="address" />
            </Columns>
        </asp:GridView>
        
    </form>
</body>
</html>
