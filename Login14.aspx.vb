

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        Dim uname As String = Login1.UserName
        Dim pwd As String = Login1.Password

        e.Authenticated = FormsAuthentication.Authenticate(uname, pwd)
        If FormsAuthentication.Authenticate(uname, pwd) Then
            FormsAuthentication.RedirectFromLoginPage(uname, True)
            Response.Cookies("CokieLogin").Value = uname
            Response.Cookies("CokiePwd").Value = pwd
        Else
            Login1.FailureText = "Either User Name or Password is wrong."
            'ScriptManager.RegisterStartupScript(Me, Type.GetType("Login"), UniqueID, "alert(""Either User Name or Password is wrong."")", True)

        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Now.Date.ToString("dd/MM/yyyy")
        Response.Cookies.Clear()



    End Sub

   
End Class
