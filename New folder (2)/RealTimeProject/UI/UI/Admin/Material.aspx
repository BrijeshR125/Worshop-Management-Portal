<%@ Page Title="Admin's Material" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Material.aspx.cs" Inherits="Admin_Material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table style="text-align:center">
        <tr>
            <td style="text-align:right">
                <asp:Label ID="lblWorkshop" runat="server" Text="Workshop:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddWorkshop" runat="server" Height="16px" Width="213px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="lblMaterial" runat="server" Text="Material"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="MaterialFileUpload" runat="server" />
            </td>
        </tr>
    </table>
    <asp:Button ID="btnSave" runat="server" Text="Save" class="button button4" OnClick="btnSave_Click" />
    </center>
        <asp:GridView ID="GridViewMaterials" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnRowCommand="GridViewMaterials_RowCommand">
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

