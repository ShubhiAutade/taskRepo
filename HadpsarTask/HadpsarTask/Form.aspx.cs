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
    public partial class Form : System.Web.UI.Page
    {
        // string Gender;
        // int Id;
        int emp_id;
        string email, firstname, lastname, dob;
        int Emp_ID;
        string FirstName, LastName, DateofBirth, Email;


        protected void BtnRegister_Click(object sender, EventArgs e)
        {
        

            Main obj = new Main(txtFirstName.Text, txtLastName.Text, Convert.ToDateTime(txtDateofBirth.Text), txtEmailAddress.Text, txtPassword.Text, txtPassword.Text, drpdwntype.Text);
            obj.Save();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            //txtFirstName.Text = "";
            //txtLastName.Text = "";
            //txtDateofBirth.Text = "";
            //txtEmailAddress.Text = "";
            //txtPassword.Text = "";
            //txtConfirmPass.Text = "";
            

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            emp_id = Convert.ToInt32(Request.QueryString["emp_id"]);
            email = Request.QueryString["email"];
            firstname = Request.QueryString["FirstName"];
            lastname = Request.QueryString["LastName"];
            //DateofBirth =Convert.ToDateTime (Request.QueryString["DateofBirth"]);

           txtFirstName.Text = firstname;
           txtLastName.Text = lastname;
            txtEmailAddress.Text = email;
        }
    }

}

