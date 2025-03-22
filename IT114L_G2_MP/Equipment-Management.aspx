<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Equipment-Management.aspx.cs" Inherits="IT114L_G2_MP.Equipment_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\equipment.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Select Equipment Type<asp:RequiredFieldValidator ID="rfv_equipType" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_type" />
    <asp:DropDownList ID="equip_type" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_typeChange">
        <asp:ListItem Value="0">-- Select Equipment Type --</asp:ListItem>
        <asp:ListItem Value="Lights">Lights</asp:ListItem>
        <asp:ListItem Value="Sounds">Sounds</asp:ListItem>
        <asp:ListItem Value="Others">Others</asp:ListItem>
    </asp:DropDownList><br />
    Enter Brand<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_brand" />
    <asp:TextBox ID="equip_brand" runat="server" CssClass="textbox"></asp:TextBox><br />

    Enter Model<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_model" />
    <asp:TextBox ID="equip_model" runat="server" CssClass="textbox"></asp:TextBox><br />

    Date of Acquisation<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_acq" />
    <asp:TextBox ID="equip_acq" runat="server" TextMode="Date" CssClass="textbox"></asp:TextBox><br />

    Enter Quantity<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_quant" />
    <asp:TextBox ID="equip_quant" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox><br />

    Enter Price Per Day<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_ppd" />
    <asp:TextBox ID="equip_ppd" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox><br />

    Enter Equipment Function<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="equip_purpose" />
    <asp:DropDownList ID="equip_purpose" runat="server" AutoPostBack="true">
        <asp:ListItem Value="0">-- Select Equipment Type --</asp:ListItem>
    </asp:DropDownList>

    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
</asp:Content>
