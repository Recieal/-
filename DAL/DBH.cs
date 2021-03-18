using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class DBH
    {
        //数据库连接字符串
        public static string ConnString = " server=.;database=CC; Integrated Security = True;";

        //数据库连接对象
        public static SqlConnection Conn = new SqlConnection(ConnString);

        //初始化数据库连接
        public static void InitCqnnection()
        {
            Conn.Close();
            Conn.Open();
        }
        //查询，获取DataTable，断开式访问
        public static DataTable GetDataTable(string sqlStr)
        {
            InitCqnnection();
            DataTable table = new
            DataTable();
            SqlDataAdapter dap = new SqlDataAdapter(sqlStr, Conn);
            dap.Fill(table);
            Conn.Close();
            return table;
        }

        //增删改
        public static bool ExecuteNonQuery(string sqlStr)
        {
            InitCqnnection();
            SqlCommand cmd = new SqlCommand(sqlStr, Conn);
            int result = cmd.ExecuteNonQuery();
            Conn.Close();
            return result > 0;
        }
    }
}
