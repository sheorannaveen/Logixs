using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Transport.DAL;

namespace Transport.BusinessLogic
{
    public class Email
    {
        private int _site_id;

        public int site_ID
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
        public SqlDataReader GetEmail(string action, string tocity, string tosite, string billsite)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@siteideml", SqlDbType.Int),
                new SqlParameter("@tosite", SqlDbType.Int),
                new SqlParameter("@billedat", SqlDbType.Int)                
            };
            parameters[0].Value = action;
            parameters[1].Value = tocity;
            parameters[2].Value = tosite;
            parameters[3].Value = billsite;            
            oReader = DataUtility.ExecuteReader("sp_GetEmail", parameters);
            return oReader;
        }
        public SqlDataReader GetEmail_By_SiteID(string action, string siteid)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@siteideml", SqlDbType.Int)                               
            };
            parameters[0].Value = action;
            parameters[1].Value = siteid;            
            oReader = DataUtility.ExecuteReader("sp_GetEmail", parameters);
            return oReader;
        }
	
    }
}
