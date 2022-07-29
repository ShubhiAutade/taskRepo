<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HadpsarTask.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 254px;
        }
        .auto-style3 {
            width: 1082px;
            height: 214px;
        }
        .auto-style4 {
            height: 254px;
            width: 1082px;
        }
        .auto-style5 {
            height: 214px;
        }
    </style>
</head>
<body style="height: 245px">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><h1>Welcome </h1>&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    Your Age is
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                &nbsp;years</td>
                <td class="auto-style5"></td>
            </tr>
            <tr>          
             
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" Height="219px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="491px" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:ButtonField Text="Details" CommandName="Details" />
                            
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </form>
</body>
</html>
