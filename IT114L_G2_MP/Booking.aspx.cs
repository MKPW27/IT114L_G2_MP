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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; //not connected
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string connstr = $"Data Source=.\\SQLExpress; Initial Catalog=LSA; Integrated Security=SSPI;";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            string insertstr = $"insert into Booking values ('000004','{name.Text}','{evtType.Text}',{numAttendees.Text},'{bookDate.Text}','{region.Text}'," +
                $"'{city.Text}','{province.Text}','{barangay.Text}','{address.Text}',{mh.Text},{TextBox1.Text},{TextBox2.Text},{TextBox3.Text},{TextBox4.Text}" +
                $",{TextBox5.Text},{TextBox6.Text},{TextBox7.Text},{TextBox8.Text},{TextBox9.Text},{backline_type.SelectedValue},{led_wall_type.SelectedValue}" +
                $",{DropDownList1.SelectedValue},{DropDownList2.SelectedValue},{DropDownList3.SelectedValue},{DropDownList4.SelectedValue})";
            SqlCommand cmd = new SqlCommand(insertstr, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        //Inputs & ID names & TextMode Defualt = none
        //Event Name = name  
        //Event Type = evtType  
        //Number of Attendees = numAttendees | number
        //Event Date = bookDate | date
        //Region = region 
        //City = city
        //Province = province
        //Barangay = barangay
        //Address = address
        //Lights and Sounds Package = package
        //Specific Service Options = specificService | CheckBoxList


    }
}