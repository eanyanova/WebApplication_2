<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="lab2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Lesson" HeaderText="Lesson" SortExpression="Lesson" />
                <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" SelectCommand="SELECT DISTINCT LESSON.DATE AS Date, LESSON.NAME AS Lesson, STUDENT.NAME AS Student FROM REGISTRATION INNER JOIN LESSON ON REGISTRATION.LESSON = LESSON.ID INNER JOIN STUDENT ON REGISTRATION.STUDENT = STUDENT.ID"></asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" Text="Назад" />
    
    </div>
    </form>
</body>
</html>
