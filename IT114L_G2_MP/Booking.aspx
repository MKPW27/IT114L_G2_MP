<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="IT114L_G2_MP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/bookingcss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="booking-con">

    <div class="evt-container-line">
        <h3>Event Details</h3>
    </div>
    <div class="container">
        <div class="booking-input-container">
            <div class="booking-input">
                <p>Event Name</p>
                <asp:TextBox ID="name" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="booking-input">
                <p>Number of Attendees</p>
                <asp:TextBox ID="numAttendees" runat="server" CssClass="input"></asp:TextBox>
            </div>
        </div>

        <div class="booking-input-container">
            <div class="booking-input">
                <p>Event Type</p>
                <asp:TextBox ID="evtType" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="booking-input">
                <p>Event Date</p>
                <asp:TextBox ID="evtDate" runat="server" CssClass="input"></asp:TextBox>
            </div>
        </div>

    </div>

    <div class="evt-container-line">
        <h3>Event Location</h3>
    </div>
    <div class="container">
        <div class="booking-input-container">
            <div class="booking-input">
                <p>Region</p>
                <asp:TextBox ID="region" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="booking-input">
                <p>City</p>
                <asp:TextBox ID="city" runat="server" CssClass="input"></asp:TextBox>
            </div>
        </div>

        <div class="booking-input-container">
            <div class="booking-input">
                <p>Province</p>
                <asp:TextBox ID="province" runat="server" CssClass="input"></asp:TextBox>
            </div>
            <div class="booking-input">
                <p>Barangay</p>
                <asp:TextBox ID="barangay" runat="server" CssClass="input"></asp:TextBox>
            </div>
        </div>

        <div class="booking-input-container">
            <div class="booking-input">
                <p>Address</p>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input" ></asp:TextBox>
            </div>
        </div>


    </div>




</div>
</asp:Content>
