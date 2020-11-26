<%@ Page Title="Admin's Approval" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Approval.aspx.cs" Inherits="Admin_Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridViewApprove" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" DataKeyNames="UserId,WorkshopId">
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
    <br />
    <asp:RadioButtonList ID="RadioButtonListAppOrRej" runat="server" Height="16px" RepeatDirection="Horizontal" Width="175px">
        <asp:ListItem Value="true">Approve</asp:ListItem>
        <asp:ListItem Value="false">Reject</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="butnSubmit" runat="server" Height="30px" class="button button4" OnClick="butnSubmit_Click" Text="Submit" Width="72px" />
</asp:Content>

