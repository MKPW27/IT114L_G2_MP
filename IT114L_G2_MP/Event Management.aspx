<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Event Management.aspx.cs" Inherits="IT114L_G2_MP.Event_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~\css\events.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

    <div class="event_details">
        <h3>Event Details</h3>
        <hr />

        <h4>Customer Information</h4>

        <div class="content">
            <div class="left">
                <div class="prompt">
                    Booking ID <asp:TextBox ID="bookingID" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Customer Name <asp:TextBox ID="custname" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Email <asp:TextBox ID="custemail" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
            </div>

            <div class="right">
                <div class="prompt">
                    Business Number <asp:TextBox ID="b_number" runat="server" Width="55%" Height="27px" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="prompt">
                    Company Name <asp:TextBox ID="compname" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Phone Number <asp:TextBox ID="p_number" runat="server" Width="55%" Height="27px" TextMode="Phone"></asp:TextBox>
                </div>
            </div>
        </div>

        <h4>Event Location</h4>

        <div class="content">
            <div class="left">
                <div class="prompt">
                    Region <asp:TextBox ID="region" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Province <asp:TextBox ID="province" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    City <asp:TextBox ID="city" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
            </div>

            <div class="right">
                <div class="prompt">
                    Barangay <asp:TextBox ID="brgy" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Address <asp:TextBox ID="addr" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Location Number <asp:TextBox ID="locnum" runat="server" Width="55%" Height="27px" TextMode="Phone"></asp:TextBox>
                </div>
            </div>
        </div>

        <h4>Event Information</h4>

        <div class="content">
            <div class="left">
                <div class="prompt">
                    Event Name <asp:TextBox ID="ev_name" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Event Date <asp:TextBox ID="ev_date" runat="server" Width="55%" Height="27px" TextMode="Date"></asp:TextBox>
                </div>
                <div class="prompt">
                    Event Type <asp:TextBox ID="ev_type" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
            </div>

            <div class="right">
                <div class="prompt">
                    PAX <asp:TextBox ID="ev_pax" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Team Name <asp:TextBox ID="teamname" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
            </div>
        </div>

        <h4>Package Information</h4>
        <h5>Lights</h5>

        <div class="content2">
            <div class="left">
                <div class="prompt">
                    Moving Heads <asp:CheckBox ID="mh_cb" runat="server" />
                </div>
                <div class="prompt">
                    Back Lights <asp:CheckBox ID="bl_cb" runat="server" />
                </div>
                <div class="prompt">
                    Frontal Lights <asp:CheckBox ID="fl_cb" runat="server" />
                </div>
                <div class="prompt">
                    Blinders <asp:CheckBox ID="b_cb" runat="server" />
                </div>
            </div>

            <div class="right">
                <div class="prompt">
                    Quantity <asp:TextBox ID="mh_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="bl_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="fl_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="b_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
            </div>
        </div>
        <h5>Sounds</h5>

        <div class="content2">
            <div class="left">
                <div class="prompt">
                    House Speakers <asp:CheckBox ID="hs_cb" runat="server" />
                </div>
                <div class="prompt">
                    Subwoofers <asp:CheckBox ID="sw_cb" runat="server" />
                </div>
                <div class="prompt">
                    Monitors <asp:CheckBox ID="mo_sb" runat="server" />
                </div>
                <div class="prompt">
                    Microphones <asp:CheckBox ID="mi_cb" runat="server" />
                </div>
                <div class="prompt">
                    Backline <asp:CheckBox ID="bk_cb" runat="server" />
                </div>
            </div>

            <div class="right">
                <div class="prompt">
                    Quantity <asp:TextBox ID="hs_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="sw_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="mo_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="mi_quant" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
                <div class="prompt">
                    Type <asp:TextBox ID="bk_type" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
            </div>
        </div>

        <h5>Others</h5>

        <div class="content2">
            <div class="left">
                <div class="prompt">
                    LED Wall <asp:CheckBox ID="lw_cb" runat="server" />
                </div>
                <div class="prompt">
                    Stage <asp:CheckBox ID="st_cb" runat="server" />
                </div>
                <div class="prompt">
                    Roofing <asp:CheckBox ID="rf_cb" runat="server" />
                </div>
                <div class="prompt">
                    Lazer <asp:CheckBox ID="lz_cb" runat="server" />
                </div>
                <div class="prompt">
                    Multimedia <asp:CheckBox ID="mm_cb" runat="server" />
                </div>
            </div>

            <div class="right">
                <div class="prompt">
                    Type <asp:TextBox ID="lw_type" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Type <asp:TextBox ID="st_type" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Type <asp:TextBox ID="rf_type" runat="server" Width="55%" Height="27px"></asp:TextBox>
                </div>
                <div class="prompt">
                    Quantity <asp:TextBox ID="lz_type" runat="server" Width="55%" Height="27px" TextMode="Number"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="content3">
            Booking Status &nbsp&nbsp&nbsp&nbsp <asp:DropDownList ID="bookStatus" runat="server" Height="30" Width="200">
                                <asp:ListItem Value ="0">Disapproved</asp:ListItem>
                                <asp:ListItem Value ="1">Approved</asp:ListItem>
                           </asp:DropDownList><br /><br />
            <center><asp:Button ID="save_button" runat="server" Text="Save" Width="150px" Height="30"/>     </center>   

        </div>
    </div>
</asp:Content>
