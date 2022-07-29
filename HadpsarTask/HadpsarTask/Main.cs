using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace HadpsarTask
{
    public class Main
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-C810CKBA\\SQLEXPRESS;Initial Catalog=EMPLogin;Integrated Security=True");
        public int Id { get; set; }
        public String FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public string Type { get; set; }


        public Main(string type,string Emailaddress,string password)
        {
            Type = type;
            EmailAddress = Emailaddress;
            Password = password;
        }
        public Main()
        {

        }
        public Main(int id)
        {
            Id = id;
        }


        public void DeleteUser()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "DeleteUser");
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.ExecuteNonQuery();
            con.Close();
        }



        public Main(String firstname, string lastname, DateTime dateofbirth, string emailaddress, string password, string confirmpassword, string type)

        {
            FirstName = firstname;
            LastName = lastname;
            DateOfBirth = dateofbirth;
            EmailAddress = emailaddress;
            Password = password;
            ConfirmPassword = confirmpassword;
            Type = type;


        }

        public void Save()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Save");
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
            cmd.Parameters.AddWithValue("@EmailAddress", EmailAddress);
            cmd.Parameters.AddWithValue("@Password", Password);
              cmd.Parameters.AddWithValue("@ConfirmPassword", ConfirmPassword);
            cmd.Parameters.AddWithValue("@Type", Type);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        public SqlDataReader login()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag","Login");
            cmd.Parameters.AddWithValue("@Type", Type);
            cmd.Parameters.AddWithValue("@EmailAddress", EmailAddress);
            cmd.Parameters.AddWithValue("@PassWord", Password);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();

        }
        public DataTable ShowEmployeeList()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ShowEmployeeList");

            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }
        public SqlDataReader ShowEmployeeDetails()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ShowEmployeeDetails");
            cmd.Parameters.AddWithValue("@Id", Id);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();


        }
        public void Edit(int Id, string FirstName, string LastName, string DateOfBirth)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Update");
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.ExecuteNonQuery();
            con.Close();

        }




    }
    }
    
