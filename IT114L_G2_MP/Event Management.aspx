<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Event Management.aspx.cs" Inherits="IT114L_G2_MP.Event_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\events.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="EventName" HeaderText="Event Name" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" />
                <asp:BoundField DataField="EventDate" HeaderText="Event Date" />
                <asp:CheckBoxField DataField="Verified" HeaderText="Verified" />
            </Columns>
        </asp:GridView>
    </div>

    <div class="event_details">
        <div class="heading_container">
            <h3>Event Details</h3>
        </div>
        
        <div class="container">
            <h4>Customer Information</h4>
            <center><hr style="width:95%"/></center>
            <div class="content">
                <div class="left">
                    <div class="prompt">
                        Booking ID <br />
                        <asp:TextBox ID="bookingID" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Customer Name <br />
                        <asp:TextBox ID="custname" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Email <br />
                        <asp:TextBox ID="custemail" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                </div>

                <div class="right">
                    <div class="prompt">
                        Business Number <br />
                        <asp:TextBox ID="b_number" runat="server" Width="90%" Height="40px" TextMode="Phone" MaxLength="11" CssClass="textprompt"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Company Name <br />
                        <asp:TextBox ID="compname" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div> 
                    <div class="prompt">
                        Phone Number <br />
                        <asp:TextBox ID="p_number" runat="server" Width="90%" Height="40px" TextMode="Phone" MaxLength="11" CssClass="textprompt"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <h4>Event Location</h4>
            <center><hr style="width:95%"/></center>

            <div class="content">
                <div class="left">
                    <div class="prompt">
                        Region <br />
                        <asp:TextBox ID="region" runat="server" Width="90%" Height="40px" CssClass="textbox"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Province <br />
                        <asp:TextBox ID="province" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        City <br />
                        <asp:TextBox ID="city" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                </div>

                <div class="right">
                    <div class="prompt">
                        Barangay <br />
                        <asp:TextBox ID="brgy" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Address <br />
                        <asp:TextBox ID="addr" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Location Number <br />
                        <asp:TextBox ID="locnum" runat="server" Width="90%" Height="40px" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container">
            <h4>Event Information</h4>
            <center><hr style="width:95%"/></center>

            <div class="content">
                <div class="left">
                    <div class="prompt">
                        Event Name <br />
                        <asp:TextBox ID="ev_name" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Event Date <br />
                        <asp:TextBox ID="ev_date" runat="server" Width="90%" Height="40px" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Event Type <br />
                        <asp:TextBox ID="ev_type" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                </div>

                <div class="right">
                    <div class="prompt">
                        PAX <br />
                        <asp:TextBox ID="ev_pax" runat="server" Width="90%" Height="40px" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Team Name <br />
                        <asp:TextBox ID="teamname" runat="server" Width="90%" Height="40px"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <h4>Package Information</h4>
            <center><hr style="width:95%"/></center>
            
            <div class="package_content">
                <div class="box1">
                    <h5>Lights</h5>
                    <center><hr style="width:70%; margin-bottom: 40px;"/></center>
                    
                    <div class="items">
                        Moving Heads <asp:TextBox ID="mh" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        PAR Lights <asp:TextBox ID="pl" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        Blinders <asp:TextBox ID="bl" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        Followspot <asp:TextBox ID="fs" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        Striplight <asp:TextBox ID="sl" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
            
                <div class="box1">
                    
                    <h5>Sounds</h5>
                    <center><hr style="width:70%; margin-bottom: 40px;"/></center>

                    <div class="items">
                        Subwoofers <asp:TextBox ID="sw" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        House Speakers <asp:TextBox ID="hs" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        Monitors <asp:TextBox ID="ms" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        Wired Microphone <asp:TextBox ID="wdm" runat="server" Width="201" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="items">
                        Wireless Microphone <asp:TextBox ID="wlm" runat="server" Width="201" TextMode="Number"></asp:TextBox>
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
            
            <div class="box2">
                <h5>Others</h5>
                <center><hr style="width:40%; margin-bottom: 40px;"/></center>

                <div class="items">
                    LED Wall <asp:DropDownList ID="led_wall_type" runat="server" CssClass="ddl">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Small</asp:ListItem>
                                    <asp:ListItem Value="2">Large</asp:ListItem>
                             </asp:DropDownList>
                </div>
                <div class="items">
                    Stage   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Small (16' x 12')</asp:ListItem>
                                <asp:ListItem Value="2">Medium (32' x 24')</asp:ListItem>
                                <asp:ListItem Value="3">Large (40' x 30')</asp:ListItem>
                            </asp:DropDownList>
                </div>
                <div class="items">
                    Roofing <asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Small (20' x 16')</asp:ListItem>
                                <asp:ListItem Value="2">Medium (40' x 32')</asp:ListItem>
                                <asp:ListItem Value="3">Large (48' x 40')</asp:ListItem>
                            </asp:DropDownList>
                </div>
                <div class="items">
                    Multimedia  <asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddl">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Basic (2 cameras)</asp:ListItem>
                                    <asp:ListItem Value="2">Pro (10 cameras)</asp:ListItem>
                                </asp:DropDownList>
                </div>
                <div class="items">
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



            <center><hr style="width:95%;" /></center>

            <div class="content3">
                Booking Status &nbsp&nbsp&nbsp&nbsp <asp:DropDownList ID="bookStatus" runat="server" CssClass="ddl" >
                                    <asp:ListItem Value ="0">Disapproved</asp:ListItem>
                                    <asp:ListItem Value ="1">Approved</asp:ListItem>
                               </asp:DropDownList><br /><br />
            </div>

            <div class="button-container">
                <center>
                    <asp:Button ID="delete_btn" runat="server" Text="Delete" CssClass="button" BackColor="Red" ForeColor="White" Type="Clear"/>
                    <asp:Button ID="save_btn" runat="server" Text="Save" CssClass="button" BackColor="Green" ForeColor="White" Type="Submit"/>
                </center>
            </div>
        </div>
</asp:Content>
