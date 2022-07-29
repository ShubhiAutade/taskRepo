<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="HadpsarTask.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 385px;
        }
        .auto-style2 {
            width: 670px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color:cornsilk">
        <fieldset>
            <legend>Registration Form</legend>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><font size="5">First Name</font></td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><font size="5">Last Name</font></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><font size="5">Date of Birth</font></td>
                    <td>
                        <asp:TextBox ID="txtDateofBirth" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><font size="5">Email Address</font></td>
                    <td>
                        <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><font size="5">Password</font></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><font size="5">Confirm Password</font></td>
                    <td>
                        <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><font size="5">Type</font></td>
                    <td>
                        <asp:DropDownList ID="drpdwntype" runat="server">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" ClientIDMode="AutoID" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnreset" runat="server" Text="Reset" OnClientClick="this.form.reset();return false;" OnClick="btnreset_Click" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" />
                        <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        </fieldset>
    </form>
</body>
</html>
