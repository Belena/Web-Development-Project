<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="products.aspx.vb" Inherits="products" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
       <h1>Products:</h1> 
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
   
    <p>
       
        <asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox>
         <asp:Label ID="Label1" runat="server" 
            Text="Search for products by name (or ID)"></asp:Label>
        <br />
        <asp:AutoCompleteExtender ServiceMethod="SearchProducts" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="TextBoxSearch"
            ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false" >
        </asp:AutoCompleteExtender>

        <asp:Button ID="btnProductSubmit" runat="server" Text="Submit" />
    </p>

    <p>
        &nbsp;</p>
     <asp:AccessDataSource ID="ProductDataSourceRepeater" runat="server" 
        DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT * FROM [Products]">
    </asp:AccessDataSource>

   <asp:AccessDataSource ID="searchProductDataSource" runat="server" 
            DataFile="~/App_Data/Northwind.mdb" 
            
            
        
    
        SelectCommand="SELECT ProductID, ProductName, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued, SupplierID FROM Products WHERE (ProductName LIKE '%' + ? + '%') OR (ProductID LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxSearch" Name="ProductName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxSearch" Name="ProductID" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>

        <br />
        <asp:Repeater ID="productDataRepeater" runat="server" 
        DataSourceID="ProductDataSourceRepeater">
    </asp:Repeater>
    <br />
    <asp:Label ID="LabelStatusText" runat="server" Text="All Products"></asp:Label>
    <br />
    Select a product if you would like to edit or delete it

    <br />
        <asp:GridView ID="ProductsGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" 
            DataSourceID="ProductDataSourceRepeater" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                    SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                    SortExpression="CategoryID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                    SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                    SortExpression="UnitsOnOrder" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                    SortExpression="UnitsInStock" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />

</asp:Content>

