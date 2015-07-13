<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Log-in.aspx.cs" Inherits="Log_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 27%;
            height: 182px;
        }

        .auto-style2 {
            height: 28px;
        }

        .auto-style3 {
            height: 26px;
        }

        #Password1 {
            width: 195px;
            height: 22px;
        }

        #Button1 {
            width: 82px;
        }

        #Text1 {
            width: 195px;
            height: 22px;
        }

        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            width: 28%;
            height: 182px;
            text-decoration: none;
        }
        .auto-style6 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 align="center">Log-In Panel</h1>
    <table align="center" class="auto-style5">
        <tr>
            <td align="left">
                <asp:Label ID="Emailid" runat="server" Text="Email ID"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailbox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Invalid Email-id</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="emailbox" runat="server" Height="22px" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailbox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="passwordbox" runat="server" Height="22px" Width="195px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordbox" ErrorMessage="RequiredField" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Text="Login" ValidationGroup="login" OnClick="Button1_Click" />
                <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">

                <a href="Registration.aspx">New Student Registration</a></td>
        </tr>
    </table>
</asp:Content>

