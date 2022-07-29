using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HadpsarTask
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int Emp_ID;
        string FirstName, LastName, DateofBirth, Email;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Firstname = Session["Name"].ToString();

            Label1.Text = Firstname;


            DateTime bithdate = Convert.ToDateTime(Session["DateofBirth"].ToString());

            int now = int.Parse(DateTime.Today.ToString("yyyyMMdd"));
            int dob = int.Parse(bithdate.ToString("yyyyMMdd"));
            string dif = (now - dob).ToString();
            string age = "0";
            if (dif.Length > 4)
                age = dif.Substring(0, dif.Length - 4);

            Label2.Text = age;


            Main Showlist = new Main();
            DataTable dt = new DataTable();
            dt = Showlist.ShowEmployeeList();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            //Main Details = new Main();
            //SqlDataReader dr;
            //dr = Details.ShowEmployeeDetails();

            //int Empid = Convert.ToInt32(dr["Id"].ToString());

            //if (GridView1.Columns[0].ToString() == "Details")
            //{


            //    string FirstName = GridView1.Rows[1].Cells.ToString();
            //    DateTime DateOfBirth = Convert.ToDateTime(GridView1.Rows[2].Cells.ToString());
            //    string EmailAddress = GridView1.Rows[3].Cells.ToString();
            //    string Type = GridView1.Rows[4].Cells.ToString();
            //    Response.Redirect("WebForm3.aspx");
              

            //}
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
         
            if (e.CommandName == "Details")
            {
                int rowindex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowindex];
                Emp_ID = Convert.ToInt32(row.Cells[1].Text);
                Main obj = new Main(Emp_ID);
                SqlDataReader dr;
                dr = obj.ShowEmployeeDetails();
                if (dr.Read())
                {
                    Email = dr["EmailAddress"].ToString();
                    FirstName= dr["FirstName"].ToString();
                    LastName = dr["LastName"].ToString();
                    DateofBirth = dr["DateofBirth"].ToString();
                }
                Response.Redirect("WebForm3.aspx?emp_id=" + Emp_ID + "&email=" + Email + "&FirstName=" + FirstName + "&LastName=" + LastName +"&DateofBirth"+ DateofBirth);
            }
        }
    }
}
