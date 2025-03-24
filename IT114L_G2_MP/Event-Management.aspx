<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Event-Management.aspx.cs" Inherits="IT114L_G2_MP.Event_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\events.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gridviewcontainer"> 
        <div class="heading_container">
            <h3>My Events</h3>
             <div class="evt-container-line"></div>
        </div>

        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" CssClass="gridview" ShowSelectButton="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True"/>
            </Columns>
        </asp:GridView>
        </center>

        <asp:Label runat="server" ID="No_Events" style="text-align: center; margin: auto; font-size: 40px; font-weight: bold; color: gray;"></asp:Label>
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
                        <asp:TextBox ID="bookingID" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Customer Name <br />
                        <asp:TextBox ID="custname" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Email <br />
                        <asp:TextBox ID="custemail" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <div class="right">
                    <div class="prompt">
                        Business Number <br />
                        <asp:TextBox ID="b_number" runat="server" Width="90%" Height="40px" TextMode="Phone" MaxLength="11" CssClass="textprompt" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Company Name <br />
                        <asp:TextBox ID="compname" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div> 
                    <div class="prompt">
                        Phone Number <br />
                        <asp:TextBox ID="p_number" runat="server" Width="90%" Height="40px" TextMode="Phone" MaxLength="11" CssClass="textprompt" Enabled="false"></asp:TextBox>
                    </div>
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
                        <asp:TextBox ID="region" runat="server" Width="90%" Height="40px" CssClass="textbox" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Province <br />
                        <asp:TextBox ID="province" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        City <br />
                        <asp:TextBox ID="city" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <div class="right">
                    <div class="prompt">
                        Barangay <br />
                        <asp:TextBox ID="brgy" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Address <br />
                        <asp:TextBox ID="addr" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Location Number <br />
                        <asp:TextBox ID="locnum" runat="server" Width="90%" Height="40px" TextMode="Number" Enabled="false"></asp:TextBox>
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
                        <asp:TextBox ID="ev_name" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Event Date <br />
                        <asp:TextBox ID="ev_date" runat="server" Width="90%" Height="40px" TextMode="Date" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Event Type <br />
                        <asp:TextBox ID="ev_type" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <div class="right">
                    <div class="prompt">
                        PAX <br />
                        <asp:TextBox ID="ev_pax" runat="server" Width="90%" Height="40px" TextMode="Number" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Team Name <br />
                        <asp:TextBox ID="teamname" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="prompt">
                        Package ID <br />
                        <asp:TextBox ID="packageid" runat="server" Width="90%" Height="40px" Enabled="false"></asp:TextBox>
                    </div>
                </div>
            </div>
            <center><hr style="width:95%;" /></center>

            <div class="content3">
                Discount <asp:DropDownList runat="server" ID="discount_ddl" CssClass="ddl">
                        <asp:ListItem Value="0">None</asp:ListItem>
                        <asp:ListItem Value="1">Loyalty Discount (5%)</asp:ListItem>
                        <asp:ListItem Value="2">Partnership Discount (10%)</asp:ListItem>
                    </asp:DropDownList><br /><br />
                Booking Status <asp:DropDownList ID="bookStatus" runat="server" CssClass="ddl" >
                                    <asp:ListItem Value ="0">Disapproved</asp:ListItem>
                                    <asp:ListItem Value ="1">Approved</asp:ListItem>
                               </asp:DropDownList>
            </div>

            <div class="button-container">
                <center>
                    <asp:Button ID="delete_btn" runat="server" Text="Delete" CssClass="button" BackColor="Red" ForeColor="White" Type="Clear"/>
                    <asp:Button ID="save_btn" runat="server" Text="Save" CssClass="button" BackColor="Green" ForeColor="White" Type="Submit"/>
                </center>
            </div>
        </div>
</asp:Content>
