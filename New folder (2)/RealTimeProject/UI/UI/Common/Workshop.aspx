<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Workshop.aspx.cs" Inherits="Common_Workshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Workshops</title>
    <link href="Css/bootstrap.css" rel="stylesheet"/>
    <link href="Css/bootstrap.min.js" rel="stylesheet"/>
    <link href="Css/jquery-3.5.1.min.js" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="WorkshopId" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            <footer><p style="text-align:center" height="50px" width="100%">Copyright 2020, VVB</p></footer>
        </div>
    </form>
</body>
</html>
