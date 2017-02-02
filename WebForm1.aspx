<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="Lesson" runat="server" DataSourceID="SqlDataSource" DataTextField="NAME" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" SelectCommand="SELECT [NAME], [ID] FROM [LESSON]"></asp:SqlDataSource>
        <asp:DropDownList ID="Student" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" SelectCommand="SELECT [NAME], [ID] FROM [STUDENT]"></asp:SqlDataSource>
    
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Записать" />
        </p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" InsertCommand="INSERT INTO REGISTRATION(ID, STUDENT, LESSON) VALUES (NEWID(), @student, @lesson)" SelectCommand="SELECT [ID], [LESSON], [STUDENT] FROM [REGISTRATION]">
            <InsertParameters>
                <asp:ControlParameter ControlID="Student" DefaultValue="ID" Name="STUDENT" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Lesson" DefaultValue="ID" Name="LESSON" PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" Text="Расписание" OnClick="Button2_Click" />
    </form>
</body>
</html>
