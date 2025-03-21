<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Payment-Management.aspx.cs" Inherits="IT114L_G2_MP.Payment_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\payment.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="payment-details-container">
        <div class="center">
            <span class="search-label">Enter Booking ID</span><br />
            <asp:TextBox runat="server" ID="book_id_text" placeholder="Search Booking ID" CssClass="search-id"/> <asp:Button runat="server" ID="search" text="Search" CssClass="search-button"/>
            <br />
        </div>

        <div class="center">
            <h3>Customer-Event Information</h3>
            <center><hr style="width:70%; margin-bottom: 20px;"/></center>
        </div>
        <div class="detail-container">
            <div class="item">
                First Name <br />
                <asp:TextBox runat="server" ID="TextBox1" Enabled="false" CssClass="detail-tb"/>
            </div>
            <div class="item">
                Last Name <br />
                <asp:TextBox runat="server" ID="TextBox2" Enabled="false" CssClass="detail-tb"/>
            </div>
        </div>

        <div class="detail-container">
            <div class="item">
                Event Name <br />
                <asp:TextBox runat="server" ID="TextBox3" Enabled="false" CssClass="detail-tb"/>
            </div>
            <div class="item">
                Date <br />
                <asp:TextBox runat="server" ID="TextBox4" Enabled="false" CssClass="detail-tb"/>
            </div>
        </div>

        <div class="center">
            <h3>Service Charge Breakdown</h3>
            <center><hr style="width:70%; margin-bottom: 20px;"/></center>
        </div>

        <div class="detail-container">
            <div class="item">
                Total Service Charge <br />
                <asp:TextBox runat="server" ID="TextBox5" Enabled="false" CssClass="detail-tb"/>
            </div>
            <div class="item">
                Discount <br />
                <asp:DropDownList runat="server" ID="discount_ddl" CssClass="ddl">
                    <asp:ListItem Value="0">None</asp:ListItem>
                    <asp:ListItem Value="1">Loyalty Discount (5%)</asp:ListItem>
                    <asp:ListItem Value="2">Partnership Discount (10%)</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="detail-container">
            <div class="item">
                Downpayment <br />
                <asp:TextBox runat="server" ID="TextBox6" Enabled="false" CssClass="detail-tb"/>
            </div>
            <div class="item">
                Balance <br />
                <asp:TextBox runat="server" ID="TextBox7" Enabled="false" CssClass="detail-tb"/>
            </div>
        </div>

        <center>
            <asp:Button runat="server" ID="paid" Text="Paid" Enabled="false" CssClass="paid"/>
        </center>
    </div>
</asp:Content>
