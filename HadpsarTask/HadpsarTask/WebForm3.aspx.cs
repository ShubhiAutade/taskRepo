using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HadpsarTask
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        int emp_id;
        string email, firstname, lastname, dob;
        int Emp_ID;
        string FirstName, LastName, DateofBirth, Email;

        protected void Button1_Click(object sender, EventArgs e)
        {
            Main objdel = new Main();
            objdel.DeleteUser();
          //  Response.Redirect("DeleteSuccessfully");
        }

        
        
        protected void Button2_Click(object sender, EventArgs e)
        {

            emp_id = Convert.ToInt32(Request.QueryString["emp_id"]);

            Main obj = new Main(emp_id);
            SqlDataReader dr;
            dr = obj.ShowEmployeeDetails();
            if (dr.Read())
            {
                Email = dr["EmailAddress"].ToString();
                FirstName = dr["FirstName"].ToString();
                LastName = dr["LastName"].ToString();
                //DateofBirth = Convert.ToDateTime(dr["DateofBirth"].ToString());
            }
            Response.Redirect("Form.aspx?emp_id=" + Emp_ID + "&email=" + Email + "&FirstName=" + FirstName + "&LastName=" + LastName);
        }

        
        

        //DateTime DateofBirth;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Main obj = new Main();
            //obj.ShowEmployeeDetails();
            emp_id = Convert.ToInt32(Request.QueryString["emp_id"]);
            email = Request.QueryString["email"];
            firstname = Request.QueryString["FirstName"];
            lastname = Request.QueryString["LastName"];
            //DateofBirth =Convert.ToDateTime (Request.QueryString["DateofBirth"]);

            Label1.Text = firstname;
            Label2.Text = lastname;
            Label4.Text = email;
            //this.Label3 = DateofBirth;
            

        }

        protected void txtLastName_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}