using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HadpsarTask
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void BtnLogin_Click(object sender, EventArgs e)
        {


            Main Login = new Main(DropDownList1.SelectedValue.ToString(), TxtUserName.Text, TxtPassword.Text);
            SqlDataReader dr;
            dr = Login.login();


            if (DropDownList1.SelectedValue.ToString() == "Admin")
            {
                while (dr.Read())
                {
                    string type = dr["Type"].ToString();
                    string mail = dr["EmailAddress"].ToString();
                    string password = dr["Password"].ToString();

                    Session["Name"] = dr["FirstName"].ToString();
                    Session["DateofBirth"] = dr["DateofBirth"].ToString();


                    Response.Redirect("WebForm2.aspx");
                  


                }
            }
            if (DropDownList1.SelectedValue.ToString() == "Employee")
            {
                while (dr.Read())
                {
                    string type = dr["Type"].ToString();
                    string mail = dr["EmailAddress"].ToString();
                    string password = dr["Password"].ToString();

                    //Session["Empid"] = dr["Empid"];

                    Response.Redirect("Form.aspx");
                }
            }
        }
    }
}