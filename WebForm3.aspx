<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication_2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Администрирование</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Lessons<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="DATE" HeaderText="DATE" SortExpression="DATE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" SelectCommand="SELECT [NAME], [DATE] FROM [LESSON]"></asp:SqlDataSource>
        Name<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Date<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" InsertCommand="INSERT INTO LESSON(ID, NAME, DATE) VALUES (NEWID(), @name, @date)" ProviderName="<%$ ConnectionStrings:dbLab2ConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="date" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" SelectCommand="SELECT [NAME] FROM [STUDENT]"></asp:SqlDataSource>
        Name<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbLab2ConnectionString %>" DeleteCommand="DELETE FROM [STUDENT] WHERE [ID] = @ID" InsertCommand="INSERT INTO [STUDENT] ([ID], [NAME]) VALUES (NEWID(), @NAME)" SelectCommand="SELECT * FROM [STUDENT]" UpdateCommand="UPDATE [STUDENT] SET [NAME] = @NAME WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DefaultValue="NEWID()" Name="ID" Type="Object" />
                <asp:ControlParameter ControlID="TextBox3" DefaultValue="" Name="NAME" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="ID" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Назад" />
        <br />
    </form>
</body>
</html>
