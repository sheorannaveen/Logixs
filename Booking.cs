using System;
using System.Collections.Generic;
using System.Text;
using Transport.DAL;
using System.Data.SqlClient;
using System.Data;

namespace Transport.BusinessLogic
{
    public class Booking
    {
        public SqlDataReader BookingCheckOS90Days(string OSType, string SiteID, string ToCity, string CName)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@OSType", SqlDbType.NVarChar),
                new SqlParameter("@siteid", SqlDbType.Int),
                new SqlParameter("@tocity", SqlDbType.Int),
                new SqlParameter("@cname", SqlDbType.NVarChar)             
            };
            parameters[0].Value = OSType;
            parameters[1].Value = SiteID;
            parameters[2].Value = ToCity;
            parameters[2].Value = CName;
            oReader = DataUtility.ExecuteReader("sp_BookingCheckOS90Days", parameters);
            return oReader;
        }
        public SqlDataReader BlockingReleasingCheck(string OSType, string SiteID, string ToCity, string Customer)
        {        
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@OSType", SqlDbType.NVarChar),
                new SqlParameter("@siteid", SqlDbType.Int),
                new SqlParameter("@tocity", SqlDbType.Int),
                new SqlParameter("@customer", SqlDbType.NVarChar)             
            };
            parameters[0].Value = OSType;
            parameters[1].Value = SiteID;
            parameters[2].Value = ToCity;
            parameters[2].Value = Customer;
            oReader = DataUtility.ExecuteReader("sp_BlockingReleasingCheck", parameters);
            return oReader;
        }
        public SqlDataReader CheckPrepaidOS(string siteid)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@siteid", SqlDbType.Int)             
            };
            parameters[0].Value = siteid;
            oReader = DataUtility.ExecuteReader("sp_CheckPrepaidOS", parameters);
            return oReader;
        }
        public SqlDataReader CheckTopayArrival(string siteid, string tosite, string dest, string cucode, string cuname)
        {
            SqlDataReader oReader = null;
            SqlParameter[] parameters =
            {
                new SqlParameter("@siteid", SqlDbType.Int),
                new SqlParameter("@tosite", SqlDbType.Int),
                new SqlParameter("@dest", SqlDbType.Int),
                new SqlParameter("@cucode", SqlDbType.VarChar),
                new SqlParameter("@cuname", SqlDbType.VarChar)
            };
            parameters[0].Value = siteid;
            parameters[1].Value = tosite;
            parameters[2].Value = dest;
            parameters[3].Value = cucode;
            parameters[4].Value = cuname;
            oReader = DataUtility.ExecuteReader("sp_CheckTopayArrival", parameters);
            return oReader;
        }
    }
}
