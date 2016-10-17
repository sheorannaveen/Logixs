<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PwdRecovery.aspx.vb" Inherits="PwdRecovery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Import Namespace=System.Net.Mail %> 
<%@ Import Namespace=System.Data.Odbc %>

<%@ Import Namespace=System.Data %> 
<%@ Import Namespace=System.Web.Mail %>

<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Style="position: relative">
        </asp:PasswordRecovery>
    
    </div>
    </form>
</body>
</html>
