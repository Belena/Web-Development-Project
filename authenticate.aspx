<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="authenticate.aspx.vb" Inherits="authenticate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
   <div class="movecenter">
    <asp:Login ID="Login1" runat="server" 
    DestinationPageUrl="home.aspx">
    </asp:Login>
    </div>
</asp:Content>

