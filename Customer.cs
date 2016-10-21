using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Transport.DAL;

namespace Transport.BusinessLogic
{
    public class Customer
    {
        private int _site_id;

        public int site_id
        {
            get { return _site_id; }
            set { _site_id = value; }
        }
        private string _customer_code;

        public string customer_code
        {
            get { return _customer_code; }
            set { _customer_code = value; }
        }
        private string _customer_name;

        public string customer_name
        {
            get { return _customer_name; }
            set { _customer_name = value; }
        }
        private string _email_id;

        public string email_id
        {
            get { return _email_id; }
            set { _email_id = value; }
        }
        private string _contact_person;

        public string contact_person
        {
            get { return _contact_person; }
            set { _contact_person = value; }
        }
        private string _mobile_no;

        public string mobile_no
        {
            get { return _mobile_no; }
            set { _mobile_no = value; }
        }
        public void Update(string action)
        {            
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@siteid", SqlDbType.Int),
                new SqlParameter("@email", SqlDbType.VarChar),
                new SqlParameter("@contact_person", SqlDbType.VarChar),
                new SqlParameter("@mobile_no", SqlDbType.Float),
                new SqlParameter("@customer_code", SqlDbType.VarChar),
                new SqlParameter("@cname", SqlDbType.VarChar)
            };
            parameters[0].Value = action;
            parameters[1].Value = site_id;
            parameters[2].Value = email_id.Trim().ToLower();;
            parameters[3].Value = contact_person.ToUpper().Trim();
            parameters[4].Value = mobile_no.Trim();
            parameters[5].Value = customer_code;
            parameters[6].Value = customer_name;
            DataUtility.ExecuteCommand("sp_GetCustomerDetails", parameters);            
        }
	
        public SqlDataReader GetCustomerDetails(string action, string siteid, string cname, string tocity, string cuname)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@siteid", SqlDbType.Int),
                new SqlParameter("@tocity", SqlDbType.Int),
                new SqlParameter("@cname", SqlDbType.VarChar),
                new SqlParameter("@cuname", SqlDbType.VarChar)
            };
            parameters[0].Value = action;
            parameters[1].Value = siteid;
            parameters[2].Value = cname;
            parameters[3].Value = tocity;
            parameters[4].Value = cuname;
            oReader = DataUtility.ExecuteReader("sp_GetCustomerDetails", parameters);
            return oReader;
        }
        public SqlDataReader GetCustomerDetailsBySiteIDandCCode(string action, string siteid, string customer_name, string custome_code)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@siteid", SqlDbType.Int),                
                new SqlParameter("@cname", SqlDbType.VarChar),
                new SqlParameter("@customer_code", SqlDbType.VarChar)
            };
            parameters[0].Value = action;
            parameters[1].Value = siteid;
            parameters[2].Value = customer_name;
            parameters[3].Value = custome_code;            
            oReader = DataUtility.ExecuteReader("sp_GetCustomerDetails", parameters);
            return oReader;
        }
    }
}
