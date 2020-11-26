<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Workshop Login</title>
    <link href="Css/Styles.css" rel="stylesheet" />
    <link href="Css/bootstrap.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.js" rel="stylesheet"/>
    <link href="Css/jquery-3.5.1.min.js" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            
                <center><h1>Welcome to Workshop Management Portal</h1></center>
                <Marquee onMouseOver="stop();" onMouseOut="start();"><h3><a href="Common/Workshop.aspx">Enroll here for upcoming Workshops</a></h3></Marquee><br />
                </br>
                <asp:UpdateProgress runat="server"><ProgressTemplate>Loading...</ProgressTemplate></asp:UpdateProgress>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    
                    <ContentTemplate>
                        <center>
                        <table>
                    <tr>
                        <td><asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label></td>
                        <td><asp:TextBox ID="txtUsername" runat="server" class="textbox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Username is must" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Username is Invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grp"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
                        <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="textbox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is must" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Button ID="btnLogin" runat="server" Text="Login" class="button button4" OnClick="btnLogin_Click" /></td>
                        <td><a href="Common/ChangePassword.aspx">Forgot Password?</a></td>
                        <td><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                
            </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                
                <br/><br />
                
                    </center>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="grp" />
                <footer><p style="text-align:center" height="50px" width="100%">Copyright 2020, VVB</p></footer>
            
        </div>
    </form>
</body>
</html>
