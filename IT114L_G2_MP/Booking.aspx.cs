using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_G2_MP
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; //not connected
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