using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Transport.DAL;

namespace Transport.BusinessLogic
{
    public class Site
    {
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
        public SqlDataReader GetSiteDetails_By_SiteID(string action, int siteid)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@siteid", SqlDbType.Int)
            };
            parameters[0].Value = action;
            parameters[1].Value = siteid;
            oReader = DataUtility.ExecuteReader("sp_GetSiteDetails", parameters);
            return oReader;
        }
	
    }
}
