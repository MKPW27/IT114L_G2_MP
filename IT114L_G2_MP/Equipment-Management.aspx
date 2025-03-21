<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Equipment-Management.aspx.cs" Inherits="IT114L_G2_MP.Equipment_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css\employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body-container">
    <div class="left-container">
        <div class="evt-container-line">
            <h3 class="header-title">My Equipment</h3>
        </div>
        <asp:GridView ID="Emp_GridView" runat="server" AutoGenerateColumns="True" CssClass="gridview">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div class="right-container">
        <div class="form-container add-employee">
            <div class="evt-container-line">
                <h3 class="header-title">My Equipment</h3>
            </div>
            
            <div class="input-cols">
                <div class="input-group">
                    
                    <p>Name</p>
                    <asp:TextBox ID="EquName" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Category</p>
                    <asp:TextBox ID="EquCategory" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>

            <div class="input-cols">
                <div class="input-group">
                    <p>Section</p>
                    <asp:TextBox ID="EquSection" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Quantity</p>
                    <asp:TextBox ID="EquQuantity" runat="server" CssClass="input-field" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="input-group input-half">
                <p>Price per day</p>
                <asp:TextBox ID="EquPrice" runat="server" CssClass="input-field" TextMode="Number"></asp:TextBox>
            </div>
             <div class="btn-container btn-padding">
                <asp:Button ID="AddBtn" runat="server" CssClass="btn" Text="Add" />
            </div>

        </div>

        <div class="form-container edit-employee">
            <div class="evt-container-line">
                <h3 class="header-title">Edit Equipment</h3>
            </div>
            <p>ID</p>
            <div class="input-cols">
                <asp:TextBox ID="EquID" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:Button ID="EquSearchBtn" runat="server" CssClass="btn btn-search" Text="Search" />
            </div>
            <div class="input-cols">
                <div class="input-group">   
                    <p>Type Name</p>
                    <asp:TextBox ID="EquEditType" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Category</p>
                    <asp:TextBox ID="EquEditCategory" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>


            <div class="input-group input-half">
                <p>Quantity</p>
                <asp:TextBox ID="EquEditQuantity" runat="server" CssClass="input-field" TextMode="Number"></asp:TextBox>
            </div>



            <div class="btn-container btn-padding">
                <asp:Button ID="EditBtn" runat="server" CssClass="btn" Text="Edit" />
                <asp:Button ID="RemoveBtn" runat="server" CssClass="btn btn-red" Text="Remove" />
            </div>
        </div>
    </div>
</div>
</asp:Content>
