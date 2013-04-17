
Partial Class customers
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'This logic on target page, note checking via PreviousPage property
        Dim firstname As TextBox = CType(Page.PreviousPage.FindControl("firstname"), TextBox)
        Label1.Text = firstname.Text
        Dim surname As TextBox = CType(Page.PreviousPage.FindControl("surname"), TextBox)
        Label2.Text = surname.Text
        Dim email As TextBox = CType(Page.PreviousPage.FindControl("email"), TextBox)
        Label3.Text = email.Text
        Dim city As TextBox = CType(Page.PreviousPage.FindControl("city"), TextBox)
        Label4.Text = city.Text
        Dim country As TextBox = CType(Page.PreviousPage.FindControl("country"), TextBox)
        Label5.Text = country.Text
        Dim postcode As TextBox = CType(Page.PreviousPage.FindControl("postcode"), TextBox)
        Label6.Text = postcode.Text
       
    End Sub
End Class
