<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Create-Package.aspx.cs" Inherits="IT114L_G2_MP.Create_Package" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css\packages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="package-container">
        <div class="equipment-section">
            <h3>Items</h3>
            <hr />
            <div class="equipmentRow">
                <asp:DropDownList ID="ddlItemType" runat="server" CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlItemType_SelectedIndexChanged"></asp:DropDownList>
                <asp:DropDownList ID="ddlItemBrand" runat="server" CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlItemBrand_SelectedIndexChanged"></asp:DropDownList>
                <asp:DropDownList ID="ddlItemModel" runat="server" CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlItemModel_SelectedIndexChanged"></asp:DropDownList>
                <asp:DropDownList ID="ddlItemQty" runat="server" CssClass="dropdown"> </asp:DropDownList>
                <button type="button" class="delete-btn" onclick="removeRow(this)">❌</button>
            </div>
            <asp:Button ID="btnAddMoreItems" runat="server" Text="Add More" CssClass="add-button" OnClientClick="addMoreRows('ItemContainer'); return false;" />
        </div>
        
        <div class="package-info-container">
            <center><h3>Package Information</h3></center>
            <hr />

            <div class="input-container">
                <h4>Package ID</h4>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
            </div>

            <div class="input-container">
                <h4>Name</h4>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
            </div>
        </div>
    </div>

    <script>
        function addMoreRows(containerId) {
            var container = document.getElementById(containerId);
            var lastRow = container.lastElementChild;
            var dropdowns = lastRow.getElementsByTagName("select");

            for (var i = 0; i < dropdowns.length; i++) {
                if (dropdowns[i].value === "0") {
                    alert("Please select all values before adding a new row.");
                    return;
                }
            }

            var newRow = lastRow.cloneNode(true);
            var newDropdowns = newRow.getElementsByTagName("select");

            for (var i = 0; i < newDropdowns.length; i++) {
                newDropdowns[i].value = "0";
            }

            container.appendChild(newRow);
        }

        function removeRow(button) {
            var row = button.parentNode;
            var container = row.parentNode;

            if (container.children.length > 1) {
                container.removeChild(row);
            } else {
                alert("At least one row is required.");
            }
        }
    </script>
</asp:Content>
