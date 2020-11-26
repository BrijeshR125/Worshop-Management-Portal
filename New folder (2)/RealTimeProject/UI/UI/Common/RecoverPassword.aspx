<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="Common_RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Change Your Password</title>
    <link href="../Css/Styles.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.js" rel="stylesheet"/>
    <link href="Css/jquery-3.5.1.min.js" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <a href="../Default.aspx">Back to Login Page</a>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <center>
                <table style="text-align:right">
                    <tr>
                        <td><asp:Label ID="Label1" runat="server" Text="Enter New Password:"></asp:Label></td>
                        <td><asp:TextBox ID="TextBoxNewPassword" class="textbox" runat="server" Height="23px" Width="156px" TextMode="Password"></asp:TextBox>
                            </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxNewPassword" Display="Dynamic" ErrorMessage="Password is must" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label2" runat="server" Text="Re-Enter New Password:"></asp:Label></td>
                        <td><asp:TextBox ID="TextBoxNewRePassword" runat="server" class="textbox" Height="22px" Width="151px" TextMode="Password"></asp:TextBox>
                            </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxNewRePassword" Display="Dynamic" ErrorMessage="Re-Password is must" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
</td><td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxNewPassword" ControlToValidate="TextBoxNewRePassword" Display="Dynamic" ErrorMessage="Password and Re-Password are not matching" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="ButtonGo" runat="server" Text="Save" class="button button4" Height="27px" Width="62px" OnClick="ButtonGo_Click"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </center>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="grp" />
        <footer><p style="text-align:center" height="50px" width="100%">Copyright 2020, VVB</p></footer>
    </form>
</body>
</html>
