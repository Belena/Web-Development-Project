<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecordTest.aspx.vb" Inherits="newrecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <a href="home.aspx">Home</a><a href="items.aspx"> Catalog</a>
        <a href="customers.aspx">Customers</a><a href="newrecord.aspx"> New record</a>
        <a href="login.aspx">Log in</a> <a href="search.aspx">Search</a><br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="firstname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="surname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="surname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="city"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="country"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="country" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="postcode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="postcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" PostBackUrl="customers.aspx" 
                        Text="Submit" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
