<%@ Page Title="" Language="C#" MasterPageFile="~/Log_in.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="IT114L_G2_MP.SignUp" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="css\signup.css" rel="stylesheet" />
 
     <!--REFRESH PAGE EVERY SEC-->
     <meta http-equiv="refresh" content="1">
 
 </asp:Content>
 
 
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="signup-container">
         <h1>Sign Up</h1>
 
         <!--------------------------------------------| EMAIL -->
         Email:
         <br />
         &nbsp;<asp:TextBox ID="tb_email" runat="server" TextMode="Email" CssClass="su_Email"></asp:TextBox><br />
 
 
         <!--------------------------------------------| USERNAME -->
         Username:
         <br />
         &nbsp;<asp:TextBox ID="tb_username" runat="server" CssClass="su_Username"></asp:TextBox><br />
 
         <!--------------------------------------------| PASSWORD -->
         Password: 
         <br />
         <asp:TextBox ID="tb_password" runat="server" CssClass="su_Password"></asp:TextBox><br />
 
         <!--------------------------------------------| CONFIRM PASSWORD -->
         Confirm Password: 
         <br />
         <asp:TextBox ID="tb_confirm_password" runat="server" CssClass="su_CfPassword"></asp:TextBox><br />
 
 
         <!--------------------------------------------| FIRST NAME -->
         First Name:
         <br />
         &nbsp;<asp:TextBox ID="tb_fname" runat="server" CssClass="su_FirstName" Height="19px" Width="420px"></asp:TextBox><br />
 
         <!--------------------------------------------| LAST NAME -->
         Last Name: 
         <br />
         <asp:TextBox ID="tb_lastname" runat="server" CssClass="su_LastName" Width="423px"></asp:TextBox><br />
     
 
         <!--------------------------------------------| COMPANY NAME -->
         Company Name:
         <br />
         &nbsp;<asp:TextBox ID="tb_comp_name" runat="server" CssClass="su_CompName"></asp:TextBox><br />
 
         <!--------------------------------------------| PHONE NUMBER -->
         Phone:
         <br />
         &nbsp;<asp:TextBox ID="tb_phone" runat="server" MaxLength="11" TextMode="Phone" CssClass="su_Phone"></asp:TextBox><br />
 
         <!--------------------------------------------| BUSINESS NUMBER -->
         Business Number: 
         <br />
         <asp:TextBox ID="tb_buss_phone" runat="server" MaxLength="11" TextMode="Phone" CssClass="su_BusNum"></asp:TextBox><br />
 
         <br />
         <br />
 
         <!--------------------------------------------| CREATE ACCOUNT BUTTON -->
         <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" CssClass="su_CreateAccountBtn" /><br />
         <br />
 
         <!--------------------------------------------| RETURN TO LOGIN -->
         <a href="Default.aspx" class="return-link">Already Have an Account?</a>
         <br />
     </div>
 </asp:Content>