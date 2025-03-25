<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Equipment-Management.aspx.cs" Inherits="IT114L_G2_MP.Equipment_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\equipment.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-container">
        <div class="left-container form-container">
            <div class="evt-container-line">
                <h3 class="header-title">My Equipment</h3>
            </div>

            <asp:GridView ID="gvEquipments" runat="server" AutoGenerateColumns="True" CssClass="gridview" ShowHeaderWhenEmpty="True" DataKeyNames="equip_id">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Edit" />
                    <asp:BoundField DataField="equip_id" HeaderText="Package ID" ReadOnly="True" />
                    <asp:BoundField DataField="equip_type" HeaderText="Package Name" ReadOnly="True" />
                    <asp:BoundField DataField="equip_brand" HeaderText="Package Name" ReadOnly="True" />
                    <asp:BoundField DataField="equip_model" HeaderText="Package Name" ReadOnly="True" />
                    <asp:BoundField DataField="equip_ppd" HeaderText="Package Name" ReadOnly="True" />
                    <asp:BoundField DataField="equip_qty" HeaderText="Package Name" ReadOnly="True" />
                </Columns>
            </asp:GridView>

            <asp:Label ID="No_Equ" runat="server" Text=""></asp:Label>
        </div>

        <div class="right-container">
            <div class="form-container">
                <div class="evt-container-line">
                    <h3 class="header-title">Equipment Type</h3>
                </div>
                Select Equipment Type<asp:RequiredFieldValidator ID="rfv_equipType" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_type" /><br />

                <asp:DropDownList ID="equip_type" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_typeChange" CssClass="input-field">
                    <asp:ListItem Value="0">-- Select Equipment Type --</asp:ListItem>
                    <asp:ListItem Value="Lights">Lights</asp:ListItem>
                    <asp:ListItem Value="Sounds">Sounds</asp:ListItem>
                    <asp:ListItem Value="Others">Others</asp:ListItem>
                </asp:DropDownList><br />

                Enter Brand<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_brand" /><br />
                <asp:TextBox ID="equip_brand" runat="server" CssClass="input-field"></asp:TextBox><br />

                Enter Model<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_model" /><br />
                <asp:TextBox ID="equip_model" runat="server" CssClass="input-field"></asp:TextBox><br />

                Date of Acquisation<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_acq" /><br />
                <asp:TextBox ID="equip_acq" runat="server" TextMode="Date" CssClass="input-field date"></asp:TextBox><br />

                Enter Quantity<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_quant" /><br />
                <asp:TextBox ID="equip_quant" runat="server" TextMode="Number" CssClass="input-field"></asp:TextBox><br />

                Enter Price Per Day<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_ppd" /><br />
                <asp:TextBox ID="equip_ppd" runat="server" TextMode="Number" CssClass="input-field"></asp:TextBox><br />

                Enter Equipment Function<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_purpose" /><br />
                <asp:DropDownList ID="equip_purpose" runat="server" AutoPostBack="true" CssClass="input-field">
                    <asp:ListItem Value="0">-- Select Equipment Type --</asp:ListItem>
                </asp:DropDownList>

                <div class="btn-container">
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="btn"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
