<%@ Page Title="" Language="C#" MasterPageFile="~/Log_in.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="IT114L_G2_MP.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="Default.aspx">Return to Log-In</a>
    <h1>Create an Account</h1>
    First Name: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    Last Name: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    Username: <asp:TextBox ID="tb_username" runat="server"></asp:TextBox><br />
    Password: <asp:TextBox ID="tb_password" runat="server"></asp:TextBox><br />
    Confirm Password: <asp:TextBox ID="tb_confirm_password" runat="server"></asp:TextBox><br />
    Email: <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
    Phone: <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
    Business Num: <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
    Company Name: <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" />
</asp:Content>
