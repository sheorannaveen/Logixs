Imports System.Net.Mail
Imports System.Web.Mail

Partial Class PwdRecovery
    Inherits System.Web.UI.Page

    Protected Sub PasswordRecovery1_SendingMail(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MailMessageEventArgs) Handles PasswordRecovery1.SendingMail
        '        SmtpClient mailClient = new SmtpClient("mail.secureserver.net"); 
        'System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();

        'msg.To.Add("" + bc_fpwd_uid_textbox.Text + ""); 
        'msg.From = new MailAddress("hr@blinkconsulting.com", "HR Manager");

        'msg.Subject = "Your Password"; 


        'msg.Body="TestMail"; 
        'mailClient.Send(msg);



        'ClientScript.RegisterStartupScript(Page.GetType(), "msg", "alert('Your Password would be sent to your User ID');", true);bc_fpwd_uid_textbox.Text = ""; 




    End Sub
End Class
