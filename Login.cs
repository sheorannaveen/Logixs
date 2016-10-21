using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using Transport.DAL;
using System.Data;

namespace Transport.BusinessLogic
{
    public class Login
    {        
        public SqlDataReader User_Login(string username, string password)
        {
            SqlParameter[] parameters =
            {    
              new SqlParameter("@UserName", SqlDbType.VarChar),
              new SqlParameter("@Password", SqlDbType.VarChar)
            };
            parameters[0].Value = username;
            parameters[1].Value = password;
            SqlDataReader oReader = DataUtility.ExecuteReader("sp_UserLogin", parameters);
            return oReader;
        }
    }
}
