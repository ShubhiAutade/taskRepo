using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace DoctorAppointment
{
    public class clsDoctorsAppointment
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-C810CKBA\\SQLEXPRESS;Initial Catalog=Appoitment;Integrated Security=True");
        public string Name { get; set; }
        public int Age { get; set; }
        public string DOB { get; set; }
        public string BloodGroup { get; set; }
        public string Address { get; set; }
        public string MobileNo { get; set; }
        public string Email { get; set; }
        public string AppointmentDate { get; set; }
        public string PatientReport { get; set; }

        public clsDoctorsAppointment()
        {

        }

        public clsDoctorsAppointment(string name, int age, DateTime dob, string bloodGroup, string address, string mobileNo, string email, DateTime appointmentDate, string patientReport)    
        {
            Name = name;
            Age = age;
            DOB = dob.ToString();
            BloodGroup = bloodGroup;
            Address = address;
            MobileNo = mobileNo;
            Email = email;
            AppointmentDate = appointmentDate.ToString();
            PatientReport = patientReport;
        }
    public void SaveAppointment()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tblpatientsDetalis values('"+Name +"','"+Age +"','"+DOB+"','"+BloodGroup+ "','" + Address + "', '" + MobileNo + "','" + Email + "','"+ AppointmentDate +"','" + PatientReport + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

      public DataTable Showlist()
        
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Doctor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flag", "Showlist");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

    }
}