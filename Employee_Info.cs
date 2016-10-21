using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using Transport.DAL;
using System.Data;

namespace Transport.BusinessLogic
{
    public class Employee_Info
    {
        private string _branch;
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        private string _Employee;
        public string Employee
        {
            get { return _Employee; }
            set { _Employee = value; }
        }
        private string _Designation;
        public string Designation
        {
            get { return _Designation; }
            set { _Designation = value; }
        }
        private string _Department;
        public string Department
        {
            get { return _Department; }
            set { _Department = value; }
        }
        private string _Type;
        public string Type
        {
            get { return _Type; }
            set { _Type = value; }
        }
        private string _phone;
        public string phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        private string _Mobile;
        public string Mobile
        {
            get { return _Mobile; }
            set { _Mobile = value; }
        }
        private string _emailid;
        public string emailid
        {
            get { return _emailid; }
            set { _emailid = value; }
        }
        private string _enterby;
        public string enterby
        {
            get { return _enterby; }
            set { _enterby = value; }
        }
        private DateTime _entrydate;
        public DateTime entrydate
        {
            get { return _entrydate; }
            set { _entrydate = value; }
        }
        private string _aud_status;
        public string aud_status
        {
            get { return _aud_status; }
            set { _aud_status = value; }
        }
        private string _emp_code;
        public string emp_code
        {
            get { return _emp_code; }
            set { _emp_code = value; }
        }
        private string _activ;
        public string activ
        {
            get { return _activ; }
            set { _activ = value; }
        }
        private int _site_id;
        public int site_id
        {
            get { return _site_id; }
            set { _site_id = value; }
        }
        private string _site_name;
        public string site_name
        {
            get { return _site_name; }
            set { _site_name = value; }
        }

        public SqlDataReader GetEmployeeInfo()
        {
            SqlParameter[] parameters =
            {    
              new SqlParameter("@enter", SqlDbType.VarChar)              
            };
            parameters[0].Value = enterby;            
            SqlDataReader oReader = DataUtility.ExecuteReader("sp_GetEmployee_InfoBy_Enterby", parameters);
            return oReader;
        }
        public SqlDataReader GetEmployeeInfoBy_EMP_Code()
        {
            SqlParameter[] parameters =
            {
              new SqlParameter("@Action", SqlDbType.VarChar),
              new SqlParameter("@emp_code", SqlDbType.VarChar)          
            };
            parameters[0].Value = "EmployeeInfo_By_EMP_Code";
            parameters[1].Value = emp_code;
            SqlDataReader oReader = DataUtility.ExecuteReader("sp_GetEmployee_Info", parameters);
            return oReader;
        }
        public int SaveEmployeeInfo()
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("@branch", SqlDbType.VarChar),
                new SqlParameter("@Employee", SqlDbType.VarChar),
                new SqlParameter("@Designation", SqlDbType.VarChar),
                new SqlParameter("@Department", SqlDbType.VarChar),
                new SqlParameter("@phone", SqlDbType.VarChar),
                new SqlParameter("@Mobile", SqlDbType.VarChar),
                new SqlParameter("@emailid", SqlDbType.VarChar),
                new SqlParameter("@enterby", SqlDbType.VarChar),
                new SqlParameter("@entrydate", SqlDbType.DateTime),
                new SqlParameter("@aud_status", SqlDbType.VarChar),
                new SqlParameter("@emp_code", SqlDbType.VarChar),
                new SqlParameter("@site_id", SqlDbType.Int),
                new SqlParameter("@site_name", SqlDbType.VarChar),
                new SqlParameter("@Type", SqlDbType.VarChar)             
            };
            parameters[0].Value = branch;
            parameters[1].Value = Employee;
            parameters[2].Value = Designation;
            parameters[3].Value = Department;
            parameters[4].Value = phone;
            parameters[5].Value = Mobile;
            parameters[6].Value = emailid;
            parameters[7].Value = enterby;
            parameters[8].Value = entrydate;
            parameters[9].Value = aud_status;
            parameters[10].Value = emp_code;
            parameters[11].Value = site_id;
            parameters[12].Value = site_name;
            parameters[13].Value = Type;            
            int result = DataUtility.ExecuteCommand("sp_SaveEmployee_Info", parameters);
            return result;            
        }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    }
}
