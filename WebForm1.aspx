<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="flowershop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="312px" Width="714px">
            <Series>
                <asp:Series ChartType="StackedBar" Name="Series1" XValueMember="B" YValueMembers="A">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flowershopConnectionString %>" SelectCommand="SELECT * FROM [DC]"></asp:SqlDataSource>
    </form>
</body>
</html>
