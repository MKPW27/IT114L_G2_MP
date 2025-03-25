using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace IT114L_G2_MP
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        // Modify the connection string to use SQL Server Authentication instead of Windows Authentication
        // Replace this line:
        //string connStr = $"Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";

        // With one of these options:

        // Option 1: If you have SQL Server credentials (username/password)
        string connStr = $"Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; User ID=your_username; Password=your_password;";

        // Option 2: If you want to use LocalDB instead (often easier for development)
        // string connStr = $"Data Source=(LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\LightSyncAudio.mdf; Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; //not connected
            if (!IsPostBack)
            {
                try
                {
                    LoadPackages();
                }
                catch (Exception ex)
                {
                    // Log the error
                    System.Diagnostics.Debug.WriteLine("Database error: " + ex.Message);

                    // Show a user-friendly message
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "dbError",
                        "alert('Unable to connect to the database. Please try again later or contact support.');", true);
                }
            }
        }
        private void LoadPackages()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "SELECT package_id, package_name FROM Packages";
                    SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    ddlPackages.DataSource = dt;
                    ddlPackages.DataTextField = "package_name";
                    ddlPackages.DataValueField = "package_id";
                    ddlPackages.DataBind();
                    ddlPackages.Items.Insert(0, new ListItem("-- Select a Package --", "0"));
                }
            }
            catch (Exception ex)
            {
                // Handle the error
                System.Diagnostics.Debug.WriteLine("LoadPackages error: " + ex.Message);
                // You could add a placeholder item to the dropdown
                ddlPackages.Items.Clear();
                ddlPackages.Items.Insert(0, new ListItem("-- Database connection error --", "0"));
            }
        }
        protected void ddlPackages_SelectedIndexChanged(object sender, EventArgs e)
        {
            string packageID = ddlPackages.SelectedValue;
            if (packageID != "0")
            {
                LoadPackageContents(packageID);
            }
            else
            {
                gvPackageContents.DataSource = null;
                gvPackageContents.DataBind();
            }
        }

        private void LoadPackageContents(string packageID)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"
                SELECT pi.equip_id, e.equip_brand, e.equip_model, pi.equip_qty
                FROM Package_Items pi
                JOIN Equipments e ON pi.equip_id = e.equip_id
                WHERE pi.package_id = @PackageID";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@PackageID", packageID);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvPackageContents.DataSource = dt;
                gvPackageContents.DataBind();
            }
        }

        protected void ValidateEventDate(object source, ServerValidateEventArgs args)
        {
            if (DateTime.TryParse(args.Value, out DateTime eventDate))
            {
                args.IsValid = eventDate.Date >= DateTime.Now.Date;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void ValidateTermsAgreement(object source, ServerValidateEventArgs args)
        {
            args.IsValid = CheckBox1.Checked;
        }


        protected void submit_Click(object sender, EventArgs e)
        {
            // Validate all required fields
            if (!ValidateForm())
            {
                // Show error message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage",
                    "alert('Please fill in all required fields and agree to the Terms and Conditions.');", true);
                return;
            }

            // If validation passes, proceed with form submission
            string accID = Session["ID"].ToString();

            SqlConnection conn = new SqlConnection(connStr);

            int record_count = 0;
            string query = "select count(*) from Booking";
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            record_count = (int)cmd.ExecuteScalar();
            record_count += 1;

            string insertstr = $"insert into Booking values ('{record_count.ToString("D15")}','{accID}','','{name.Text}','{evtType.Text}',{numAttendees.Text},'{bookDate.Text}','{ddlPackages.SelectedValue}','Pending')";
            cmd = new SqlCommand(insertstr, conn);
            cmd.ExecuteNonQuery();

            insertstr = $"insert into LocationTBL values ('{record_count.ToString("D15")}','{region.Text}','{province.Text}','{city.Text}','{barangay.Text}','{address.Text}')";
            cmd = new SqlCommand(insertstr, conn);
            cmd.ExecuteNonQuery();

            decimal price = 0;
            string retrieve = "select package_price from Packages where package_id = @ID";

            cmd = new SqlCommand(retrieve, conn);
            cmd.Parameters.AddWithValue("@ID", ddlPackages.SelectedValue);
            object result = cmd.ExecuteScalar();
            if (result != null)
            {
                price = Convert.ToDecimal(result.ToString());
            }

            insertstr = $"insert into Payment values ('{record_count.ToString("D15")}',0,0,{price},{price})";
            cmd = new SqlCommand(insertstr, conn);
            cmd.ExecuteNonQuery();

            conn.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "successMessage",
                "alert('Booking submitted successfully!');", true);

            clearPrompt();
        }

        private bool ValidateForm()
        {
            if (string.IsNullOrWhiteSpace(name.Text) ||
                string.IsNullOrWhiteSpace(evtType.Text) ||
                string.IsNullOrWhiteSpace(numAttendees.Text) ||
                string.IsNullOrWhiteSpace(bookDate.Text) ||
                string.IsNullOrWhiteSpace(region.Text) ||
                string.IsNullOrWhiteSpace(province.Text) ||
                string.IsNullOrWhiteSpace(city.Text) ||
                string.IsNullOrWhiteSpace(barangay.Text) ||
                string.IsNullOrWhiteSpace(address.Text) ||
                ddlPackages.SelectedValue == "0" ||
                !CheckBox1.Checked)
            {
                return false;
            }

        
            if (!int.TryParse(numAttendees.Text, out int attendees) || attendees <= 0)
            {
                return false;
            }

         
            if (DateTime.TryParse(bookDate.Text, out DateTime eventDate))
            {
                if (eventDate.Date < DateTime.Now.Date)
                {
                    return false;
                }
            }
            else
            {
                return false;
            }

            return true;
        }

        public void clearPrompt()
        {
            name.Text = "";
            evtType.Text = "";
            numAttendees.Text = "";
            bookDate.Text = "";
            region.Text = "";
            city.Text = "";
            province.Text = "";
            barangay.Text = "";
            address.Text = "";
            ddlPackages.SelectedValue = "0";
            CheckBox1.Checked = false;
            LoadPackageContents("");
        }
    }
}

