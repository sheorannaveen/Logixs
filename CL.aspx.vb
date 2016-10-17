Imports CrystalDecisions.Shared
Partial Class billingReport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    
   
    Protected Sub btnShow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnShow.Click
        Dim ConnInfo As New ConnectionInfo
        Dim conn As String = WebConfigurationManager.ConnectionStrings("bic0607TWL").ConnectionString
        Dim builder As New Data.SqlClient.SqlConnectionStringBuilder(conn)
        With ConnInfo
            .ServerName = builder.DataSource
            .DatabaseName = builder.InitialCatalog
            .UserID = builder.UserID
            .Password = builder.Password
        End With


        Me.CrystalReportViewer1.ParameterFieldInfo.Clear()

        If Me.txtStartDate.ToString.Trim <> "" And Me.txtStartDate.ToString.Trim <> "" Then

            Me.CrystalReportViewer1.ReportSource = Server.MapPath("billingCovering.rpt")

            Dim ParamFields As ParameterFields = Me.CrystalReportViewer1.ParameterFieldInfo

            Dim paramfield1 As New ParameterField
            Dim paramvalue1 As New ParameterDiscreteValue
            paramfield1.Name = "@sitename"
            paramvalue1.Value = DropDownList1.SelectedValue
            paramfield1.CurrentValues.Add(paramvalue1)
            ParamFields.Add(paramfield1)

            Dim paramfield2 As New ParameterField
            Dim paramvalue2 As New ParameterDiscreteValue
            paramfield2.Name = "@custname"
            paramvalue2.Value = DropDownList2.SelectedValue
            paramfield2.CurrentValues.Add(paramvalue2)
            ParamFields.Add(paramfield2)

            Dim paramfield3 As New ParameterField
            Dim paramvalue3 As New ParameterDiscreteValue
            paramfield3.Name = "@code"
            paramvalue3.Value = DropDownList3.SelectedValue
            paramfield3.CurrentValues.Add(paramvalue3)
            ParamFields.Add(paramfield3)

            Dim paramfield4 As New ParameterField
            Dim paramvalue4 As New ParameterDiscreteValue
            paramfield4.Name = "@no"
            paramvalue4.Value = TextBox1.Text
            paramfield4.CurrentValues.Add(paramvalue4)
            ParamFields.Add(paramfield4)

            Dim paramfield5 As New ParameterField
            Dim paramvalue5 As New ParameterDiscreteValue
            paramfield5.Name = "@sdate"
            paramvalue5.Value = Me.txtStartDate.Date.ToString
            paramfield5.CurrentValues.Add(paramvalue5)
            ParamFields.Add(paramfield5)

            Dim paramfield6 As New ParameterField
            Dim paramvalue6 As New ParameterDiscreteValue
            paramfield6.Name = "@edate"
            paramvalue6.Value = Me.txtEndDate.Date.ToString
            paramfield6.CurrentValues.Add(paramvalue6)
            ParamFields.Add(paramfield6)

            Dim paramfield7 As New ParameterField
            Dim paramvalue7 As New ParameterDiscreteValue
            paramfield7.Name = "@date"
            paramvalue7.Value = Me.PrintDate.Date.ToString
            paramfield7.CurrentValues.Add(paramvalue7)
            ParamFields.Add(paramfield7)
        Else

            Me.CrystalReportViewer1.ReportSource = Server.MapPath("billingCovering.rpt")

        End If



        For Each cnInfo As TableLogOnInfo In Me.CrystalReportViewer1.LogOnInfo

            cnInfo.ConnectionInfo = ConnInfo

        Next

        Me.CrystalReportViewer1.RefreshReport()


    End Sub

End Class
