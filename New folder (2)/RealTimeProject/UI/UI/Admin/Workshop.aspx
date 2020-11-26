<%@ Page Title="Admin's Workshop" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Workshop.aspx.cs" Inherits="Admin_Workshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 214px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 321px;
        }
        .auto-style4 {
            height: 30px;
            width: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" class="auto-style1">
        <tr>
            <td style="text-align:right" class="auto-style3">
                <asp:Label ID="lblWorkshopTitle" runat="server" Text="Workshop Title:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtWorkshopTitle" runat="server" class="textbox" Width="146px"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtWorkshopTitle" Display="Dynamic" ErrorMessage="Workshop must have title" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:right" class="auto-style4">
                <asp:Label ID="lblWorkshopDate" runat="server" Text="Workshop Date:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtWorkshopDate" runat="server" class="textbox" Width="141px" TextMode="DateTime"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtWorkshopDate" Display="Dynamic" ErrorMessage="Workshop must have date" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:right" class="auto-style3">
                <asp:Label ID="lblWorkshopDuration" runat="server" Text="Workshop Duration:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtWorkshopDuration" runat="server" class="textbox" Width="142px"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtWorkshopDuration" Display="Dynamic" ErrorMessage="Workshop duration is for sure" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:right" class="auto-style3">
                <asp:Label ID="lblWorkshopTopics" runat="server" Text="Workshop Topics:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtWorkshopTopics" runat="server" class="textbox" Height="72px" TextMode="MultiLine" Width="182px"></asp:TextBox>
                </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtWorkshopTopics" Display="Dynamic" ErrorMessage="Workshop must have topics to teach" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:right" class="auto-style3">
                <asp:Label ID="lblTrainers" runat="server" Text="Trainers:"></asp:Label>
            </td>
            <td>
                <asp:CheckBoxList ID="CheckBoxListTrainers" runat="server" AutoPostBack="True" RepeatDirection="Vertical">
                </asp:CheckBoxList>
                     
            </td>
        </tr>
        <tr>
            <td style="text-align:right" class="auto-style3">
                <asp:Button ID="btnSave" runat="server" Text="Save" class="button button4" Height="30px" Width="69px" OnClick="btnSave_Click" />
                </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpdate" runat="server" Text="Update" class="button button4" Height="30px" Width="69px" OnClick="btnUpdate_Click"/>
            </td>
            <td>                <asp:Button ID="btnDelete" runat="server" Text="Delete" class="button button4" Height="30px" Width="69px" OnClick="btnDelete_Click"/>
            </td>
            
        </tr>
        </table>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="grp1" />
    <br />
    <asp:GridView runat="server" ID="GridView1" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" DataKeyNames="WorkshopId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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

