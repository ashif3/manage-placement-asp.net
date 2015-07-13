<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="newsletter-send.aspx.cs" Inherits="admin_newsletter_send" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: 18px;
            text-align: left;
            margin-top: 10px;
            margin-bottom: 0px;
        }
        #TextArea1 {
            width: 813px;
            text-align: left;
            height: 425px;
        }
        .auto-style2 {
            font-size: 18px;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            font-size: large;
            text-align: center;
            margin-bottom: 6px;
        }
        .auto-style5 {
            font-size: large;
            text-align: left;
            margin-bottom: 6px;
            margin-top: 8px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="auto-style4">
        <strong>Newsletter for all Students:</strong></p>
    <hr />
    <p class="auto-style5">
        <asp:TextBox ID="TextBox1" runat="server" Height="450px" TextMode="MultiLine" Width="812px"></asp:TextBox>
    </p>
    <p class="auto-style5">
        <asp:Button ID="Button1" runat="server" Text="Send Newsletter" OnClick="Button1_Click" />
    </p>
    <p class="auto-style5">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    

    
</asp:Content>

