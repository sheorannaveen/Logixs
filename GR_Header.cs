using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Transport.DAL;

namespace Transport.BusinessLogic
{
    public class GR_Header
    {
        private string _payment_through;

        public string payment_through
        {
            get { return _payment_through; }
            set { _payment_through = value; }
        }
        private string _ac_code;

        public string ac_code
        {
            get { return _ac_code; }
            set { _ac_code = value; }
        }
        private string _ac_name;

        public string ac_name
        {
            get { return _ac_name; }
            set { _ac_name = value; }
        }
        private string _gr_no;

        public string gr_no
        {
            get { return _gr_no; }
            set { _gr_no = value; }
        }
        public void Update(string action)
        {                        
            SqlParameter[] parameters =
            {
                new SqlParameter("@Action", SqlDbType.VarChar),
                new SqlParameter("@payment_through", SqlDbType.VarChar),
                new SqlParameter("@ac_code", SqlDbType.VarChar),
                new SqlParameter("@ac_name", SqlDbType.VarChar),
                new SqlParameter("@gr_no", SqlDbType.Float)
            };
            parameters[0].Value = action;
            parameters[1].Value = payment_through;
            parameters[2].Value = ac_code;
            parameters[3].Value = ac_name;
            parameters[4].Value = gr_no;
            DataUtility.ExecuteCommand("sp_GetGRHeader", parameters);
        }
    }
}
