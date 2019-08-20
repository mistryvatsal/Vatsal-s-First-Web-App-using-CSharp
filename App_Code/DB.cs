using MySql.Data.MySqlClient;
using System;

namespace FirstWebApp.App_Code
{
    public class DB
    {
        private MySqlConnection conn;

        public MySqlConnection GetConnection()
        {
            //CONNECT TO DB.
            string connStr = "Server=localhost; Port=3306; Database=test; User Id=root; Password=3plus3is6;";
            conn = new MySqlConnection(connStr);
            conn.Open();

            return conn;
        }

       
        public void CloseConnection()
        {
            if(conn != null && conn.State == System.Data.ConnectionState.Open)
            {
                //CLOSE THE CONNECTION.
                this.conn.Close();
            }
        }
    }
}