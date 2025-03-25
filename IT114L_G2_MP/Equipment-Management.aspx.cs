using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace IT114L_G2_MP
{
    public partial class Equipment_Management : System.Web.UI.Page
    {
        string connstr = $"Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            equip_acq.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }
        protected void ddl_typeChange(object sender, EventArgs e)
        {
            equip_purpose.Items.Clear(); 
            equip_purpose.Items.Add(new ListItem("-- Select Purpose --", ""));

            if (equip_type.SelectedValue == "Lights")
            {
                
                equip_purpose.Items.Add(new ListItem("Blinder", "Blinder"));
                equip_purpose.Items.Add(new ListItem("Moving Head", "Moving Head"));
                equip_purpose.Items.Add(new ListItem("PAR Light", "PAR Light"));
                equip_purpose.Items.Add(new ListItem("Strip Light", "Strip Light"));
            }
            else if (equip_type.SelectedValue == "Sounds")
            {
                equip_purpose.Items.Add(new ListItem("DI Box", "DI Box"));
                equip_purpose.Items.Add(new ListItem("Drum", "Drum"));
                equip_purpose.Items.Add(new ListItem("Guitar Amp", "Guitar Amp"));
                equip_purpose.Items.Add(new ListItem("House Speakers", "House Speakers"));
                equip_purpose.Items.Add(new ListItem("Keyboard Amp", "Keyboard Amp"));
                equip_purpose.Items.Add(new ListItem("Microphone", "Microphone"));
                equip_purpose.Items.Add(new ListItem("Mixer", "Backline"));
                equip_purpose.Items.Add(new ListItem("Monitors", "Monitors"));
                equip_purpose.Items.Add(new ListItem("Subwoofer", "Subwoofer"));
            }
            else if (equip_type.SelectedValue == "Others")
            {
                equip_purpose.Items.Add(new ListItem("Lazer", "Lazer"));
                equip_purpose.Items.Add(new ListItem("LED Wall", "LED Wall"));
                equip_purpose.Items.Add(new ListItem("Multimedia", "Multimedia"));
                equip_purpose.Items.Add(new ListItem("Roofing", "Roofing"));
                equip_purpose.Items.Add(new ListItem("Smoke Machine", "Smoke Machine"));
                equip_purpose.Items.Add(new ListItem("Stage", "Stage"));
                equip_purpose.Items.Add(new ListItem("Truss", "Truss"));
            }
            else
            {
                equip_purpose.Enabled = false;
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = "";
            string type = equip_type.SelectedValue;
            string brand = equip_brand.Text;
            string model = equip_model.Text;
            int qty = Convert.ToInt32(equip_quant.Text);
            string acq = Convert.ToDateTime(equip_acq.Text).ToString("yyyy-MM-dd");
            string fuct = equip_purpose.Text;
            decimal ppd = Convert.ToDecimal(equip_ppd.Text);

            if (equip_type.SelectedValue == "Lights") { id += "L"; }
            else if (equip_type.SelectedValue == "Sounds") { id += "S"; }
            else { id += "O"; }

            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string getID_Length = $"select count(*) from equipments where equip_type = '{type}'";
                int record_count = 0;

                SqlCommand cmd = new SqlCommand(getID_Length, conn);
                conn.Open();
                record_count = (int)cmd.ExecuteScalar();
                record_count += 1;

                string insertstr = $"insert into equipments values ('{id}{record_count.ToString("D13")}','{brand}','{model}',{ppd},{qty},'{acq}','{fuct}','{type}')";

                cmd = new SqlCommand(insertstr, conn);
                cmd.ExecuteNonQuery();

                conn.Close();
            }
        }
    }
}