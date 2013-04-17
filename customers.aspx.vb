Imports System.Data.OleDb

Partial Class customers
    Inherits System.Web.UI.Page

    Protected Sub btnCustomerSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCustomerSubmit.Click
        If (tbSearchCustomerRecords.Text.Length = 0) Then
            CustomersGridView.DataSourceID = "CustomerDataSourceRepeater"
            lblStatusText.Text = "Displaying All Results"
        Else
            CustomersGridView.DataSourceID = "searchCustomerDataSource"
            lblStatusText.Text = "Displaying Search Results"
        End If
    End Sub

    <System.Web.Script.Services.ScriptMethod(), System.Web.Services.WebMethod()>
    Public Shared Function SearchCustomers(ByVal prefixText As String, ByVal count As Integer) As List(Of String)
        Dim conn As OleDbConnection = New OleDbConnection
        conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=|DataDirectory|Northwind.mdb;"
        Dim cmd As OleDbCommand = New OleDbCommand
        cmd.CommandText = "select ContactName from Customers where" & _
        " ContactName like @SearchText + '%'"
        cmd.Parameters.AddWithValue("@SearchText", prefixText)
        cmd.Connection = conn
        conn.Open()
        Dim customers As List(Of String) = New List(Of String)
        Dim sdr As OleDbDataReader = cmd.ExecuteReader
        While sdr.Read
            customers.Add(sdr("ContactName").ToString)
        End While
        conn.Close()
        Return customers
    End Function




    Protected Sub CustomersGridView_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CustomersGridView.SelectedIndexChanged

    End Sub

    Protected Sub customerDataRepeater_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles customerDataRepeater.ItemCommand

    End Sub

    Protected Sub searchCustomerDataSource_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles searchCustomerDataSource.Selecting

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
