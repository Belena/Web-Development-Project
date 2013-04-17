<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    Protected Sub LoginView1_ViewChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub LoginView1_ViewChanged1(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub LoginStatus1_LoggingOut(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)

    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <div id="showlogin">
    <asp:LoginView ID="LoginView1" runat="server" 
        onviewchanged="LoginView1_ViewChanged1">
        
        <AnonymousTemplate>
            You are not logged in <br />
       <div class="login"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/register.aspx">
       Register</asp:HyperLink>
       </div>
        </AnonymousTemplate>
        
        <LoggedInTemplate>
            Welcome,<asp:LoginName ID="LoginName1" runat="server" />
           <br />
           <div id="memberslink"><asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Membersonly pages/membersonlypage.aspx"> Members link
            </asp:HyperLink>
            </div>

        </LoggedInTemplate>
    </asp:LoginView>
    </div>
    <br />
    <br />
     <div class="login"><asp:LoginStatus ID="LoginStatus1" runat="server" 
        onloggingout="LoginStatus1_LoggingOut" />
    </div>
    <br />
    
    <br />
    <br />
    
<br />
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
</asp:Content>

