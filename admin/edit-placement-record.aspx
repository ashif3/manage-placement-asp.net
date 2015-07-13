<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="edit-placement-record.aspx.cs" Inherits="admin_edit_placement_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style3 {
            text-align: center;
            font-size: large;
        }
        .auto-style4 {
            text-align: center;
            font-size: large;
            margin-bottom: 8px;
        }
        .auto-style5 {
            text-align: center;
            font-size: large;
            margin-top: 9px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style4">
        <strong>Edit Placement Record</strong></p>
    <hr />
    <p class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="sno" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" ReadOnly="True" SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                <asp:BoundField DataField="session" HeaderText="Session" SortExpression="session" />
                <asp:BoundField DataField="company" HeaderText="Company" SortExpression="company" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [placement] WHERE [sno] = @sno" InsertCommand="INSERT INTO [placement] ([name], [course], [session], [company], [email], [mobile]) VALUES (@name, @course, @session, @company, @email, @mobile)" SelectCommand="SELECT * FROM [placement]" UpdateCommand="UPDATE [placement] SET [name] = @name, [course] = @course, [session] = @session, [company] = @company, [email] = @email, [mobile] = @mobile WHERE [sno] = @sno">
            <DeleteParameters>
                <asp:Parameter Name="sno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="session" Type="String" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="session" Type="String" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="sno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style3">
        &nbsp;</p>
</asp:Content>


