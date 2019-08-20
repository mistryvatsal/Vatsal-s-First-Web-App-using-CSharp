using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FirstWebApp.App_Code;
using MySql.Data.MySqlClient;

namespace FirstWebApp
{
    public partial class ack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user_name = Request.Form["user_name"];

            DateTime CurrentDate = Convert.ToDateTime(DateTime.Now);
            string time_stamp = CurrentDate.ToString();

            string connStr = "Host=localhost; Uid=root; pwd=3plus3is6; Database=test; Pooling=false; CharSet=utf8;";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "INSERT INTO dotnetapp(user_name,time_stamp) VALUES(?user_name,?time_stamp)";
            cmd.Parameters.Add("?user_name", MySqlDbType.VarChar).Value = user_name;
            cmd.Parameters.Add("?time_stamp", MySqlDbType.VarChar).Value = time_stamp;
            cmd.ExecuteNonQuery();
            conn.Close();

            label_username.Text = '"' + " " + user_name + " " + '"' + " <= " + "this entry is recorded in the database.";
        }
    }
}