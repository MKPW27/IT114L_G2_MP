<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Payment-Management.aspx.cs" Inherits="IT114L_G2_MP.Payment_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\payment.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="package-container">
        <div class="center">
            <span class="search-label"><p>Enter Booking ID</p></span>
            <div class="search-container">
                <asp:TextBox runat="server" ID="book_id_text" placeholder=" Search Booking ID" CssClass="search-id"/> 
                <asp:Button runat="server" ID="search" text="Search" CssClass="search-button" OnClick="search_Click"/>
            </div>
        </div>

        <div class="center">
            <h3>Customer-Event Information</h3>
            <center><hr style="width:100%; margin-bottom: 20px;"/></center>
        </div>
        <div class="detail-container">
            <div class="item">
                Customer Name <br />
                <asp:TextBox runat="server" ID="name" Enabled="false" CssClass="detail-tb"/>
            </div>
            <div class="item">
                Event Name <br />
                <asp:TextBox runat="server" ID="eventname" Enabled="false" CssClass="detail-tb"/>
            </div>
        </div>

        <div class="detail-container">
            <div class="item">
                Event Date <br />
                <asp:TextBox runat="server" ID="eventdate" Enabled="false" CssClass="detail-tb"/>
            </div>
            <div class="item">
                Package <br />
                <asp:TextBox runat="server" ID="package" Enabled="false" CssClass="detail-tb"/>
            </div>
        </div>
        </div>
    <div class="package-container">
        <div class="center">
            <h3>Service Charge Breakdown</h3>
            <center>
                <hr style="width: 100%; margin-bottom: 20px;" />
            </center>
        </div>

        <div class="detail-container">
            <div class="item">
                Total Service Charge
                <br />
                <asp:TextBox runat="server" ID="total" Enabled="false" CssClass="detail-tb" />
            </div>
            <div class="item">
                Discount
                <br />
                <asp:DropDownList runat="server" ID="discount_ddl" CssClass="ddl">
                    <asp:ListItem Value="">None</asp:ListItem>
                    <asp:ListItem Value="0.05">Loyalty Discount (5%)</asp:ListItem>
                    <asp:ListItem Value="0.1">Partnership Discount (10%)</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="detail-container">
            <div class="item">
                Downpayment
                <br />
                <asp:TextBox runat="server" ID="downpayment" Enabled="false" CssClass="detail-tb" />
            </div>
            <div class="item">
                Balance
                <br />
                <asp:TextBox runat="server" ID="balance" Enabled="false" CssClass="detail-tb" />
            </div>
        </div>

        <center>
            <asp:Button runat="server" ID="paid" Text="Paid" Enabled="false" CssClass="paid" />
        </center>
    </div>

</asp:Content>
