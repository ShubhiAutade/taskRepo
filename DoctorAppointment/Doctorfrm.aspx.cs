using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DoctorAppointment
{
    public partial class Doctorfrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsDoctorsAppointment cs = new clsDoctorsAppointment();
            DataTable dt = new DataTable();
            dt = cs.Showlist();
            GridView1.DataSource = dt;
            GridView1.DataBind();
           
           

        }
    }
}