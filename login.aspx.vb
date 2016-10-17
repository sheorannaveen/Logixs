
Imports System.Web
Imports System.Web.Configuration
Imports System.Data
Imports System.Data.SqlClient
Imports System.Exception

Partial Class Login
    Inherits System.Web.UI.Page


    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        Try
            Dim uname As String = Login1.UserName
            Dim pwd As String = Login1.Password

            Dim conn As New SqlConnection
            Dim cmd As New SqlCommand
            Dim dr As SqlDataReader
            conn = New SqlConnection(ConfigurationManager.ConnectionStrings("bic0607TWL").ConnectionString)

            pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "SHA1")

            conn.Open()
            cmd = New SqlCommand("select * from twl_login (nolock) twl where twl.aud_status<>'D' and twl.u_id=@uid and twl.u_pwd=@pwd", conn)
            cmd.Parameters.AddWithValue("@uid", uname)
            cmd.Parameters.AddWithValue("@pwd", pwd)
            dr = cmd.ExecuteReader()
            If dr.HasRows = True Then
                FormsAuthentication.RedirectFromLoginPage(uname, True)
                Response.Cookies("CokieLogin").Value = uname
                Response.Cookies("CokiePwd").Value = pwd
                ' Response.Redirect("~/EntryForms/Default2.aspx")
                Response.Redirect("~/personalinfo.aspx")
            Else
                Login1.FailureText = "Either User Name or Password is wrong."

            End If
            dr.Close()
            cmd.Dispose()
            conn.Close()


        Catch ex As Exception

            ''Response.Write("<script>alert('Error Occurred.');</script>")

            ScriptManager.RegisterStartupScript(Me, Type.GetType("Login"), UniqueID, "alert(""Error Occurred."")", True)

        End Try




    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Now.Date.ToString("dd/MM/yyyy")
        Response.Cookies.Clear()



    End Sub

   
End Class
