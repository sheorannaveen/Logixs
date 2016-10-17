using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

public partial class personalinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            FormsIdentity objUser;
            FormsAuthenticationTicket objTicket;
            objUser = (FormsIdentity)User.Identity;
            string entered_by = Convert.ToString(objUser.Name);
            SqlConnection conn;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bic0607TWL"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;
            conn.Open();
            cmd = new SqlCommand("insert into employee_info (branch,Employee,Designation,Department,phone,Mobile,emailid,enterby,entrydate,aud_status,emp_code,site_id,site_name,Type) values(@branch,@employee,@des,@dep,@pho,@mob,@email,@enter,getdate(),'A',@code,@site_id,@site_name,@Type)", conn);
            cmd.Parameters.AddWithValue("@branch", cmb_sitename.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@employee", txtemp.Text.ToString().Trim().ToUpper());
            cmd.Parameters.AddWithValue("@des", txtdes.Text.ToString().Trim().ToUpper());
            cmd.Parameters.AddWithValue("@dep", txtdep.Text.ToString().Trim().ToUpper());
            cmd.Parameters.AddWithValue("@pho", txtphone.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@mob", txtmobile.Text.ToString().Trim());
            //        cmd.Parameters.AddWithValue("@emp", txtcode.Text.ToString().Trim().ToUpper());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@enter", entered_by.ToUpper());
            cmd.Parameters.AddWithValue("@code", txtcode.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@site_id", cmb_sitename.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@site_name", cmb_sitename.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Type", rdbemptype.SelectedValue.ToString());
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();

            Response.Redirect("~/Entryforms/default2.aspx");
        }
        catch (Exception err)
        {
            Response.Write("<script>alert('Error Occurred.');</script>");
        }

    }
}
