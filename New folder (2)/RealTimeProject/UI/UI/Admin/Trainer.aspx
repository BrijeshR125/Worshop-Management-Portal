<%@ Page Title="Admin's Trainer" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Trainer.aspx.cs" Inherits="Admin_Trainer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table style="text-align:right; align-content:center">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Trainer's First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTrainerFirstName" runat="server" class="textbox" Height="17px" Width="160px"></asp:TextBox>
                <td />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxTrainerFirstName" Display="Dynamic" ErrorMessage="This field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Trainer's Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTrainerLastName" runat="server" class="textbox" Height="17px" Width="160px"></asp:TextBox>
                </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxTrainerLastName" Display="Dynamic" ErrorMessage="This field is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Trainer's Email Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTrainerEmail" runat="server" class="textbox" TextMode="Email" Height="17px" Width="160px"></asp:TextBox>
                </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxTrainerEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
</td><td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxTrainerEmail" Display="Dynamic" ErrorMessage="Invalid Email format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grp"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Trainer's Gender:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonListTGender" runat="server" Height="26px" RepeatDirection="Horizontal" Width="157px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonListTGender" Display="Dynamic" ErrorMessage="Gender must be selected" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxPassword" runat="server" class="textbox" TextMode="Password" Height="17px" Width="160px"></asp:TextBox>
                </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Re-Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxRePassword" runat="server" class="textbox" TextMode="Password" Height="17px" Width="160px"></asp:TextBox>
                </td><td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxRePassword" Display="Dynamic" ErrorMessage="Re - Password is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp"></asp:RequiredFieldValidator>
</td><td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxRePassword" Display="Dynamic" ErrorMessage="Password and Re-Password are not matching" ForeColor="Red" ValidationGroup="grp"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="ButtonSave" runat="server" class="button button4" Text="Save" Height="25px" OnClick="ButtonSave_Click" Width="64px" /></td>
        </tr>
    </table>
        </center>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="grp" />
    <br />
    <asp:GridView ID="GridViewTainerList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    
</asp:Content>

