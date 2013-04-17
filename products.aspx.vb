Imports System.Data.OleDb

Partial Class products
    Inherits System.Web.UI.Page

    Protected Sub btnProductSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnProductSubmit.Click
        If (TextBoxSearch.Text.Length = 0) Then
            ProductsGridView.DataSourceID = "ProductDataSourceRepeater"
            LabelStatusText.Text = "Displaying All Results"
        Else
            ProductsGridView.DataSourceID = "searchProductDataSource"
            LabelStatusText.Text = "Displaying Search Results"
        End If
    End Sub

    <System.Web.Script.Services.ScriptMethod(), System.Web.Services.WebMethod()>
    Public Shared Function SearchProducts(ByVal prefixText As String, ByVal count As Integer) As List(Of String)
        Dim conn As OleDbConnection = New OleDbConnection
        conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=|DataDirectory|Northwind.mdb;"
        Dim cmd As OleDbCommand = New OleDbCommand
        cmd.CommandText = "select ProductName from Products where" & _
        " ProductName like @SearchText + '%'"
        cmd.Parameters.AddWithValue("@SearchText", prefixText)
        cmd.Connection = conn
        conn.Open()
        Dim products As List(Of String) = New List(Of String)
        Dim sdr As OleDbDataReader = cmd.ExecuteReader
        While sdr.Read
            products.Add(sdr("ProductName").ToString)
        End While
        conn.Close()
        Return products
    End Function




    Protected Sub ProductsGridView_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ProductsGridView.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBoxSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBoxSearch.TextChanged

    End Sub

    Protected Sub productDataRepeater_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles productDataRepeater.ItemCommand

    End Sub
End Class
