using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_G2_MP
{
    public partial class Payment_Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            string retrieve = $"select cust_id, user_fname, user_lname, event_name, event_date, package_name, booking_total, booking_dp, booking_bal from Booking a join Customer b on a.cust_id = b.acc_id join packages c on a.package_id = c.package_id join Payment d on a.booking_id = d.booking_id";

        }
    }
}