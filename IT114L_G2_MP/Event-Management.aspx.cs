using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Net;
using System.Xml.Linq;

namespace IT114L_G2_MP
{
    public partial class Event_Management : System.Web.UI.Page
    {
        string connstr = $"Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                string bookingID = GridView1.SelectedRow.Cells[1].Text;
                LoadEventDetails(bookingID);
            }
        }
        private void LoadEventDetails(string bookingID)
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string query = "SELECT * FROM booking a join customer b on a.cust_id = b.acc_id join locationtbl c on a.booking_id = c.booking_id join Payment d on a.booking_id = d.booking_id WHERE a.booking_id = @bookingID";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@bookingID", bookingID);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    // Assign values to textboxes
                    booking_ID.Text = reader["booking_id"].ToString();
                    custname.Text = $"{reader["user_fname"].ToString()} {reader["user_lname"].ToString()}";
                    custemail.Text = reader["user_email"].ToString();
                    b_number.Text = reader["user_business_num"].ToString();
                    compname.Text = reader["user_company_name"].ToString();
                    p_number.Text = reader["user_phone_num"].ToString();
                    region.Text = reader["event_region"].ToString();
                    province.Text = reader["event_province"].ToString();
                    city.Text = reader["event_city"].ToString();
                    brgy.Text = reader["event_barangay"].ToString();
                    addr.Text = reader["event_address"].ToString();
                    ev_name.Text = reader["event_name"].ToString();
                    ev_date.Text = Convert.ToDateTime(reader["event_date"]).ToString("yyyy-MM-dd");
                    ev_type.Text = reader["event_type"].ToString();
                    ev_pax.Text = reader["event_pax"].ToString();
                    packageid.Text = reader["package_id"].ToString();
                    bookStatus.SelectedValue = reader["event_status"].ToString();
                    discount_ddl.SelectedValue = reader["booking_discount"].ToString();
                    teamDDL.SelectedValue = reader["team_name"].ToString();
                }
                reader.Close();
                conn.Close();
            }
        }

        public void LoadData()
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string retrieve = "select a.booking_id as ID, a.event_name as Event_Name, a.event_date as Date, a.event_pax as PAX, a.event_status as STATUS, a.team_name from booking a";
                SqlCommand cmd = new SqlCommand(retrieve, conn);
                SqlDataAdapter da = new SqlDataAdapter(retrieve, conn);

                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        No_Events.Text = "";
                        DataTable dt = new DataTable();
                        reader.Close();
                        da.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    else
                    {
                        No_Events.Text = "No Events";
                    }
                    reader.Close();
                }

                retrieve = "select team_name from Team";
                cmd = new SqlCommand(retrieve, conn);

                teamDDL.Items.Clear();
                teamDDL.Items.Add(new ListItem("None", ""));
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        teamDDL.Items.Add(new ListItem(reader["team_name"].ToString(), reader["team_name"].ToString()));
                    }
                }
                conn.Close();
            }
        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            if (booking_ID.Text != "")
            {
                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    string update = "update Booking set event_status = @status, team_name = @teamID where booking_id = @bookingID; update Payment set booking_discount = @discount where booking_id = @bookingID";
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(update, conn))
                    {
                        cmd.Parameters.AddWithValue("@discount", discount_ddl.SelectedValue);
                        cmd.Parameters.AddWithValue("@status", bookStatus.SelectedValue);
                        cmd.Parameters.AddWithValue("@bookingID", booking_ID.Text);
                        cmd.Parameters.AddWithValue("@teamID", teamDDL.SelectedValue);
                        cmd.ExecuteNonQuery();
                        ClearInput();
                    }
                    conn.Close();
                    LoadData();
                }
            }
            else
            {
                Response.Write("<script>alert('Please select an event');</script>");
            }
        }

        protected void clear_btn_Click(object sender, EventArgs e)
        {
            ClearInput();
        }
        public void ClearInput()
        {
            booking_ID.Text = "";
            custname.Text = "";
            custemail.Text = "";
            b_number.Text = "";
            compname.Text = "";
            p_number.Text = "";
            region.Text = "";
            province.Text = "";
            city.Text = "";
            brgy.Text = "";
            addr.Text = "";
            ev_name.Text = "";
            ev_date.Text = "";
            ev_type.Text = "";
            ev_pax.Text = "";
            packageid.Text = "";
            bookStatus.SelectedValue = "";
            discount_ddl.SelectedValue = "";
        }
    }
}