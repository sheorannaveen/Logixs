<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Login12.aspx.vb" Inherits="Login" %>

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
                    &nbsp;<table width="779" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="left" valign="top" style="height: 341px; width: 643px;">
                                <table width="779" border="0" cellspacing="0" cellpadding="0" style="height: 497px">
                                    <tr>
                                        <td align="left" valign="top" bgcolor="#424242" style="height: 479px; width: 99px;">
                                            <table border="0" cellspacing="0" cellpadding="0" style="width: 149px; height: 273px">
                                                <tr>
                                                    <td align="center" valign="middle" class="logo_bg" style="height: 63px; width: 204px;">
                                                        <img src="images/logo.png" style="width: 195px; height: 145px; border-left-color: #000000; border-bottom-color: #000000; border-top-style: solid; border-top-color: #000000; border-right-style: solid; border-left-style: solid; background-color: transparent; border-right-color: #000000; border-bottom-style: solid;" />
                                                        <%--<strong><span style="color: #ff3366">
<script language="JavaScript" type="text/javascript">


var message="BIC LOGISTICS LTD."
var neonbasecolor="red"
var neontextcolor="yellow"
var flashspeed=100  //in milliseconds

///No need to edit below this line/////

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){

//Change all letters to base color
if (n==0){
for (m=0;m<message.length;m++)
//eval("document.all.neonlight"+m).style.color=neonbasecolor
crossref(m).style.color=neonbasecolor
}

//cycle through and change individual letters to neon color
crossref(n).style.color=neontextcolor

if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",1500)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()


</script>

</span></strong>--%>
<!-- BEGIN WebSTAT Activation Code -->
<script type="text/javascript" language="JavaScript" src="http://hv3.webstat.com/cgi-bin/wsv2.cgi?131092"></script>
<noscript>
<a href="http://www.webstat.com">
<img src="http://hv3.webstat.com/scripts/wsb.php?ac=131092" border="0" alt="Website Analytics and Website Statistics by NextSTAT" /></a>
</noscript>
<!-- END WebSTAT Activation Code -->
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valign="top" style="height: 145px; width: 204px;">
                                                        <table width="200" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td class="on" height="30" align="left" valign="middle">
                                                                    <a href="#about.html" class="left_menu_text" style="color: #FEDA25;">About Us</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="off" onmouseover="this.className='on'" onmouseout="this.className='off'"
                                                                    height="30" align="left" valign="middle">
                                                                    <a href="#services.html" class="left_menu_text">Services</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="off" onmouseover="this.className='on'" onmouseout="this.className='off'"
                                                                    height="30" align="left" valign="middle">
                                                                    <a href="#rates.html" class="left_menu_text">Rates</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="off" onmouseover="this.className='on'" onmouseout="this.className='off'"
                                                                    height="30" align="left" valign="middle">
                                                                    <a href="#careers.html" class="left_menu_text">Careers</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="off" onmouseover="this.className='on'" onmouseout="this.className='off'"
                                                                    height="30" align="left" valign="middle">
                                                                    <a href="#faq.html" class="left_menu_text">FAQ</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="off" onmouseover="this.className='on'" onmouseout="this.className='off'"
                                                                    height="30" align="left" valign="middle">
                                                                    <a href="#contact.html" class="left_menu_text">Contact Us</a></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Yellow" Width="96px"></asp:Label>
                                            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/personalinfo.aspx"
                                                                                    FailureText="" Style="left: 0px; position: relative;
                                                                                    top: 8px" Width="178px" PasswordRecoveryUrl="~/AUTHS/PasswordRecovery.aspx"
                                                                                    BackColor="GreenYellow" BorderColor="White" BorderPadding="4" BorderStyle="Solid"
                                                                                    BorderWidth="1px" CreateUserUrl="~/AUTHS/NewUser.aspx" Font-Names="Verdana" Font-Size="0.8em"
                                                                                    ForeColor="DarkGreen" FailureAction="RedirectToLoginPage" DisplayRememberMe="False"
                                                                                    Height="110px" TitleText="Employee Log In" UserNameLabelText="User ID:" ToolTip="Enter Your Id">
                                                                                    <TitleTextStyle BackColor="#00C000" Font-Bold="True" Font-Size="Small" ForeColor="White" />
                                                                                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                                                                    <TextBoxStyle Font-Size="Small" Height="15px" Width="135px" />
                                                                                    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
                                                                                        Font-Names="Verdana" Font-Size="Small" ForeColor="#284E98" Font-Bold="True" />
                                                                                    <LabelStyle Font-Bold="True" HorizontalAlign="Left" />
                                                                                    <FailureTextStyle BackColor="Transparent" Font-Bold="True" Font-Size="7pt" HorizontalAlign="Left" />
                                                                                </asp:Login>
                                                                                </td>
                                        <td style="height: 479px; width: 601px;">
                                            <asp:Image ID="Image1" runat="server" Height="512px" ImageUrl="~/logo2.jpg" Width="554px" /><a href="javascript:window.opener='x';window.close();" style="color: #ff9966; font-family: 'Comic Sans MS'"><span style="font-size: 10pt"></span></a></td>
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
