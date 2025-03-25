using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_G2_MP
{
    public partial class Payment_Management : System.Web.UI.Page
    {
        string connstr = "Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            string retrieve = $"select cust_id, user_fname, user_lname, event_name, event_date, package_name, booking_total, booking_dp, booking_bal, booking_discount from Booking a join Customer b on a.cust_id = b.acc_id join packages c on a.package_id = c.package_id join Payment d on a.booking_id = d.booking_id";
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = new SqlCommand(retrieve, conn);
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        name.Text = reader["user_fname"].ToString() + " " + reader["user_lname"].ToString();
                        eventname.Text = reader["event_name"].ToString();
                        eventdate.Text = reader.GetDateTime(4).ToString("yyyy-MM-dd");
                        package.Text = reader["package_name"].ToString();
                        total.Text = reader["booking_total"].ToString();
                        downpayment.Text = reader["booking_dp"].ToString();
                        balance.Text = reader["booking_bal"].ToString();
                        discount_ddl.SelectedValue = reader["booking_discount"].ToString();
                    }
                    else
                    {
                        Response.Write($"<script>alert('Booking not found!');</script>");
                    }
                }
                conn.Close();
            }
        }
    }
}