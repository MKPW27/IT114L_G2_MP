using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Reflection;

namespace IT114L_G2_MP
{
    public partial class Team_Management : System.Web.UI.Page
    {
        string connstr = $"Data Source=.\\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEmptyGrid();
                LoadTeam();
            }
        }
        protected void gvPackages_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedPackageID = gvTeams.SelectedDataKey.Value.ToString();
            teamID.Text = selectedPackageID;
            displayAtGrid();
        }
        protected void gvPackages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string teamID = gvTeams.DataKeys[e.RowIndex].Value.ToString();

            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string deleteQuery = "DELETE FROM Team WHERE team_id = @teamID";
                SqlCommand cmd = new SqlCommand(deleteQuery, conn);
                cmd.Parameters.AddWithValue("@teamID", teamID);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            LoadTeam();
            gvNewTeam.DataSource = null;
            gvNewTeam.DataBind();
            ClearDDL();
        }
        private void LoadTeam()
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string query = "SELECT team_name FROM Team";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();

                conn.Open();
                da.Fill(dt);
                conn.Close();

                gvTeams.DataSource = dt;
                gvTeams.DataBind();
            }
        }
        protected void gvEquipment_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteItem")
            {
                // Get the row index
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvNewTeam.Rows[index];

                // Extract values from the selected row
                string empID = row.Cells[0].Text;
                string equipBrand = row.Cells[1].Text;
                string equipModel = row.Cells[2].Text;
                string equipQty = row.Cells[3].Text;
                string packageId = teamID.Text; // Get the package ID

                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    conn.Open();

                    // Delete the item from Package_Items table
                    string deleteQuery = "DELETE FROM Team WHERE team_emp_id = @ID AND equip_id = @EquipID";
                    SqlCommand deleteCmd = new SqlCommand(deleteQuery, conn);
                    deleteCmd.Parameters.AddWithValue("@ID", packageId);
                    deleteCmd.Parameters.AddWithValue("@EquipID", empID);

                    deleteCmd.ExecuteNonQuery();
                    }
                // Refresh the GridView
                displayAtGrid();
            }
        }
        private void ClearGrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Type");
            dt.Columns.Add("Brand");
            dt.Columns.Add("Model");
            dt.Columns.Add("Quantity");

            gvNewTeam.DataSource = dt;
            gvNewTeam.DataBind();
        }
        public void displayAtGrid()
        {
            //ClearGrid();
            //using (SqlConnection conn = new SqlConnection(connstr))
            //{
            //    string retrieve = $"select A.equip_type as Type, A.equip_brand as Brand, A.equip_model as Model, B.equip_qty as Quantity from Equipments A right join package_items B on B.equip_id = A.equip_id where package_id = '{packageID.Text}'";
            //    SqlCommand cmd = new SqlCommand(retrieve, conn);
            //    SqlDataAdapter da2 = new SqlDataAdapter(retrieve, conn);

            //    conn.Open();
            //    using (SqlDataReader reader = cmd.ExecuteReader())
            //    {
            //        if (reader.Read())
            //        {
            //            DataTable dt = new DataTable();
            //            reader.Close();
            //            da2.Fill(dt);
            //            gvNewTeam.DataSource = dt;
            //            gvNewTeam.DataBind();
            //        }
            //    }
            //    conn.Close();
            //}
        }
        private void BindEmptyGrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ItemType");
            dt.Columns.Add("Brand");
            dt.Columns.Add("Model");
            dt.Columns.Add("Quantity");

            // Bind empty DataTable to GridView
            gvNewTeam.DataSource = dt;
            gvNewTeam.DataBind();
        }

        protected void ddlItemType_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlEmp.Items.Clear();
            ddlEmp.Items.Insert(0, new ListItem("-- Select Role --", "0"));

            string selectedType = ddlRole.SelectedValue;
            if (selectedType != "0")
            {
                using (SqlConnection conn = new SqlConnection(connstr))
                {
                    string query = "SELECT emp_fname + ' ' + emp_lname as Name FROM Employee";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@equipType", selectedType);

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ddlEmp.Items.Add(new ListItem(reader["Name"].ToString(), reader["Name"].ToString()));
                    }
                    conn.Close();
                }
            }
        }
        
        protected void addbtn_Click(object sender, EventArgs e)
        {
            //using (SqlConnection conn = new SqlConnection(connstr))
            //{
            //    string package_id = teamID.Text;
            //    string equip_id = null;

            //    string retrieve = "SELECT equip_id FROM Equipments WHERE equip_brand = @Brand AND equip_type = @Type AND equip_model = @Model";

            //    conn.Open();

            //    using (SqlCommand cmd = new SqlCommand(retrieve, conn))
            //    {
            //        Use parameters to prevent SQL Injection
            //        cmd.Parameters.AddWithValue("@Brand", ddlItemBrand.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Type", ddlItemType.SelectedValue);
            //        cmd.Parameters.AddWithValue("@Model", ddlItemModel.SelectedValue);

            //        object result = cmd.ExecuteScalar();
            //        if (result != null)
            //        {
            //            equip_id = result.ToString();
            //        }
            //    }

            //    Check if equip_id is valid before inserting
            //    if (!string.IsNullOrEmpty(equip_id))
            //    {
            //        string insertstr = "INSERT INTO Package_Items VALUES (@PackageID, @EquipID, @Quantity)";

            //        using (SqlCommand cmd = new SqlCommand(insertstr, conn))
            //        {
            //            cmd.Parameters.AddWithValue("@PackageID", package_id);
            //            cmd.Parameters.AddWithValue("@EquipID", equip_id);
            //            cmd.Parameters.AddWithValue("@Quantity", ddlItemQty.SelectedValue);

            //            cmd.ExecuteNonQuery();
            //        }

            //        using (SqlCommand cmd = new SqlCommand("select equip_ppd from Equipments where equip_id = @ID", conn))
            //        {
            //            cmd.Parameters.AddWithValue("@ID", equip_id);

            //            object result = cmd.ExecuteScalar();
            //            if (result != null)
            //            {
            //                equip_ppd = Convert.ToDecimal(result.ToString());
            //            }
            //        }

            //        using (SqlCommand cmd = new SqlCommand("select package_price from Packages where package_id = @ID", conn))
            //        {
            //            cmd.Parameters.AddWithValue("@ID", package_id);

            //            object result = cmd.ExecuteScalar();
            //            if (result != null)
            //            {
            //                price = Convert.ToDecimal(result.ToString());
            //            }
            //            price += equip_ppd * Convert.ToInt16(ddlItemQty.SelectedValue);

            //            SqlCommand cmd2 = new SqlCommand("update Packages set package_price = @price where package_id = @ID", conn);
            //            cmd2.Parameters.AddWithValue("@ID", package_id);
            //            cmd2.Parameters.AddWithValue("@price", price);
            //            cmd2.ExecuteNonQuery();
            //        }
            //        displayAtGrid();
            //    }
            //    else
            //    {
            //        package_name.Text = "Error: Equipment not found!";
            //    }
            //    ClearDDL();

            //    LoadPackages();
            //}
        }

        public void ClearDDL()
        {
            ddlEmp.SelectedValue = "";
            ddlRole.SelectedValue = "";
        }

        protected void createNew_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string check = "select team_name from Team";
                conn.Open();
                SqlCommand cmd = new SqlCommand(check, conn);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        if (reader["team_name"].ToString().ToUpper() == teamname.Text.ToUpper())
                        {
                            Response.Write("<script>alert('Team name taken! please select another');</script>");
                            return;
                        }
                    }
                }

                int record_count = 0;
                string query = "select count(*) from Team";
                cmd = new SqlCommand(query, conn);
                record_count = (int)cmd.ExecuteScalar();
                record_count += 1;

                string insertstr = $"insert into Team values ('{teamname.Text.ToUpper()}{record_count.ToString("D5")}','{teamname.Text}',0)";
                cmd = new SqlCommand(insertstr, conn);
                cmd.ExecuteNonQuery();

                teamID.Text = $"{teamname.Text}{record_count.ToString("D5")}";

                conn.Close();

                LoadTeam();
            }
        }
    }
}
