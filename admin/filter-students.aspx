<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="filter-students.aspx.cs" Inherits="admin_filter_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: 18px;
            margin-top: 12px;
            margin-bottom: 0px;
            height: 30px;
            width: 265px;
        }

        .auto-style2 {
            text-align: left;
            font-size: medium;
            margin-top: 8px;
            margin-bottom: 0px;
        }
        .newStyle1 {
            padding-left: 200px;
        }
        .auto-style3 {
            text-align: center;
            font-size: large;
            margin-top: 8px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            text-align: left;
            font-size: medium;
            margin-top: 8px;
            margin-bottom: 0px;
        }
        .auto-style5 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <p class="auto-style3">
        <strong>Filter Students</strong></p>
    <hr />
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
    <p>
        Select Course: 
        <asp:DropDownList ID="course" runat="server">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>MECH</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>CIV</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Passout Year:
        <asp:TextBox ID="year" runat="server" Width="100px">2014</asp:TextBox>
        <span class="auto-style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="year" ErrorMessage="Passout Year" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="year" ErrorMessage="Year must be valid" ForeColor="Red" ValidationExpression="\d{4}">*</asp:RegularExpressionValidator>
        </span>
    </p>
    <p class="auto-style4">
        <strong>Set Criteria</strong> (Enter 0 if no criteria):</p>
    <p class="auto-style4">
        10th:
        <asp:TextBox ID="tenth" runat="server" Width="80px">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tenth" ErrorMessage="10th percent required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tenth" ErrorMessage="percent must be an integer" ForeColor="Red" ValidationExpression="\d{1,3}">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12th:
        <asp:TextBox ID="twelveth" runat="server" Width="81px">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="twelveth" ErrorMessage="12th percent required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="twelveth" ErrorMessage="percent must be an integer" ForeColor="Red" ValidationExpression="\d{1,3}">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation:
        <asp:TextBox ID="graduation" runat="server" Width="81px">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="graduation" ErrorMessage="Graduation percent required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="graduation" ErrorMessage="percentage must be valid integer" ForeColor="Red" ValidationExpression="\d{1,3}">*</asp:RegularExpressionValidator>
    </p>
    <p class="auto-style4">
        <asp:Button ID="filter" runat="server" Text="Filter Students" OnClick="filter_Click" />
    </p>
    <p class="auto-style4">
        <asp:GridView ID="stulist" CellPadding="3" runat="server" CssClass="gvtable" Width="800" AutoGenerateColumns="false" AllowPaging="true" PageSize="15"> <columns> <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="true" SortExpression="name" /> <asp:BoundField DataField="regno" HeaderText="Roll No" ReadOnly="true" SortExpression="regno" /> <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="true" SortExpression="regno" /> </columns> <headerstyle backcolor="#333333" forecolor="white" /> </asp:GridView> <asp:Button ID="excelExport" runat="server" Text="Download in Excel" OnClick="excelExport_Click" ValidationGroup="filter" />
        <asp:Label ID="dstatus" runat="server"></asp:Label>
    </p>
        
</asp:Content>

