<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="IT114L_G2_MP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/bookcss.css" rel="stylesheet" />
    
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
                    <p>Event Type</p>
                    <asp:TextBox ID="evtType" runat="server" CssClass="input"></asp:TextBox>
                </div>
            </div>

            <div class="booking-input-container">
                <div class="booking-input">
                    <p>Number of Attendees</p>
                    <asp:TextBox ID="numAttendees" runat="server" CssClass="input" TextMode="Number"></asp:TextBox>
                </div>
                <div class="booking-input">
                    <p>Event Date</p>
                     <asp:TextBox ID="bookDate" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
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

            <div class="wide-booking-input">
                <p>Address</p>
                <asp:TextBox ID="address" runat="server" CssClass="wide-input" ></asp:TextBox>
            </div>

        </div>
        
        <div class="evt-container-line">
            <h3>Create Your Package</h3>
        </div>

        <div class="container">

            <div class ="booking-container-a">
                

                <div class="colm">
                    <h3>Lights</h3> <br />
                    <center><hr style="width: 90%; margin-bottom: 10px;"/> </center>

                    <div class="items">
                        Moving Heads <asp:TextBox runat="server" ID="mh" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        PAR Lights <asp:TextBox runat="server" ID="TextBox1" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Blinders <asp:TextBox runat="server" ID="TextBox2" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Follow Spot <asp:TextBox runat="server" ID="TextBox3" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Striplight <asp:TextBox runat="server" ID="TextBox4" CssClass="textbox" TextMode="Number"/>
                    </div>

                </div>
                <div class="colm">
                    <h3>Sounds</h3> <br />
                    <center><hr style="width: 90%; margin-bottom: 10px;"/> </center>

                    <div class="items">
                        Subwoofers <asp:TextBox runat="server" ID="TextBox5" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        House Speakers <asp:TextBox runat="server" ID="TextBox6" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Monitors <asp:TextBox runat="server" ID="TextBox7" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Wired Microphone <asp:TextBox runat="server" ID="TextBox8" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Wireless Microphone <asp:TextBox runat="server" ID="TextBox9" CssClass="textbox" TextMode="Number"/>
                    </div>
                    <div class="items">
                        Backline <asp:DropDownList ID="backline_type" runat="server" CssClass="ddl">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Basic</asp:ListItem>
                                    <asp:ListItem Value="2">Pro</asp:ListItem>
                                 </asp:DropDownList>
                    </div>

                </div>
        </div>
                <div class="colm2">
                    <h3>Others</h3> <br />
                    <center><hr style="width: 90%; margin-bottom: 10px;"/> </center>

                    <div class="items2">
                        LED Wall    <asp:DropDownList ID="led_wall_type" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                        <asp:ListItem Value="1">Small</asp:ListItem>
                                        <asp:ListItem Value="2">Large</asp:ListItem>
                                    </asp:DropDownList>
                    </div>
                    <div class="items2">
                        Stage   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Small (16' x 12')</asp:ListItem>
                                    <asp:ListItem Value="2">Medium (32' x 24')</asp:ListItem>
                                    <asp:ListItem Value="3">Large (40' x 30')</asp:ListItem>
                                </asp:DropDownList>
                    </div>
                    <div class="items2">
                        Roofing <asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Small (20' x 16')</asp:ListItem>
                                    <asp:ListItem Value="2">Medium (40' x 32')</asp:ListItem>
                                    <asp:ListItem Value="3">Large (48' x 40')</asp:ListItem>
                                </asp:DropDownList>
                    </div>
                    <div class="items2">
                        Multimedia  <asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                        <asp:ListItem Value="1">Basic (2 cameras)</asp:ListItem>
                                        <asp:ListItem Value="2">Pro (10 cameras)</asp:ListItem>
                                    </asp:DropDownList>
                    </div>
                    <div class="items2">
                        Communication Headset   <asp:DropDownList ID="DropDownList4" runat="server" CssClass="ddl">
                                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem Value="1">2 Headsets</asp:ListItem>
                                                    <asp:ListItem Value="2">5 Headsets</asp:ListItem>
                                                    <asp:ListItem Value="3">10 Headsets</asp:ListItem>
                                                    <asp:ListItem Value="4">15 Headsets</asp:ListItem>
                                                    <asp:ListItem Value="5">20 Headsets</asp:ListItem>
                                                </asp:DropDownList>
                    </div>
                </div>


        <div class="evt-container-line"></div>
        <div class="bold booking-input">
            <p>1. BOOKING AND PAYMENT</p>
            <p>1.1. A booking is considered confirmed only upon receipt of a non-refundable deposit of 50% of the total rental cost.</p>
            <p>1.2. The remaining balance must be settled at least 2 days before the event date unless otherwise agreed.</p>
            <p>1.3. Payments can be made via [Bank Transfer, GCash, Cash, or other agreed methods].</p>
            <p>1.4. Failure to complete payment by the due date may result in cancellation of the booking.</p>
            <br />
            <p>2. CANCELLATION AND REFUND POLICY</p>
            <p>2.1. Cancellations made 3 days before the event will be eligible for a refund of the amount paid, minus the non-refundable deposit.</p>
            <p>2.2. Cancellations made less than 2 days before the event are non-refundable.</p>
            <p>2.3. If the event is postponed, rescheduling is subject to availability and must be requested at least 2 days in advance.</p>
            <br />
            <p>3. EQUIPMENT USAGE AND LIABILITY</p>
            <p>3.1. The rental equipment remains the property of Light Sync Audio and must be used only for the agreed event.</p>
            <p>3.2. The client is responsible for any damage, loss, or theft of the rented equipment during the rental period.</p>
            <p>3.3. In case of damage, repair or replacement costs will be charged to the client.</p>
            <p>3.4. The client must ensure that the venue has proper electrical outlets and sufficient power capacity for the equipment.</p>
            <br />
            <p>4. DELIVERY, SETUP, AND DISMANTLING</p>
            <p>4.1. Delivery and setup will be done at the agreed time and venue. Any last-minute changes must be communicated in advance.</p>
            <p>4.2. The client must provide venue access at the agreed setup time. Delays caused by the venue may result in additional charges.</p>
            <p>4.3. Dismantling and pickup of the equipment will be done immediately after the event unless otherwise arranged.</p>
            <br />
            <p>5. EVENT OPERATION AND TECHNICAL SUPPORT</p>
            <p>5.1. A technical team may be provided to operate the lights and sounds as per the agreed service package.</p>
            <p>5.2. The client must coordinate with the technical team regarding the event program and special effects requirements.</p>
            <p>5.3. The client is not allowed to operate or alter the settings of the rented equipment without permission from Light Sync Audio.</p>
            <br />
            <p>7. AGREEMENT ACCEPTANCE</p>
            <p>7.1. By confirming a booking, the client acknowledges and agrees to these Terms and Conditions.</p>
            <p>7.2. Any modifications to this agreement must be made in writing and approved by both parties.</p>
            <br />
            <p>For inquiries or clarifications, please contact Light Sync Audio at +63 917 248 2837 or email us at lightsyncaudio@gmail.com.</p>

        </div>

        <div class="submit-col">
            <div class="submit">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <p>I have read and understood the Terms and Conditions of Light Sync Audio and agree to abide by them.</p>
            </div>
            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="submit-btn" OnClick="submit_Click" />
        </div>
    </div>

</div>
</asp:Content>
