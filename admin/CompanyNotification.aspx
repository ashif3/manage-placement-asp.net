<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="CompanyNotification.aspx.cs" Inherits="admin_CompanyNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: 18px;
            margin-top: 12px;
            margin-bottom: 0px;
            height: 41px;
            width: 224px;
        }

        .auto-style2 {
            text-align: left;
            font-size: medium;
            margin-top: 8px;
            margin-bottom: 0px;
        }
        #TextArea1 {
            width: 810px;
            height: 425px;
        }
        .auto-style4 {
            font-size: large;
            text-align: center;
            margin-bottom: 7px;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            font-size: medium;
            margin-top: 10px;
        }
        .auto-style7 {
            font-size: medium;
            margin-top: 10px;
            margin-bottom: 5px;
        }
        .auto-style8 {
            font-size: medium;
            margin-top: 10px;
            margin-bottom: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4">
        <strong>Company Notifications&nbsp; for selected Students:</strong></p>
    <hr />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <p>
        <span class="auto-style5">Select Course:</span>
        <asp:DropDownList ID="course" runat="server" Height="22px" Width="70px">
            <asp:ListItem>CSE</asp:ListItem>
            <asp:ListItem>ECE</asp:ListItem>
            <asp:ListItem>MECH</asp:ListItem>
            <asp:ListItem>EEE</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>CIV</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5">Passout Year:
        <asp:TextBox ID="year" runat="server" Width="96px">2014</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="year" ErrorMessage="Passout Year" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="year" ErrorMessage="Year must be valid" ForeColor="Red" ValidationExpression="\d{4}">*</asp:RegularExpressionValidator>
        </span>
    </p>
    <p class="auto-style7">
        <strong>Set Criteria</strong> (Enter 0 if no criteria):</p>
    <p class="auto-style8">
        10th:
        <asp:TextBox ID="tenth" runat="server" Width="80px">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tenth" ErrorMessage="10th percent required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tenth" ErrorMessage="percent must be an integer" ForeColor="Red" ValidationExpression="\d{1,3}">*</asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12th:
        <asp:TextBox ID="twelveth" runat="server" Width="80px">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="twelveth" ErrorMessage="12th percent required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="twelveth" ErrorMessage="percent must be an integer" ForeColor="Red" ValidationExpression="\d{1,3}">*</asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation:
        <asp:TextBox ID="graduation" runat="server" Width="80px">0</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="graduation" ErrorMessage="Graduation percent required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="graduation" ErrorMessage="percentage must be valid integer" ForeColor="Red" ValidationExpression="\d{1,3}">*</asp:RegularExpressionValidator>
    </p>
    <p class="auto-style6">
        <asp:Button ID="filter" runat="server" Text="Filter Students" OnClick="filter_Click" />
    </p>
    <p class="auto-style6">
       <asp:GridView ID="stulist" CellPadding="3" runat="server" CssClass="gvtable" Width="800" AutoGenerateColumns="false" AllowPaging="true" PageSize="15"> <columns> <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="true" SortExpression="name" /> <asp:BoundField DataField="regno" HeaderText="Roll No" ReadOnly="true" SortExpression="regno" /> <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="true" SortExpression="regno" /> </columns> <headerstyle backcolor="#333333" forecolor="white" /> </asp:GridView></p>
    <p class="auto-style6">
        <asp:TextBox ID="TextBox1" runat="server" Height="451px" TextMode="MultiLine" Width="810px"></asp:TextBox>
    </p>
    <p class="auto-style6">
        <asp:Button ID="Button1" runat="server" Text="Send Newsletter" />
    </p>
    <p class="auto-style6">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
</asp:Content>

