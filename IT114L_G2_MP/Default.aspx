<%@ Page Title="" Language="C#" MasterPageFile="~/Log_in.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT114L_G2_MP.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\login-signup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-container">
        <div class="log-in">
            <h1>Login To Your Account</h1>
            <asp:TextBox ID="unameTB" runat="server" Placeholder="Username" CssClass="textbox"></asp:TextBox><br />
            <asp:TextBox ID="pwordTB" runat="server" TextMode="Password" Placeholder="Password" CssClass="textbox"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="button" OnClick="Button1_Click" />
        </div>
        <div class="sign-up">
            <h2>New here?</h2>
            <h4>Book your events now by signing up!</h4>
            <a href="SignUp.aspx">Sign Up</a><br />
        </div>
    </div>
</asp:Content>
