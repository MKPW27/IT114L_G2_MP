<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IT114L_G2_MP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/about.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="banner-container">
        <asp:Image runat="server" ImageUrl="~/img/about-banner.jpg" CssClass="home-banner"/>
        <div class="overlay-text">
            <h3>About Light Sync Audio</h3>
            <p>Shimyshimyye shimyo shimiyohh</p>
        </div>

        <div class="overlay-content">
            
            <div class="cards-container">
                
                <div class="card mission">
                    <div class="evt-container-line"></div>
                    <h3>MISSION</h3>
                    <p>To provide high-quality, reliable, and innovative light and sound solutions that enhance events and create unforgettable experiences.</p>
                    <div class="evt-container-line"></div>
                </div>
                <div class="card vision">
                    <div class="evt-container-line line-vision"></div>
                    <h3>VISION</h3>
                    <p>To be the leading provider of cutting-edge lighting and sound services, transforming every event into a spectacular and immersive experience.</p>
                    <div class="evt-container-line line-vision"></div>
                </div>
                <div class="evt-container-line"></div>
            </div>
        </div>
    </div>

    <div class="body-content">
        <h3>Our <span class="red">History</span></h3>
        <p>Before the arrival of European explorers, the Philippine archipelago was home to numerous indigenous tribes and kingdoms. These societies, such as the Rajahnates of Cebu and Butuan, the Sultanates of Sulu and Maguindanao, and the Kingdom of Tondo, had developed sophisticated cultures, trade networks, and political structures. Early Filipinos engaged in trade with neighboring regions such as China, India, and the Middle East.</p>
    </div>

    <div class="photo-container">
        <div class="photo-grid">
            <asp:Image runat="server" ImageUrl="~/img/About1.png" CssClass="big-photo"/>
            <div class="small-photos">
                <asp:Image runat="server" ImageUrl="~/img/About2.png"/>
                <asp:Image runat="server" ImageUrl="~/img/About3.png"/>
            </div>
        </div>
    </div>

    <div class="timeline-entry">
        <asp:Image runat="server" ImageUrl="~/img/timeline-img1.png" CssClass="timeline-img"/>
        <div class="timeline-content">
            <h3>2012–2014</h3>
            <p>
               A week before the school year officially starts, he pondered on how to earn extra to be able to improve his entertainment room. During the previous semester, some of his friends in UP Diliman, especially his orgmates in UP ALCHEMES started borrowing his projector for class presentations and other events. It was a Eureka! moment. Why not turn a not so good thing to a good thing, turning luxury into something profitable. On June 1, 2012, WABS Printing & Equipment rentals was launched on Facebook. The initial list of services includes rentals of his existing bedroom equipment as well as printing paper works for students and promotional materials for organizations. By connecting personally to the clients, he had an overview of what students and organizations need. This gave the enterprise an idea on which equipment to be acquired.
            </p>
        </div>
    </div>

    <div class="timeline-entry">
        <asp:Image runat="server" ImageUrl="~/img/timeline-img2.png" CssClass="timeline-img"/>
        <div class="timeline-content">
            <h3>2014-2019</h3>
            <p>
               On October 30, 2012, the trade name WABS Lights and Sounds was registered with the DTI. The enterprise then went through ups and downs due to bad investments, logistical problems and lack of funding. By committing to the core values of Service, Humility, Professionalism and Excellence, clients kept on coming back. On January 30, 2014, against all odds at the age of 22, he Officially Registered WABS Lights and Sounds on the Barangay, Municipal and National levels. Soon after, he acquired a new centre of operations in Diliman, Quezon City right at the heart of Metro Manila.
            </p>
        </div>
    </div>

        <div class="timeline-entry">
        <asp:Image runat="server" ImageUrl="~/img/timeline-img2.png" CssClass="timeline-img"/>
        <div class="timeline-content">
            <h3>Pressent</h3>
            <p>
              Now on its 8th year of operation, the enterprise continues to provide affordable quality service while improving both equipment and technical expertise. All these to be the nation’s number one choice in providing the latest in the events industry.
            </p>
        </div>
    </div>


    <div class="fill"></div>

</asp:Content>