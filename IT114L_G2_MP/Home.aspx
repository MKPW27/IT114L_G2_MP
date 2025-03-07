<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IT114L_G2_MP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/homepagecss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="banner-container">
        <asp:Image runat="server" ImageUrl="~/img/home-banner.jpg" CssClass="home-banner" />
    
        <div class="overlay-content">
            <asp:Image runat="server" ImageUrl="~/img/front-banner-logo.png" CssClass="home-banner-logo"/>
            <asp:Button runat="server" Text="Book Now" CssClass="banner-button" PostBackUrl="~/Booking.aspx" />
        </div>
    </div>



    <div class="fill"></div> <!-- filler remove later -->

</asp:Content>
