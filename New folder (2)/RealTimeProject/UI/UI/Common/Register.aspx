<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Common_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Regsiter for the Workshop</title>
    <link href="../Css/Styles.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.js" rel="stylesheet"/>
    <link href="Css/jquery-3.5.1.min.js" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="../Default.aspx">Back to Home</a>
            <br />
            Send A Request for Attendig Workshop<br />
            <br />
            <center>
            <table style="text-align:right">
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="TextBoxFirstName" runat="server" class="textbox" Height="18px" Width="157px"></asp:TextBox>
                        </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxFirstName" Display="Dynamic" ErrorMessage="First Name is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label></td>
                <td class="auto-style1"><asp:TextBox ID="TextBoxLastName" runat="server" class="textbox" Height="18px" Width="157px"></asp:TextBox>
                    </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxLastName" Display="Dynamic" ErrorMessage="Last Name is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text="Email ID:"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" class="textbox" TextMode="Email" Height="18px" Width="157px"></asp:TextBox>
                        </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email ID is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
</td><td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email ID is invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grp1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Mobile Number:"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="TextBoxNumber" runat="server" class="textbox" TextMode="Phone" Height="18px" Width="157px"></asp:TextBox>
                        </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxNumber" Display="Dynamic" ErrorMessage="Mobile Number is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="18px" RepeatDirection="Horizontal" Width="157px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Gender must be selected" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    </table>
                
                <br />
                
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="button button4" OnClick="btnSubmit_Click" Height="26px" Width="78px" />
                </center>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="grp1" />
        <footer><p style="text-align:center" height="50px" width="100%">Copyright 2020, VVB</p></footer>
    </form>
</body>
</html>
