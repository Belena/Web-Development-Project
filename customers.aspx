<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeFile="customers.aspx.vb" Inherits="customers" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Customers</h2>
    <p>
         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">
        </asp:ScriptManager>
      
   

</p>

        <asp:Label ID="lblCustomer" runat="server" Text="Search Customer Records:"></asp:Label>
        <br />
        <asp:TextBox ID="tbSearchCustomerRecords" runat="server"></asp:TextBox>
        <asp:AutoCompleteExtender ServiceMethod="SearchCustomers" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="tbSearchCustomerRecords"
            ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false" >
        </asp:AutoCompleteExtender>
        <asp:Button ID="btnCustomerSubmit" runat="server" Text="Submit" />
        <asp:AccessDataSource ID="CustomerDataSourceRepeater" runat="server" 
        DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT * FROM [Customers]">
    </asp:AccessDataSource>
        <asp:AccessDataSource ID="searchCustomerDataSource" runat="server" 
            DataFile="~/App_Data/Northwind.mdb" 
            
            
        
    SelectCommand="SELECT * FROM [Customers] WHERE (([ContactName] LIKE '%' + ? + '%') OR ([CompanyName] LIKE '%' + ? + '%') OR ([CustomerID] LIKE '%' + ? + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbSearchCustomerRecords" Name="ContactName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbSearchCustomerRecords" Name="CompanyName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbSearchCustomerRecords" Name="CustomerID" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:Repeater ID="customerDataRepeater" runat="server" 
        DataSourceID="CustomerDataSourceRepeater">
    </asp:Repeater>
    <br />
    Add new customer:<br />
    <br />
    
    
    <br />
        <asp:Label ID="lblStatusText" runat="server" 
    Text="All Customers"></asp:Label>
        <br />
Select a customer if you would like to edit or delete it<br />
        <br />
        <asp:GridView ID="CustomersGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" 
            DataSourceID="CustomerDataSourceRepeater" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                    SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
                    SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" 
                    SortExpression="Phone" />
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
<br />
        <br />

&nbsp;<br />
    

</asp:Content>
