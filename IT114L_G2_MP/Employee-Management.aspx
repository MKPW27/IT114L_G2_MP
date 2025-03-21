<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Employee-Management.aspx.cs" Inherits="IT114L_G2_MP.AccountManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css\employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="fill"></div>
<div class="body-container">
    <div class="left-container">
        <h3 class="header-title">My Employees</h3>
        <asp:GridView ID="Emp_GridView" runat="server" AutoGenerateColumns="True" CssClass="gridview">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div class="right-container">
        <div class="form-container add-employee">
            <h3 class="header-title">Add Employee</h3>
            
            <div class="input-cols">
                <div class="input-group">
                    <p>First Name</p>
                    <asp:TextBox ID="FirstName" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Last Name</p>
                    <asp:TextBox ID="LastName" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>

            <div class="input-cols">
                <div class="input-group">
                    <p>Birthdate</p>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field" TextMode="Date"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Email</p>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="checkbox-cols">
                <div class="checkbox-group">
                
                    <p>Employee Type:</p>   
                    <asp:CheckBox ID="Chk_Staff" runat="server" Text="Staff" /><br />
                    <asp:CheckBox ID="Chk_Manager" runat="server" Text="Manager" />

                </div>

                <div class="checkbox-group">
                    <p>Gender:</p>
                    <asp:CheckBox ID="Chk_Male" runat="server" Text="Male" /><br />
                    <asp:CheckBox ID="Chk_Female" runat="server" Text="Female" />
                </div>
            
            </div>
            <div class="checkbox-group">
                <p>Status:</p>
                <asp:CheckBox ID="Chk_Active" runat="server" Text="Active" /><br />
                <asp:CheckBox ID="Chk_Inactive" runat="server" Text="Inactive" />
            </div>
            <div class="btn-container">
                <asp:Button ID="AddBtn" runat="server" CssClass="btn" Text="Add" />
            </div>
        </div>

        <div class="form-container edit-employee">
            <h3 class="header-title">Edit Employee</h3>
            <p>ID</p>
            <div class="input-cols">
                <asp:TextBox ID="EmpID" runat="server" CssClass="input-field"></asp:TextBox>
                    <asp:Button ID="SearchBtn" runat="server" CssClass="btn" Text="Search" />
            </div>
            <div class="input-cols">
                <div class="input-group">
                    <p>First Name</p>
                    <asp:TextBox ID="EditFirstName" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Last Name</p>
                    <asp:TextBox ID="EditLastName" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>

            <div class="input-cols">
                <div class="input-group">
                    <p>Birthdate</p>
                    <asp:TextBox ID="EditBirthdate" runat="server" CssClass="input-field" TextMode="Date"></asp:TextBox>
                </div>
                <div class="input-group">
                    <p>Email</p>
                    <asp:TextBox ID="EditEmail" runat="server" CssClass="input-field" TextMode="Email"></asp:TextBox>
                </div>
            </div>

            <div class="checkbox-cols">
                <div class="checkbox-group">
                    <label>Employee Type:</label><br />
                    <asp:CheckBox ID="Chk_EditStaff" runat="server" Text="Staff" /><br />
                    <asp:CheckBox ID="Chk_EditManager" runat="server" Text="Manager" />
                </div>

                <div class="checkbox-group">
                    <label>Gender:</label><br />
                    <asp:CheckBox ID="Chk_EditMale" runat="server" Text="Male" /><br />
                    <asp:CheckBox ID="Chk_EditFemale" runat="server" Text="Female" />
                </div>
            </div>
            <div class="checkbox-group">
                <label>Status:</label><br />
                <asp:CheckBox ID="Chk_EditActive" runat="server" Text="Active" /><br />
                <asp:CheckBox ID="Chk_EditInactive" runat="server" Text="Inactive" />
            </div>

            <div class="btn-container">
                <asp:Button ID="EditBtn" runat="server" CssClass="btn" Text="Edit" />
                <asp:Button ID="RemoveBtn" runat="server" CssClass="btn btn-red" Text="Remove" />
            </div>
        </div>
    </div>
</div>


</asp:Content>
