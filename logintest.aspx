<%@ Page Language="VB" AutoEventWireup="true" CodeFile="logintest.aspx.vb" Inherits="Login" %>

<%@ OutputCache Duration="3600" Location="ServerAndClient" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BIC LOGISTICS LTD</title>
    <link href="stylesheetLogin.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="verify-v1" content="oJNCxL9waEABkIt3n93/SMcQYSG19+YaaptWJcT/0j0=" />
</head>
<script language ="javascript" type ="text/javascript" >
function newwnd()
{
document.form1.Login1_UserName.focus();
//window.open('info11.htm','name','height=425,width=660,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no ,modal=yes');
//javascript:document.form1.Login1_UserName.focus();

}
</script>
<body onload="newwnd();" style="text-align: left">
    <form id="form1" runat="server" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center" valign="top" style="width: 753px; height: 14px; text-align: left;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/ny.jpg" Width="873px" />
                    <asp:Login ID="Login1" runat="server" BackColor="#400000" BorderColor="White" BorderPadding="0"
                        BorderStyle="Solid" BorderWidth="0px" CreateUserUrl="~/AUTHS/NewUser.aspx" DestinationPageUrl="~/personalinfo.aspx"
                        DisplayRememberMe="False" FailureAction="RedirectToLoginPage" FailureText=""
                        Font-Names="Verdana" Font-Size="Small" ForeColor="Black" Height="1px" PasswordRecoveryUrl="~/AUTHS/PasswordRecovery.aspx"
                        Style="left: 501px; top: 34px; z-index: 100; position: absolute;" TextLayout="TextOnTop" TitleText="Employee Log In"
                        ToolTip="Enter Your Id" UserNameLabelText="ID:" Width="327px" Orientation="Horizontal">
                        <TitleTextStyle BackColor="LimeGreen" Font-Bold="True" Font-Names="Andalus" Font-Size="Medium"
                            ForeColor="Black" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <TextBoxStyle Font-Size="Small" Height="15px" Width="135px" />
                        <LoginButtonStyle BackColor="Linen" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                            Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" />
                        <LabelStyle Font-Bold="True" HorizontalAlign="Left" />
                        <FailureTextStyle BackColor="Transparent" Font-Bold="True" Font-Size="7pt" HorizontalAlign="Left"
                            VerticalAlign="Top" />
                    </asp:Login>
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
