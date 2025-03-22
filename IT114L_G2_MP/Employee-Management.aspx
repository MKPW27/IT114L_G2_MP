﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Employee-Management.aspx.cs" Inherits="IT114L_G2_MP.AccountManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css\employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="body-container">
    <div class="left-container">
        <div class="evt-container-line">
            <h3 class="header-title">My Employees</h3>
        </div>
        <asp:GridView ID="Emp_GridView" runat="server" AutoGenerateColumns="True" CssClass="gridview">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div class="right-container">
        <div class="form-container add-employee">
            <div class="evt-container-line"><h3 class="header-title">Add Employee</h3></div>
            
            
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
  
                    <asp:RadioButtonList ID="EmpType" runat="server" CssClass="radio">
                        <asp:ListItem Text=" Manager" Value="Manager"></asp:ListItem>
                        <asp:ListItem Text=" Staff" Value="Staff"></asp:ListItem>
                    </asp:RadioButtonList>

                </div>

                <div class="checkbox-group">
                    <p>Gender:</p>
                    <asp:RadioButtonList ID="EmpGender" runat="server" CssClass="radio">
                        <asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            
            </div>
            <div class="checkbox-group">
                <p>Status:</p>

                <asp:RadioButtonList ID="EmpStatus" runat="server" CssClass="radio">
                    <asp:ListItem Text=" Active" Value="Active"></asp:ListItem>
                    <asp:ListItem Text=" Inactive" Value="Inactive"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="btn-container">
                <asp:Button ID="AddBtn" runat="server" CssClass="btn" Text="Add" />
            </div>
        </div>

        <div class="form-container edit-employee">
            <div class="evt-container-line"><h3 class="header-title">Edit Employee</h3></div>
            <h3 class="header-title">Edit Employee</h3>
            <p>ID</p>
            <div class="input-cols">
                <asp:TextBox ID="EmpID" runat="server" CssClass="input-field"></asp:TextBox>
                    <asp:Button ID="SearchBtn" runat="server" CssClass="btn btn-search" Text="Search" />
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
                    <p>Employee Type:</p>
                    <asp:RadioButtonList ID="EditEmployee" runat="server" CssClass="radio">
                        <asp:ListItem Text=" Manager" Value="Manager"></asp:ListItem>
                        <asp:ListItem Text=" Staff" Value="Staff"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div class="checkbox-group">
                    <label>Gender:</label>
                    <asp:RadioButtonList ID="EditGender" runat="server" CssClass="radio">
                        <asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="checkbox-group">
                <p>Status:</p>
                <asp:RadioButtonList ID="EditStatus" runat="server" CssClass="radio">
                    <asp:ListItem Text=" Active" Value="Active"></asp:ListItem>
                    <asp:ListItem Text=" Inactive" Value="Inactive"></asp:ListItem>
                </asp:RadioButtonList>

            </div>

            <div class="btn-container">
                <asp:Button ID="EditBtn" runat="server" CssClass="btn" Text="Edit" />
                <asp:Button ID="RemoveBtn" runat="server" CssClass="btn btn-red" Text="Remove" />
            </div>
        </div>
    </div>
</div>


</asp:Content>
