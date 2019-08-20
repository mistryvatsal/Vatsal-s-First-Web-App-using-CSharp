using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace FirstWebApp
{
    public partial class viewRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = "Host=localhost; Uid=root; pwd=3plus3is6; Database=test; Pooling=false; CharSet=utf8;";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            string query = "SELECT * FROM test.dotnetapp";
            MySqlDataAdapter sda = new MySqlDataAdapter(query, conn);
            DataTable d = new DataTable();
            sda.Fill(d);
            grid.DataSource = d;
            grid.DataBind();
        }
    }
}