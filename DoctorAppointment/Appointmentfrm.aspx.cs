using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoctorAppointment
{
    public partial class Appointmentfrm : System.Web.UI.Page
    {
        public string Name;
        public int Age;
        public DateTime DOB;
        public string BloodGroup;
        public string Address;
        public string MobileNo;
        public string Email;
        public DateTime AppointmentDate;
        public string PatientReport;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Name = txtName.Text;
            Age =Convert.ToInt32(txtAge.Text);
            DOB =Convert.ToDateTime(dtDOB.Text);
            BloodGroup = drpBloodGroup.SelectedItem.Text;
            Address = txtAddress.Text;
          
            MobileNo =txtMobile.Text;
            Email = txtEmail.Text;
            AppointmentDate= Convert.ToDateTime(dtAppointmentdate.Text);

            if (filePatientReport.HasFile)
            {
                PatientReport = filePatientReport.PostedFile.FileName;
            }
           

            clsDoctorsAppointment obj = new clsDoctorsAppointment(Name, Age, DOB, BloodGroup, Address, MobileNo, Email, AppointmentDate, PatientReport);
            obj.SaveAppointment();
            Response.Write("Appointment saved..!!");
        }
    }
}