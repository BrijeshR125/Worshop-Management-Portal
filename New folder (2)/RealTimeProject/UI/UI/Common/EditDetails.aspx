<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="Common_EditDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Edit Your Details Here</title>
    <link href="../Css/Styles.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.js" rel="stylesheet"/>
    <link href="Css/jquery-3.5.1.min.js" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
        <h1><u>Edit Your Details</u></h1><br/>
    <table style="text-align:right">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="First Name:" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtFirstName" runat="server" class="textbox" Height="19px" Width="161px" Font-Size="Medium"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First Name is must" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtLastName" runat="server" class="textbox" Height="19px" Width="161px" Font-Size="Medium"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last Name is must" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Username:" Font-Bold="True"></asp:Label></td>
            <td><asp:Label ID="lblUser" runat="server" Height="19px" Width="161px" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Gender:" Font-Bold="True"></asp:Label></td>
            <td><asp:Label ID="LabelGender" runat="server" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Mobile Number:" Font-Bold="True"></asp:Label></td>
            <td><asp:TextBox ID="txtMob" runat="server" class="textbox" TextMode="Phone" Height="19px" Width="161px" Font-Size="Medium"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMob" Display="Dynamic" ErrorMessage="Mobile number is must" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            
            <td colspan="2">
                <asp:Button ID="ButtonSave" runat="server" Text="Save" class="button button4" Height="26px" Width="106px" OnClick="ButtonEdit_Click" />
                </td>
        </tr>
    </table>
        </center>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="grp2" />
        <footer><p style="text-align:center" height="50px" width="100%">Copyright 2020, VVB</p></footer>
    </form>
</body>
</html>
