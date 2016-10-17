<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/Master.master" CodeFile="CL.aspx.vb" Inherits="billingReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.2.3600.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FormContent" runat="server">
    <div align="left">
    
    <center><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" Text="Billing Covering Letter"></asp:Label></center>
            <br />
        &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        <table style="width: 634px">
            <tr>
                <td style="width: 102px">
                    Branch Name</td>
                <td style="width: 480px">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
<asp:DropDownList style="LEFT: 5px; TOP: -52px" id="DropDownList1" runat="server" Width="208px" DataValueField="site_name" DataTextField="site_name" DataSourceID="SqlDataSource1" __designer:wfdid="w4" AutoPostBack="True" AppendDataBoundItems="True"><asp:ListItem Selected="True" Value="0">Select Branch Name</asp:ListItem>
</asp:DropDownList><BR /><asp:SqlDataSource id="SqlDataSource1" runat="server" SelectCommand="select distinct site_master.site_name from site_master RIGHT OUTER JOIN gr_header ON site_master.site_id = gr_header.site_id  order by site_name" ConnectionString="<%$ ConnectionStrings:bic0607TWL %>" __designer:wfdid="w5">
</asp:SqlDataSource> <cc1:ListSearchExtender id="LSESiteName" runat="server" __designer:wfdid="w6" PromptCssClass="ListSearchExtenderPrompt" TargetControlID="DropDownList1" Enabled="True"></cc1:ListSearchExtender> 
</ContentTemplate>
                    </asp:UpdatePanel></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    Customer Name</td>
                <td style="width: 480px">
                    <asp:UpdatePanel id="UpdatePanel2" runat="server">
                        <contenttemplate>
<asp:DropDownList id="DropDownList2" runat="server" DataValueField="customer_name" DataTextField="customer_name" DataSourceID="SqlDataSource2" AutoPostBack="True" AppendDataBoundItems="True"><asp:ListItem Selected="True" Value="0">Select Customer Name</asp:ListItem>
</asp:DropDownList> <asp:SqlDataSource id="SqlDataSource2" runat="server" SelectCommand="SELECT DISTINCT customer_master.customer_name FROM customer_master LEFT OUTER JOIN site_master ON customer_master.site_id = site_master.site_id WHERE (site_master.site_name = @sitename) ORDER BY customer_master.customer_name" ConnectionString="<%$ ConnectionStrings:bic0607TWL %>"><SelectParameters>
<asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="sitename"></asp:ControlParameter>
</SelectParameters>
</asp:SqlDataSource> <cc1:ListSearchExtender id="LSECustName" runat="server" __designer:wfdid="w4" PromptCssClass="ListSearchExtenderPrompt" TargetControlID="DropDownList2"></cc1:ListSearchExtender> 
</contenttemplate>
                    </asp:UpdatePanel></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    Shipment Type</td>
                <td style="width: 480px">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3"
                        DataTextField="code_type" DataValueField="code_type">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bic0607TWL %>"
                        SelectCommand="SELECT distinct [code_type] FROM [GR_HEADER] ORDER BY [code_type]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                    Letter No</td>
                <td style="width: 480px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 102px">
                    Print Date</td>
                <td style="width: 480px">
                    <cc1:GMDatePicker ID="PrintDate" runat="server" CalendarFont-Names="Arial" InitialText="Select a Date" AutoPosition="True" CalendarTheme="Blue">
                        <CalendarDayStyle Font-Size="9pt" />
                        <CalendarTodayDayStyle BorderWidth="1px" BorderColor="DarkRed" Font-Bold="True" />
                        <CalendarOtherMonthDayStyle BackColor="WhiteSmoke" />
                        <CalendarTitleStyle BackColor="#E0E0E0" Font-Names="Arial" Font-Size="9pt" />
                        <CalendarFont Names="Arial" />
                    </cc1:GMDatePicker>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
        
                <asp:Label ID="lblStartDate" runat="server" Text="Start Date"></asp:Label></td>
                <td style="width: 480px">
                    <cc1:GMDatePicker ID="txtStartDate" runat="server" CalendarFont-Names="Arial" InitialText="Select a Date" AutoPosition="True" CalendarTheme="Blue"> 
			<CalendarDayStyle Font-Size="9pt" />
			<CalendarTodayDayStyle BorderWidth="1px" BorderColor="DarkRed" Font-Bold="True" />
			<CalendarOtherMonthDayStyle BackColor="WhiteSmoke" />
			<CalendarTitleStyle BackColor="#E0E0E0" Font-Names="Arial" Font-Size="9pt" />
                <CalendarFont Names="Arial" />
		</cc1:GMDatePicker>
            <asp:Label ID="lblEndDate" runat="server" Text="End Date"></asp:Label><cc1:GMDatePicker ID="txtEndDate" runat="server" CalendarFont-Names="Arial" InitialText="Select a Date" CalendarTheme="Green" EnableDropShadow="True"> 
			<CalendarDayStyle Font-Size="9pt" />
			<CalendarTodayDayStyle BorderWidth="1px" BorderColor="DarkRed" Font-Bold="True" />
			<CalendarOtherMonthDayStyle BackColor="WhiteSmoke" />
			<CalendarTitleStyle BackColor="#E0E0E0" Font-Names="Arial" Font-Size="9pt" />
                <CalendarFont Names="Arial" />
		</cc1:GMDatePicker>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                </td>
                <td style="width: 480px">
        <asp:Button ID="btnShow" runat="server" Text="Generate Report" Height="49px" Width="145px" /><strong>* Note :</strong> This report best fits in A4 Print<br />
                </td>
            </tr>
        </table>
        <br />
            
            
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"
            DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False"
            ReuseParameterValuesOnRefresh="True" PrintMode="ActiveX"/>
    
    </div>
    </asp:Content>