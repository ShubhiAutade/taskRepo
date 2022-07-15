<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctorfrm.aspx.cs" Inherits="DoctorAppointment.Doctorfrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 266px;
            background-color:antiquewhite;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Yes" ShowHeader="True" Text="Yes" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
