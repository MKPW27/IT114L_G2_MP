<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IT114L_G2_MP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .image-container {
            position: relative;
            width: 100%;
        }
        .image-container img {
            width: 100%;
            display: block;
        }
        .text-overlay {
            position: absolute;
            top: 20%;
            left: 10%;
            color: white;
            font-family: 'Poppins', sans-serif;
            background-color: rgba(0, 0, 0, 0);
            padding: 20px;
            border-radius: 10px;
            max-width: 800px;
        }
        h1 { font-size: 36px; margin: 0; } /* Main heading */
        h2 { font-size: 24px; margin: 10px 0; } /* Subheading */
        h3 { font-size: 20px; margin: 15px 0 10px; } /* Mission/Vision headings */
        hr { border: 1px solid white; margin: 20px 0; } /* Horizontal line styling */
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="image-container">
        <asp:Image ID="banner" runat="server" ImageUrl="~/img/inner-banner 1.jpg" />
        <div class="text-overlay" style="border-style: none">
            <!-- Exact structure from your image -->
            <h1>About Light Sync</h1>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Audio</h1>
            <p style="font-weight: bold; margin: 10px 0;">Shimyshimyyeshimyoshimiyoh</p>
            
           
        </div>
    </div>
    <div>

        <asp:Image ID="Image3" runat="server" Height="175px" Width="245px" />
        <asp:Image ID="Image4" runat="server" Height="181px" Width="247px" />

    </div>
</asp:Content>