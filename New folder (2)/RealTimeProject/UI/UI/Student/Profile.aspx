<%@ Page Title="Student's Material" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Student_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1><u>Your Details</u></h1><br/>
    <table style="text-align:right">
        <tr>
            <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="First Name:" Font-Bold="True"></asp:Label></td>
            <td class="auto-style1"><asp:Label ID="lblFirstName" runat="server" Height="19px" Width="161px" Font-Size="Large"></asp:Label></td>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Bold="True"></asp:Label></td>
            <td class="auto-style1"><asp:Label ID="lblLastName" runat="server" Height="19px" Width="161px" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1" ><asp:Label ID="Label3" runat="server" Text="Username:" Font-Bold="True"></asp:Label></td>
            <td class="auto-style1"><asp:Label ID="lblUser" runat="server" Height="19px" Width="161px" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Gender:" Font-Bold="True"></asp:Label></td>
            <td class="auto-style1"><asp:Label ID="LabelGender" runat="server" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1"><asp:Label ID="Label5" runat="server" Text="Mobile Number:" Font-Bold="True"></asp:Label></td>
            <td class="auto-style1"><asp:Label ID="lblMob" runat="server" Height="19px" Width="161px" Font-Size="Large"></asp:Label></td>
        </tr>
        
        <tr>
            
            <td colspan="3">
                <br />
                <asp:Button ID="ButtonEdit" runat="server" Text="Edit Your Details" class="button button4" Height="26px" Width="106px" OnClick="ButtonEdit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonExit" runat="server" Text="Exit" class="button button4" Height="26px" Width="106px" OnClick="ButtonExit_Click" />
            </td>
        </tr>
    </table>
        </center>
</asp:Content>

