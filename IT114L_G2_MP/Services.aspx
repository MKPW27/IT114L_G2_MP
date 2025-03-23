﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="IT114L_G2_MP.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="Css/servicecss.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  
    <section class="hero-section">
        <h1>OUR SERVICES</h1>
    </section>

        <!-- Services Section -->
    <div class="container services-container">
        <!-- Lighting Service -->
        <div class="service-item">
            <!-- Bootstrap Carousel for Lighting -->
            <div id="lightingCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1492684223066-81342ee5ff30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Lighting service 1">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1516280440614-37939bbacd81?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Lighting service 2">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Lighting service 3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#lightingCarousel"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#lightingCarousel"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <div class="service-content">
                <h2>Lighting</h2>
                <p>Professional lighting solutions for concerts, events, and special occasions. Our state-of-the-art
                    equipment ensures your event shines with the perfect ambiance. We provide customized lighting
                    designs to match your event theme and create unforgettable experiences.</p>
            </div>
        </div>

        <!-- Sound Service -->
        <div class="service-item">
            <div class="service-content">
                <h2>Sound</h2>
                <p>High-quality sound systems for crystal clear audio at any venue. Our professional equipment and
                    technicians ensure perfect acoustics for your event. From small gatherings to large concerts, we
                    have the right audio solution to make your event sound amazing.</p>
            </div>
            <!-- Bootstrap Carousel for Sound -->
            <div id="soundCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1520523839897-bd0b52f945a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Sound equipment 1">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Sound equipment 2">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Sound equipment 3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#soundCarousel"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#soundCarousel"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>

    <!-- Special Events Section -->
    <section class="special-events">
        <div class="container">
            <h2>Special Events</h2>
            <!-- Bootstrap Carousel for Special Events with Indicators -->
            <div id="specialEventsCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#specialEventsCarousel" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#specialEventsCarousel" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#specialEventsCarousel" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#specialEventsCarousel" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                    <button type="button" data-bs-target="#specialEventsCarousel" data-bs-slide-to="4"
                        aria-label="Slide 5"></button>
                    <button type="button" data-bs-target="#specialEventsCarousel" data-bs-slide-to="5"
                        aria-label="Slide 6"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Special event 1">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1429962714451-bb934ecdc4ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Special event 2">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Special event 3">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1492684223066-81342ee5ff30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Special event 4">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Special event 5">
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                            class="d-block w-100" alt="Special event 6">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#specialEventsCarousel"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#specialEventsCarousel"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>
</asp:Content>
