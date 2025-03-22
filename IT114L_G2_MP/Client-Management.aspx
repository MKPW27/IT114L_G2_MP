<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Client-Management.aspx.cs" Inherits="IT114L_G2_MP.Client_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/client.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-container">
        <h3 class="header-title">My Clients</h3>
        <div class="form-container">
            <asp:GridView ID="client_table" runat="server" AutoGenerateColumns="True" CssClass="gridview" DataKeyNames="ID" OnRowCommand="Select_Row">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Edit"/>
                </Columns>
            </asp:GridView>
        </div>


        <asp:Label ID="No_Client" runat="server" Text=""></asp:Label>
    </div>

    <div>
        <h3>Verify Account</h3>
        ID: <asp:TextBox ID="acc_id_tb" runat="server"></asp:TextBox> <br />
        Name: <asp:TextBox ID="acc_name_tb" runat="server"></asp:TextBox> <br />
        <asp:RadioButtonList ID="verification" runat="server">
            <asp:ListItem Value="Verified">Verified</asp:ListItem>
            <asp:ListItem Value="Unverified">Unverified</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="save_btn" runat="server" Text="Save" OnClick="save_btn_Click" />
        <asp:Button ID="clear_btn" runat="server" Text="Clear" OnClick="clear_btn_Click" />
    </div>
</asp:Content>
