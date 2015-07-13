<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="student-verification.aspx.cs" Inherits="admin_student_verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: 22pt;
            margin-bottom: 2px;
        }
        .auto-style3 {
            text-align: center;
            font-size: large;
            margin-bottom: 2px;
        }
        .auto-style4 {
            text-align: center;
            font-size: medium;
            margin-bottom: 2px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="auto-style3">
        <strong>Students Verification</strong></p>
    <hr />
   <p class="auto-style4">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="sid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
           <AlternatingRowStyle BackColor="#CCCCCC" />
           <Columns>
               <asp:CommandField ShowEditButton="True" />
               <asp:BoundField DataField="sid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="sid" />
               <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
               <asp:BoundField DataField="regno" HeaderText="Roll No" SortExpression="regno" />
               <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
               <asp:BoundField DataField="batch" HeaderText="Batch" SortExpression="batch" />
               <asp:CheckBoxField DataField="emailverification" HeaderText="Email Status" SortExpression="emailverification" />
               <asp:CheckBoxField DataField="verification" HeaderText="Verify Status" SortExpression="verification" />
           </Columns>
           <FooterStyle BackColor="#CCCCCC" />
           <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
           <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="Gray" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#383838" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [students] ([name], [regno], [course], [batch], [emailverification], [verification]) VALUES (@name, @regno, @course, @batch, @emailverification, @verification)" SelectCommand="SELECT [sid], [name], [regno], [course], [batch], [emailverification], [verification] FROM [students]" UpdateCommand="UPDATE [students] SET [name] = @name, [regno] = @regno, [course] = @course, [batch] = @batch, [emailverification] = @emailverification, [verification] = @verification WHERE [sid] = @sid">
           <DeleteParameters>
               <asp:Parameter Name="sid" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="name" Type="String" />
               <asp:Parameter Name="regno" Type="String" />
               <asp:Parameter Name="course" Type="String" />
               <asp:Parameter Name="batch" Type="String" />
               <asp:Parameter Name="emailverification" Type="Boolean" />
               <asp:Parameter Name="verification" Type="Boolean" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="name" Type="String" />
               <asp:Parameter Name="regno" Type="String" />
               <asp:Parameter Name="course" Type="String" />
               <asp:Parameter Name="batch" Type="String" />
               <asp:Parameter Name="emailverification" Type="Boolean" />
               <asp:Parameter Name="verification" Type="Boolean" />
               <asp:Parameter Name="sid" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
    </p>
</asp:Content>

