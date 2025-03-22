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

namespace IT114L_G2_MP
{
    public partial class Create_Package : System.Web.UI.Page
    {
        string connstr = @"Data Source=.\SQLExpress; Initial Catalog=LightSyncAudio; Integrated Security=SSPI;";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ddlItemType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void ddlItemBrand_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void ddlItemModel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}