<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patientfrom.aspx.cs" Inherits="DoctorAppointment.Patientfrom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 64%;
            height: 667px;
        }
        .auto-style2 {
            width: 414px;
        }
        .auto-style3 {
            height: 79px;
        }
        .auto-style4 {
            width: 414px;
            height: 53px;
        }
        .auto-style5 {
            height: 53px;
        }
        .container
        {
            height:700px;
            width:700px;
            background-color:lightskyblue;
            margin-left:400px;
            border:3px solid;
            border-radius:50px;
        }

        #heading
        {
            position:relative;
            font-size:30px;
            color:black;
            font-weight:bold;
           text-align:center;

        }
        .btns
        {
            background-color:lightgreen;
            width:100px;
            color:white;
            height:30px;
        }

        .btnc
        {
            background-color:lightcoral;
            width:100px;
            color:white;
             height:30px;
        }

        .main{
             height:650px;
            width:400px;
            background-color:transparent;
            position:absolute;
            margin-left:170px;
        }

        td{
            font-size:20px;
            font-weight:bold;
        }

    </style>
</head>
 <body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="main">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2" id="heading">Doctors Appointment Form</td>
                </tr>
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DOB</td>
                    <td>
                        <asp:TextBox ID="dtDOB" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Blood Group</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="drpBloodGroup" runat="server">
                            <asp:ListItem>Select Blood Group</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile Number</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date Of Appoinment</td>
                    <td>
                        <asp:TextBox ID="dtAppointmentdate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Patient Reports</td>
                    <td>
                        <asp:FileUpload ID="filePatientReport" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button class="btns" ID="btnSaveAppointment" runat="server" OnClick="Button1_Click" Text="Save" />
                    </td>
                   
                    <td>
                        <asp:Button class="btnc" ID="Button2" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
  </div>
</body>

</html>
