<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="add-placement-record.aspx.cs" Inherits="admin_add_placement_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-top: 9px;
            margin-bottom: 3px;
        }
        .auto-style2 {
            text-align: center;
            font-size: large;
            margin-top: 6px;
            margin-bottom: 3px;
        }
        .auto-style3 {
            width: 39%;
        }
        .auto-style4 {            text-align: center;
            height: 31px;
        }
        .auto-style5 {            height: 25px;
            text-align: center;
        }
        .auto-style6 {
            width: 114px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="auto-style2">
        <strong>Add Placement Record</strong></p>
    <hr />
    <table align="center" cellspacing="3" class="auto-style3">
        <tr>
            <td class="auto-style6">Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Course:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="71px">
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>MECH</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>CIV</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Batch:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Batch Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid year" ForeColor="Red" ValidationExpression="\d{4}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Company:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Company field required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Email:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email Address Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Email-id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mobile:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Mob No. required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Must be of 10 digits" ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>

</asp:Content>

