<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Encr.aspx.vb" Inherits="Encr" EnableSessionState ="true" EnableViewState ="false" EnableEventValidation ="false" %>
<%@ OutputCache Duration="3600" Location="ServerAndClient" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="244px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="355px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Width="356px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
