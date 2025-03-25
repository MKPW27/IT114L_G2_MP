<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.Master" AutoEventWireup="true" CodeBehind="Team-Management.aspx.cs" Inherits="IT114L_G2_MP.Team_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/team.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page">
        <div class="create-package-container">
            <div class="left-container">
                <div class="package-information">
                    <center>
                        <h2>Create New Team</h2>
                    </center>
                    <asp:TextBox runat="server" ID="teamname" placeholder="Team Name" CssClass="textbox" MaxLength="44"></asp:TextBox>
                    <div class="button-container">
                        <asp:Button runat="server" ID="createNew" Text="Create New" OnClick="createNew_Click" CssClass="button" />
                    </div>
                    <asp:TextBox runat="server" ID="teamID" placeholder="Package ID" CssClass="textbox" MaxLength="50" Enabled="false"></asp:TextBox>
                </div>

                <div class="select-package-container">
                    <center>
                        <h2>Select Employee</h2>
                    </center>
                    <asp:DropDownList ID="ddlEmp" runat="server" AutoPostBack="true" CssClass="ddl">
                        <asp:ListItem Value="">-- Select Employee --</asp:ListItem>
                    </asp:DropDownList>

                    <asp:DropDownList ID="ddlRole" runat="server" AutoPostBack="true" CssClass="ddl" OnSelectedIndexChanged="ddlItemType_SelectedIndexChanged">
                        <asp:ListItem Value="">-- Select Role --</asp:ListItem>
                    </asp:DropDownList>

                    <div class="button-container">
                        <asp:Button ID="addbtn" runat="server" Text="Add" CssClass="button" OnClick="addbtn_Click"/>
                    </div>
                </div>

                <div class="select-package_gridview">
                    <center>
                        <h2>Team Lists</h2>
                    </center>
                    <asp:GridView ID="gvTeams" runat="server" AutoGenerateColumns="False" CssClass="gridview" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="gvPackages_SelectedIndexChanged" OnRowDeleting="gvPackages_RowDeleting" DataKeyNames="team_name">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" SelectText="View" />
                            <asp:BoundField DataField="team_name" HeaderText="Team Name" ReadOnly="True" />
                            <asp:CommandField ShowDeleteButton="True" DeleteText="Delete" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

            <div class="view-package-items-container">
                <center>
                    <h2>Team Content</h2>
                </center>
                <asp:GridView ID="gvNewTeam" runat="server" AutoGenerateColumns="False" CssClass="gridview" ShowHeaderWhenEmpty="True" OnRowCommand="gvEquipment_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Role" HeaderText="Role" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server"
                                    CommandName="DeleteItem"
                                    CommandArgument="<%# Container.DataItemIndex %>"
                                    Text="Delete"
                                    CssClass="delete-button" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <div class="view-available-packages-container">
        </div>
    </div>
</asp:Content>
