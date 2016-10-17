<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Master.master" CodeFile="Home.aspx.vb" Inherits="Home" %>
<%@ OutputCache Duration="3600" Location="ServerAndClient" VaryByParam="none" %>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>--%>
    <asp:Content ID="Content1" ContentPlaceHolderID ="FormContent" runat="server">
     
        <asp:Image ID="Image1" runat="server" DescriptionUrl="~/images/Nature.jpg" Height="327px"
            ImageUrl="~/images/nature.jpg" Style="position: relative" Width="501px" /><br />
        <br />
        </asp:Content>
        <%--&nbsp;</div>
    </form>
</body>
</html>--%>
