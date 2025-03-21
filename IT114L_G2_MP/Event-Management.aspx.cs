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
            //LoadData();
        }

        public void LoadData()
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string retrieve = "select booking_id as ID, event_name as Event_Name, event_date as Date, event_pax as PAX from booking";
                SqlCommand cmd = new SqlCommand(retrieve, conn);
                SqlDataAdapter da = new SqlDataAdapter(retrieve, conn);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    No_Events.Text = "";
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    No_Events.Text = "No Events";
                }
            }
            
        }
    }
}