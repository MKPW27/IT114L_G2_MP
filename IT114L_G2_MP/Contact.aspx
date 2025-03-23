<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="IT114L_G2_MP.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/contactcss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <section class="contact-section">
    <div class="container">
        <h2>Contact us at</h2>
        <div class="contact-cards">

            <div class="contact-card">
                <h3>Customer Care</h3>
                <div class="contact-item">
                    <i class="bi bi-telephone-fill"></i>
                    <span>+63 917 248 2837</span>
                </div>
                <div class="contact-item">
                    <i class="bi bi-envelope-fill"></i>
                    <span>lightsynaudio@gmail.com</span>
                </div>
            </div>

            <div class="contact-card">
                <h3>Office</h3>
                <p>Unit 203, ABC Business Center</p>
                <p>National Highway, Brgy.</p>
                <p>Balibago Santa Rosa, Laguna</p>
                <p>4026 Philippines</p>
            </div>
        </div>
    </div>
</section>
</asp:Content>
