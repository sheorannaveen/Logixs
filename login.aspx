<%@ Page Language="VB" AutoEventWireup="true" CodeFile="login.aspx.vb" Inherits="Login" %>

<%@ OutputCache Duration="3600" Location="ServerAndClient" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BIC Logistics Ltd</title>
    <link href="stylesheetLogin.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="verify-v1" content="oJNCxL9waEABkIt3n93/SMcQYSG19+YaaptWJcT/0j0=" />
</head>
<script language ="javascript" type ="text/javascript" >
function newwnd()
{
document.form1.Login1_UserName.focus();
//window.open('info1.htm','name','height=425,width=660,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no ,modal=yes');
//window.open('info1.htm','name','height=442,width=670,toolbar=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no ,modal=yes');

//javascript:document.form1.Login1_UserName.focus();

}
</script>
<body onload="newwnd();" style="text-align: center">
    <form id="form1" runat="server" >
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center" valign="top" style="width: 753px">
                   <%--<table border="10" BorderColor="White" cellspacing="0" cellpadding="0" style="width: 780px" bgcolor ="Peru" >--%>
                   <table border="10" bordercolor="Olive" cellspacing="0" cellpadding="0" style="width: 780px" bgcolor ="pink" >
                        <tr>
                            <td align="left" valign="top" style="height: 341px; width: 643px;">
                                <table width="779" border="0" cellspacing="0" cellpadding="0" style="height: 190px">
                                    <tr>
                                        <td align="left" style="font-weight: lighter; width: 115px; height: 99px; text-align: center"
                                            valign="middle">
                                            <strong><span style="font-size: 24pt; color: Olive">
                                                <br />
                                                <span style="color: green">
                                                <b>-:- BIC LOGISTICS LTD -:-</b><br/>
                                                </span>
                                                <br />
                                            </span>
                                                <b><span style="font-size: 14pt; color: green">-:- TWL WEB 2016 - 2017 -:-</span></b></strong><br />
                                            <br />
                                            <span>
                                            </span><span style="color: green"><span style="font-size: 14pt"><strong><span style="font-family: Arial Rounded MT Bold">
                                                Happy Birthday Venkat</span></strong></span><br />
                                            </span>
                                            <asp:Label ID="Label1" runat="server" Text="Label" Width="189px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                        <asp:Login style="LEFT: -2px; TOP: -65px" id="Login1" runat="server" Width="365px" ForeColor="Linen" Height="45px" TextLayout="TextOnTop" ToolTip="Enter Your Id" UserNameLabelText="ID:" TitleText="Employee Log In" DisplayRememberMe="False" FailureAction="RedirectToLoginPage" Font-Size="Small" Font-Names="Verdana" CreateUserUrl="~/AUTHS/NewUser.aspx" BorderWidth="5px" BorderStyle="Solid" BorderPadding="4" BorderColor="White" BackColor="Olive" PasswordRecoveryUrl="~/AUTHS/PasswordRecovery.aspx" FailureText="" DestinationPageUrl="~/personalinfo.aspx">
                                                <TitleTextStyle BackColor="pink" Font-Bold="True" Font-Names="Andalus" Font-Size="Medium"
                                                    ForeColor="Olive"  />
                                                <InstructionTextStyle Font-Italic="True" ForeColor="Black"  />
                                                <TextBoxStyle Font-Size="Small" Height="15px" Width="135px"  />
                                                <LoginButtonStyle BackColor="Linen" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                                                    Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"  />
                                                <LabelStyle Font-Bold="True" HorizontalAlign="Left"  />
                                                <FailureTextStyle BackColor="Transparent" Font-Bold="True" Font-Size="7pt" HorizontalAlign="Left"
                                                    VerticalAlign="Top"  />
                                            </asp:Login>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="middle" style="width: 115px; font-weight: lighter; text-align: center;">
                                            <br/><br/><br/><b>
                                            <span style="color: maroon">
                                                © 2014 BIC LOGISTICS LTD<br />
                                                All rights reserved.<br/>
                                                Head Office: Reg.Off. :A-261,Defence Colony,New Delhi-110024,Ph.No. :011-41071673,46543814.</span></b>&nbsp;
                                                                                                                                                              
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
