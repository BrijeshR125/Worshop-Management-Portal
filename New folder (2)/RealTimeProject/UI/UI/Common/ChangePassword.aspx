<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Common_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Change Password</title>
    <link href="../Css/Styles.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.js" rel="stylesheet"/>
    <link href="Css/jquery-3.5.1.min.js" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 337px;
        }
    </style>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <a href="../Default.aspx">Back to Login Page</a>
    <form id="form1" runat="server">
        <div>
            <center>
                <table>
                    <tr>
                        <td><asp:Label ID="lblEmail" runat="server" Text="Enter your Email ID:"></asp:Label></td>
                        <td class="auto-style1"><asp:TextBox ID="TextBoxemail" runat="server" class="textbox" Height="21px" TextMode="Email" Width="186px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxemail" Display="Dynamic" ErrorMessage="Email ID must be given" ForeColor="Red" SetFocusOnError="True" ValidationGroup="gr"></asp:RequiredFieldValidator>
</td><td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" Display="Dynamic" ErrorMessage="Email ID is in Invalid format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="gr"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonSub" runat="server" Text="Go" class="button button4" Height="30px" OnClick="ButtonSub_Click" Width="59px"></asp:Button>
                &nbsp;&nbsp;
                <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="gr" />
            </center>
            <footer><p style="text-align:center" height="50px" width="100%">Copyright 2020, VVB</p></footer>
        </div>
    </form>
</body>
</html>
