using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IT114L_G2_MP
{
    public partial class SignUp : System.Web.UI.Page
    {
        string connstr = $"Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select count(*) from Accounts";

            int record_count = 0;

            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            record_count = (int)cmd.ExecuteScalar();
            record_count += 1;

            string insertstr = $"insert into accounts values ('{DateTime.Now.ToString("yyyyMMdd")}{record_count.ToString("D7")}','{tb_username.Text}','{tb_confirm_password.Text}','customer')";
            cmd = new SqlCommand(insertstr, conn);
            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect("Default.aspx");
        }
    }
}