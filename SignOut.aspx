<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignOut.aspx.vb" Inherits="SignOut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ OutputCache Duration="3600" Location="ServerAndClient" VaryByParam="none" %>
<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
    <title>Untitled Page</title>
    
    
    <meta http-equiv="Content-Type" content="text/html"/>
    
    
 


</head>
<body  style=" background-color: #FFFFFF; text: #494949; link: #0066FF; alink: #0066FF; v-link: #0066FF; margin-left: 0; margin-top: 0; text-align: center;">
    <form id="form1" runat="server">
    <div style="text-align: center">
    <asp:ScriptManager id="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <br />
   <TABLE WIDTH=100% CELLSPACING=0 CELLPADDING=0 BORDER=0>
<TR>
	<TD height=4 bgcolor=#B7E9FF>
	<TABLE cellSpacing=0 cellPadding=0 border=0><TR><TD height=4></TD></TR></TABLE>
	</TD>
</TR>
<TR>
	<TD height=54 bgcolor=#ECF9FF align=center>
	<font class=sb4>You have been successfully logged out&nbsp; | </font> <font class="sb1"><a href="Login.aspx"><B>Login again</B></a></font>

	</TD>
</TR>
<TR>
	<TD height=1 bgcolor=#B7E9FF>
	<a href="javascript:window.opener='x';window.close();" style="color: #ff9966; font-family: 'Comic Sans MS'">
        <span style="font-size: 14pt">Close Window</span></a><span style="font-size: 14pt"> </span>


	<TABLE cellSpacing=0 cellPadding=0 border=0><TR><TD height=1></TD></TR></TABLE>
	</TD>
</TR>
<TR>
	<TD height=9>
	<TABLE cellSpacing=0 cellPadding=0 border=0><TR><TD height=9></TD></TR></TABLE>
	</TD>

</TR>
</TABLE>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
        <asp:UpdateProgress DynamicLayout="false" ID="UpdateProgress1" runat="server">
          <ProgressTemplate>
              <img src="images/ajax-loader.gif" /> Loading ...
          </ProgressTemplate>
    </asp:UpdateProgress>
    </form>
</body>
</html>
