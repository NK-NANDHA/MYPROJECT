﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="exam.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField HeaderText="NAME" />
                <asp:BoundField HeaderText="MOBILE" />
                <asp:BoundField HeaderText="EMAIL" />
                <asp:BoundField HeaderText="PASSWORD" />
                <asp:BoundField HeaderText="COUNTRY" />
                <asp:BoundField HeaderText="GENDER" />
                <asp:BoundField HeaderText="ADDRESS" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <CENTER><h1> ADD DATA</h1></CENTER>
        <CENTER><table>
            <tr>
                <td>
                     <asp:Label ID="lblname" runat="server" Text="NAME :"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="lblmob" runat="server" Text="MOBILE NO :"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="lblmail" runat="server" Text="MAILID :"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="lblpass" runat="server" Text=" PASSWORD :"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="lblcnfpass" runat="server" Text="CONFIRMPASS :"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtcnfpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcnfpass" ErrorMessage="CONFIRM PASSWORD AS SAME AS PASSWORD"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcountry" runat="server" Text="COUNTRY :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="txtcountry" runat="server">
                        <asp:ListItem>     </asp:ListItem>
                        <asp:ListItem> INDIA </asp:ListItem>
                        <asp:ListItem> AMERICA </asp:ListItem>
                        <asp:ListItem> CANADA </asp:ListItem>
                        <asp:ListItem> SRI LANKA </asp:ListItem>
                    </asp:DropDownList>
                 
            </tr>
            <tr>
                <td>
                     <asp:Label ID="lblgender" runat="server" Text="GENDER :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="txtgender" runat="server">
                        <asp:ListItem> MALE </asp:ListItem>
                        <asp:ListItem> FEMALE </asp:ListItem>
                        <asp:ListItem> TRANSGENDER </asp:ListItem>
                    </asp:RadioButtonList>
                    
                </td>
            </tr>
             <tr>
                <td>
                     <asp:Label ID="lbladdr" runat="server" Text="ADDRESS :"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btnsub" runat="server" Text="SUBMIT" OnClick="btnsub_Click" /></td>
                
                
            </tr>
            

        </table></CENTER>
        

    </form>
</body>
</html>
