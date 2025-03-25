<%@ Page Title="" Language="C#" MasterPageFile="~/Log_in.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="IT114L_G2_MP.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\signup.css" rel="stylesheet" />

    <!--REFRESH PAGE EVERY SEC-->
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="refresh" content="3">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="signup-container">
        <h1>Sign Up</h1>

        <!--------------------------------------------| EMAIL -->
        <label>Email</label>
        <br />
        <asp:TextBox ID="tb_email" runat="server" TextMode="Email" CssClass="su_Email" width="96%"></asp:TextBox><br />

        <!--------------------------------------------| USERNAME -->
        <br />
        <label>Username</label>
        <br />
        <asp:TextBox ID="tb_username" runat="server" CssClass="su_Username" width="96%"></asp:TextBox><br />

        <!--------------------------------------------| PASSWORD -->
        <br />
        <label>Password</label>
        <br />
        <asp:TextBox ID="tb_password" runat="server" CssClass="su_Password" width="96%"></asp:TextBox><br />

        <!--------------------------------------------| CONFIRM PASSWORD -->
        <br />
        <label>Confirm Password</label>
        <br />
        <asp:TextBox ID="tb_confirm_password" runat="server" CssClass="su_CfPassword" width="96%"></asp:TextBox><br />

         <!--------------------------------------------| FIRST AND LAST NAME -->
        <table class="form-table">
            <tr>
                <!-- First Name -->
                <td width="50%">
                    <br />
                    <label CssClass="su_FirstNameLabel">First Name</label><br />
                    <asp:TextBox ID="tb_fname" runat="server" CssClass="su_FirstName" width="90%"></asp:TextBox><br />
                </td>

                <!-- Last Name -->
                <td width="50%">
                    <br />
                    <asp:Label ID="lbl_fname" runat="server" CssClass="su_LastNameLabel" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="tb_lastname" runat="server" CssClass="su_LastName" width="90%"></asp:TextBox><br />
                </td>
            </tr>
        </table>

    

        <!--------------------------------------------| COMPANY NAME -->
        <br />
        <label>Company Name</label>
        <br />
        <asp:TextBox ID="tb_comp_name" runat="server" CssClass="su_CompName" width="96%"></asp:TextBox><br />

        <!--------------------------------------------| PHONE NUMBER -->
        <br />
        <label>Phone</label>
        <br />
        <asp:TextBox ID="tb_phone" runat="server" MaxLength="11" TextMode="Phone" CssClass="su_Phone" width="96%"></asp:TextBox><br />

        <!--------------------------------------------| BUSINESS NUMBER -->
        <br />
        <label>Business Number</label>
        <br />
        <asp:TextBox ID="tb_buss_phone" runat="server" MaxLength="11" TextMode="Phone" CssClass="su_BusNum" width="96%"></asp:TextBox><br />

        <!--------------------------------------------| CREATE ACCOUNT BUTTON -->
        <div class="Div_for_button_na_hindi_macenter">
        <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" CssClass="su_CreateAccountBtn" /><br />
        <br />
        </div>

        <!--------------------------------------------| RETURN TO LOGIN -->
        <a href="Default.aspx" class="return-link">Already Have an Account?</a>
        <br />
    </div>
</asp:Content>
