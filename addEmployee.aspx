<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Master.master" CodeFile="addEmployee.aspx.cs" Inherits="personalinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FormContent" Runat="Server">
        <div>
        <table style="width: 750px; height:300px" >
            <tr>
                <td colspan="3" style="height: 34px; text-align: left;">
                    <span style="font-family: Andalus"><span style="font-size: 16pt">
                        <strong><span style="color: #6600ff;">PERSONAL INFORMATION</span></strong></span></span></td>
                <td style="width: 100px; height: 34px;">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 45px;">
                    <strong>Branch:</strong></td>
                <td style="width: 20px; height: 45px;">
                    <asp:DropDownList ID="cmb_sitename" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1"
                        DataTextField="site_name" DataValueField="site_id" Width="175px">
                        <asp:ListItem Value="0">Select Site Name</asp:ListItem>                      
                    </asp:DropDownList></td>
                <td style="width: 29px; height: 45px;">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bicTWLOleDb %>"
                        ProviderName="<%$ ConnectionStrings:bicTWLOleDb.ProviderName %>" SelectCommand="SELECT site_name,site_id FROM site_master where site_type='B' ORDER BY site_name">
                    </asp:SqlDataSource>
                </td>
                <td style="width: 100px; height: 45px;">
                </td>
            </tr>
            <tr>
                <td style="width: 28px">
                    <strong>
                    Employee Name:</strong></td>
                <td style="width: 20px; text-align: left;">
                    <asp:TextBox ID="txtemp" runat="server" Width="170px"></asp:TextBox></td>
                <td style="width: 29px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemp"
                        ErrorMessage="Enter Your Name" Width="199px"></asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 26px; text-align: left;">
                    <strong>
                    Employee Code:</strong></td>
                <td style="width: 20px; height: 26px; text-align: left;">
                    <asp:TextBox ID="txtcode" runat="server" Width="170px"></asp:TextBox></td>
                <td style="width: 29px; height: 26px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcode"
                        ErrorMessage="Enter Correct Employee Code" Width="187px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcode"
                        ErrorMessage="TYPE CORRECT CODE GIVE BY HR DEPARTMENT" ValidationExpression="\d{5}" Width="421px"></asp:RegularExpressionValidator></td>
                <td style="width: 100px; height: 26px;">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 26px; text-align: left">
                    <strong>Employee Type:</strong></td>
                <td style="width: 20px; height: 26px; text-align: left">
                    <asp:RadioButtonList ID="rdbemptype" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">CASUAL</asp:ListItem>
                        <asp:ListItem>PERMANENT</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td style="width: 29px; height: 26px">
                </td>
                <td style="width: 100px; height: 26px">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 31px">
                    <strong>Designation:</strong></td>
                <td style="width: 20px; height: 31px; text-align: left;">
                    <asp:TextBox ID="txtdes" runat="server" Width="170px"></asp:TextBox></td>
                <td style="width: 29px; height: 31px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdes"
                        ErrorMessage="Enter Your Desgination" Width="157px"></asp:RequiredFieldValidator></td>
                <td style="width: 100px; height: 31px">
                </td>
            </tr>
            <tr>
                <td style="width: 28px">
                    <strong>
                    Department:</strong></td>
                <td style="width: 20px; text-align: left;">
                    <asp:TextBox ID="txtdep" runat="server" Width="169px"></asp:TextBox></td>
                <td style="width: 29px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdep"
                        ErrorMessage="Enter Your Department" Width="193px"></asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 49px;">
                    <strong>
                    Phone No:</strong><asp:Image ID="Image1" runat="server" Height="38px" ImageUrl="~/landline.jpg"
                        Width="57px" /></td>
                <td style="width: 20px; height: 49px; text-align: left;">
                    <asp:TextBox ID="txtphone" runat="server" Width="169px"></asp:TextBox><br />
                    Type Phone No. with correct STD Code&nbsp;
                </td>
                <td style="width: 29px; height: 49px;">
                </td>
                <td style="width: 100px; height: 49px;">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 23px;">
                    <strong>
                    Mobile No:</strong><asp:Image ID="Image2" runat="server" Height="33px" ImageUrl="~/mobile.jpg"
                        Width="44px" /></td>
                <td style="width: 20px; height: 23px;">
                    <asp:TextBox ID="txtmobile" runat="server" Width="169px"></asp:TextBox>
                    </td>
                <td style="width: 29px; height: 23px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmobile"
                        ErrorMessage="Enter Mobile No." Width="181px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobile"
                        ErrorMessage="Enter only 10 No." ValidationExpression="\d{10}" Width="264px" ></asp:RegularExpressionValidator></td>
                <td style="width: 100px; height: 23px;">
                </td>
            </tr>
            <tr>
                <td style="width: 28px; height: 34px;">
                    <strong>
                    Email Id:</strong></td>
                <td style="width: 20px; height: 34px;">
                    <asp:TextBox ID="txtemail" runat="server" Width="232px"></asp:TextBox></td>
                <td style="width: 29px; height: 34px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Company  Mail Id" Width="190px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter mail id in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="267px"></asp:RegularExpressionValidator></td>
                <td style="width: 100px; height: 34px;">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                        Text="SAVE" Width="165px" BackColor="#FF80FF" BorderColor="Yellow" BorderStyle="Outset" BorderWidth="12px" Font-Bold="True" Font-Names="Andalus" Font-Size="Medium" ForeColor="Black" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    
</asp:Content>