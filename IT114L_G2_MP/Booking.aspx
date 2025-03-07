<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="IT114L_G2_MP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/bookingcss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="evt-container">
            <h3>Event Details</h3>
        </div>

        <div class="evt-container">
            <h3>Event Location</h3>
        </div>

        <div class="evt-container">
            <h3>Service Requirements</h3>
        </div>

        <div class="evt-container">
            <h3>Terms and Conditions</h3>
        </div>
    </div>
</asp:Content>
