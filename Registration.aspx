<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 36%;
        }

        .auto-style3 {
            width: 172px;
        }

        #Password2 {
            width: 140px;
        }

        #Password1 {
            width: 140px;
        }

        .auto-style4 {
            text-align: right;
            width: 118px;
        }

        .auto-style5 {
            height: 32px;
        }

        .auto-style8 {
            text-align: right;
            width: 118px;
            height: 27px;
        }

        .auto-style9 {
            width: 172px;
            height: 27px;
        }

        .auto-style10 {
            text-align: right;
            width: 118px;
            height: 28px;
        }

        .auto-style11 {
            width: 172px;
            height: 28px;
        }
        .auto-style12 {
            width: 38%;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 align="center">Student Registration</h1>
    <table align="center" cellspacing="4" class="auto-style12">
        <tr>
            <td class="auto-style10">Name: </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox5" runat="server" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email ID:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email Id Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mobile No: </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mob No. Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mobile No. must be of 10 digits" ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Roll No: </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Roll No. Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Retype Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Retype Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Retype password and password not matched" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Course:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="80px">
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
            <td class="auto-style4">Batch: </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="Batch Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="86px" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

