using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_G2_MP
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Here you would typically process the form submission
            // For example, sending an email or storing in database

            // Clear the form after submission
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";

            // Show success message (you could implement this with a label or alert)
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                "alert('Thank you for your message. We will get back to you soon!');", true);
        }
    }
}

