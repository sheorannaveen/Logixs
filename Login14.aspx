<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Login14.aspx.vb" Inherits="Login" %>

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
<body onload="newwnd();">
    <form id="form1" runat="server" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center" valign="top" style="width: 753px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Image ID="Image7" runat="server" Height="41px" ImageUrl="~/horizlig.gif" Width="794px" />&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <table border="0" cellspacing="0" cellpadding="0" style="width: 780px">
                        <tr>
                            <td align="left" valign="top" style="height: 341px; width: 643px;">
                                <table width="779" border="0" cellspacing="0" cellpadding="0" style="height: 497px">
                                    <tr>
                                        <td align="left" bgcolor="#424242" style="width: 118px; height: 479px" valign="top">
                                        </td>
                                        <td align="left" valign="top" bgcolor="#424242" style="height: 479px; width: 118px;">
                                            <asp:Image ID="Image1" runat="server" Height="503px" ImageUrl="~/login.jpg"
                                                Width="790px" />
                                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="White" Width="96px"></asp:Label>
                                            <br />
                                            <span style="color: white">© 2009 BIC LOGISTICS LTD.. All rights reserved.<br />
                                            </span><span style="font-size: 10pt; color: white; font-family: Times New Roman Baltic">
                                                Admin Office:10th floor, EGA Trade Centre, 809, Poonamallee High Road, Kilpauk,Chennai
                                                - 600 010.<br />
                                                Head Office: Reg?.?Off?. :?A?-?261?,?DefenceColony?New Delhi-?110024?,?Ph?.?No?.
                                                :?011?-?43790000?-?63?,?65?-?99?<br />
                                            </span>
                                            <asp:Image ID="Image6" runat="server" ImageUrl="~/horizlig.gif" Width="787px" />
                                            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/personalinfo.aspx"
                                                                                    FailureText="" Style="left: 160px; position: relative;
                                                                                    top: -413px" Width="474px" PasswordRecoveryUrl="~/AUTHS/PasswordRecovery.aspx"
                                                                                    BackColor="Black" BorderColor="White" BorderPadding="4" BorderStyle="Solid"
                                                                                    BorderWidth="1px" CreateUserUrl="~/AUTHS/NewUser.aspx" Font-Names="Verdana" Font-Size="Small"
                                                                                    ForeColor="Linen" FailureAction="RedirectToLoginPage" DisplayRememberMe="False"
                                                                                    Height="1px" TitleText="Employee Log In" UserNameLabelText="ID:" ToolTip="Enter Your Id" Orientation="Horizontal" TextLayout="TextOnTop">
                                                                                    <TitleTextStyle BackColor="LimeGreen" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Font-Names="Andalus" />
                                                                                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                                                                    <TextBoxStyle Font-Size="Small" Height="15px" Width="135px" />
                                                                                    <LoginButtonStyle BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                                                                                        Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" Font-Bold="True" />
                                                                                    <LabelStyle Font-Bold="True" HorizontalAlign="Left" />
                                                                                    <FailureTextStyle BackColor="Transparent" Font-Bold="True" Font-Size="7pt" HorizontalAlign="Left" VerticalAlign="Top" />
                                                                                </asp:Login>
                                                                                </td>
                                        <td style="height: 479px; width: 601px;">
                                            <a href="javascript:window.opener='x';window.close();" style="color: #ff9966; font-family: 'Comic Sans MS'">
                                                <span style="font-size: 10pt"></span></a>
                                            </td>
                                    </tr>
                                </table>
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
