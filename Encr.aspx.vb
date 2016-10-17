
Partial Class Encr
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox2.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "SHA1")
        TextBox3.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "MD5")







        '        MD5(Encryption)
        '*****************
        'byte[] textBytes = System.Text.Encoding.Default.GetBytes(txtpwd.Text);
        '        Try
        '{
        'System.Security.Cryptography.MD5CryptoServiceProvider cryptHandler;
        'cryptHandler = new System.Security.Cryptography.MD5CryptoServiceProvider();
        'byte[] hash = cryptHandler.ComputeHash (textBytes);
        'string ret = "";
        'foreach (byte a in hash) 
        '{
        '            If (a < 16) Then
        'ret += "0" + a.ToString ("x");
        '            Else
        'ret += a.ToString ("x");
        '}
        'return ret ;
        '}
        'catch
        '{
        'throw;
        '}
        '}





        'I have my users passwords stored to my DB hashs created using SHA1CryptoServiceProvider, here is the function: 

        '    Public Shared Function EncryptPassword(ByVal password As String) As Byte()
        '        Dim encoding As New UnicodeEncoding()
        '        Dim hashBytes As Byte() = encoding.GetBytes(password)
        '        ' Compute the SHA-1 hash 
        '        Dim sha1 As New SHA1CryptoServiceProvider()
        '        Dim cryptPassword = sha1.ComputeHash(hashBytes)
        '        Return cryptPassword
        '    End Function













    End Sub
End Class
