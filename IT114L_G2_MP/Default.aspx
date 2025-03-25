<%@ Page Title="Login" Language="C#" MasterPageFile="~/Log_in.Master" AutoEventWireup="true" 
     CodeBehind="Default.aspx.cs" Inherits="IT114L_G2_MP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/login-signup.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Audio Visualizer -->
    <div class="audio-visualizer" id="audioVisualizer"></div>
    
    <div class="page-container">
        <!-- Branding Text -->
        <div class="branding-text">
            <h1>We Provide</h1>
            <h2>Top Quality</h2>
            <p>Light Sync Audio - Professional Sound & Lighting Solutions</p>
        </div>
        
        <div class="log-in-container">
            <div class="log-in">
                <div class="logo-section">
                    <!-- You can add your logo here -->
                    <!-- <img src="/img/logo.png" alt="Light Sync Audio Logo" /> -->
                </div>
                
                <h1>Welcome Back</h1>
                
                <label for="unameTB">Username</label>
                <asp:TextBox ID="unameTB" runat="server" CssClass="input" placeholder="Enter your username"></asp:TextBox>
                
                <label for="pwordTB">Password</label>
                <asp:TextBox ID="pwordTB" runat="server" TextMode="Password" CssClass="input" placeholder="Enter your password"></asp:TextBox>
                
                <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="btn" OnClick="Button1_Click" />

                <div class="signup">
                    <label>New User?</label>
                    <a href="SignUp.aspx">Create an account</a>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            // Create audio visualizer bars
            const visualizer = document.getElementById('audioVisualizer');
            const barCount = 60; // Number of bars

            for (let i = 0; i < barCount; i++) {
                const bar = document.createElement('div');
                bar.className = 'bar';

                // Random height for each bar
                const scale = (Math.random() * 0.8) + 0.2; // Between 0.2 and 1.0
                bar.style.setProperty('--scale', scale);

                // Random animation duration
                const duration = (Math.random() * 1.5) + 0.5; // Between 0.5 and 2.0 seconds
                bar.style.setProperty('--duration', duration + 's');

                // Random height
                const height = Math.floor(Math.random() * 100) + 20; // Between 20px and 120px
                bar.style.height = height + 'px';

                visualizer.appendChild(bar);
            }
        });
    </script>
</asp:Content>
