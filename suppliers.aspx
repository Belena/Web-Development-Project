<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="suppliers.aspx.vb" Inherits="suppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageMap ID="ImageMap1" runat="server">
    </asp:ImageMap>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Suppliers] ORDER BY [SupplierID]">
    </asp:SqlDataSource>
    <br />
    <asp:ListView ID="ListView1" runat="server" 
        DataKeyNames="SupplierID,CompanyName,ContactName,Address,Region,Phone" 
        DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="SupplierIDLabel" runat="server" 
                        Text='<%# Eval("SupplierID") %>' />
                </td>
                <td>
                    <asp:Label ID="CompanyNameLabel" runat="server" 
                        Text='<%# Eval("CompanyName") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNameLabel" runat="server" 
                        Text='<%# Eval("ContactName") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactTitleLabel" runat="server" 
                        Text='<%# Eval("ContactTitle") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                </td>
                <td>
                    <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                </td>
                <td>
                    <asp:Label ID="PostalCodeLabel" runat="server" 
                        Text='<%# Eval("PostalCode") %>' />
                </td>
                <td>
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                </td>
                <td>
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                </td>
                <td>
                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                </td>
                <td>
                    <asp:Label ID="HomePageLabel" runat="server" Text='<%# Eval("HomePage") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="SupplierIDLabel1" runat="server" 
                        Text='<%# Eval("SupplierID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                        Text='<%# Bind("CompanyName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactNameTextBox" runat="server" 
                        Text='<%# Bind("ContactName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactTitleTextBox" runat="server" 
                        Text='<%# Bind("ContactTitle") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                        Text='<%# Bind("PostalCode") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HomePageTextBox" runat="server" 
                        Text='<%# Bind("HomePage") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                        Text='<%# Bind("CompanyName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactNameTextBox" runat="server" 
                        Text='<%# Bind("ContactName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactTitleTextBox" runat="server" 
                        Text='<%# Bind("ContactTitle") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                        Text='<%# Bind("PostalCode") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                </td>
                <td>
                    <asp:TextBox ID="HomePageTextBox" runat="server" 
                        Text='<%# Bind("HomePage") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="SupplierIDLabel" runat="server" 
                        Text='<%# Eval("SupplierID") %>' />
                </td>
                <td>
                    <asp:Label ID="CompanyNameLabel" runat="server" 
                        Text='<%# Eval("CompanyName") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNameLabel" runat="server" 
                        Text='<%# Eval("ContactName") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactTitleLabel" runat="server" 
                        Text='<%# Eval("ContactTitle") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                </td>
                <td>
                    <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                </td>
                <td>
                    <asp:Label ID="PostalCodeLabel" runat="server" 
                        Text='<%# Eval("PostalCode") %>' />
                </td>
                <td>
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                </td>
                <td>
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                </td>
                <td>
                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                </td>
                <td>
                    <asp:Label ID="HomePageLabel" runat="server" Text='<%# Eval("HomePage") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                    SupplierID</th>
                                <th runat="server">
                                    CompanyName</th>
                                <th runat="server">
                                    ContactName</th>
                                <th runat="server">
                                    ContactTitle</th>
                                <th runat="server">
                                    Address</th>
                                <th runat="server">
                                    City</th>
                                <th runat="server">
                                    Region</th>
                                <th runat="server">
                                    PostalCode</th>
                                <th runat="server">
                                    Country</th>
                                <th runat="server">
                                    Phone</th>
                                <th runat="server">
                                    Fax</th>
                                <th runat="server">
                                    HomePage</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="SupplierIDLabel" runat="server" 
                        Text='<%# Eval("SupplierID") %>' />
                </td>
                <td>
                    <asp:Label ID="CompanyNameLabel" runat="server" 
                        Text='<%# Eval("CompanyName") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNameLabel" runat="server" 
                        Text='<%# Eval("ContactName") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactTitleLabel" runat="server" 
                        Text='<%# Eval("ContactTitle") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                </td>
                <td>
                    <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                </td>
                <td>
                    <asp:Label ID="PostalCodeLabel" runat="server" 
                        Text='<%# Eval("PostalCode") %>' />
                </td>
                <td>
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                </td>
                <td>
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                </td>
                <td>
                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                </td>
                <td>
                    <asp:Label ID="HomePageLabel" runat="server" Text='<%# Eval("HomePage") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <p>
    </p>
</asp:Content>

