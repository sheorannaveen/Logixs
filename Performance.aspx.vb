Imports System.Diagnostics
Imports System.Web
Partial Class Performance
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim objMemperf As New PerformanceCounter("Memory", "Available Bytes")
        Dim objProcperf As New PerformanceCounter("System", "Processes")
        Dim objComperf As New PerformanceCounter("System", "Threads")
        Dim objPer As New PerformanceCounterCategory
        Label1.Text = String.Format("{0:#,###}", objMemperf.NextValue()) & "Byte"
        Label2.Text = objProcperf.NextValue().ToString()
        Label3.Text = objComperf.NextValue().ToString()

        If Page.IsPostBack = False Then
            For Each objPer In PerformanceCounterCategory.GetCategories
                ListBox1.Items.Add(New ListItem(objPer.CategoryName))
            Next
        End If
    End Sub
End Class
