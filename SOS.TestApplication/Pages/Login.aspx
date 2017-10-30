<%@ Page Title="Login Your Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SOS.TestApplication.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <asp:Label ID="LoginPageHeader" runat="server" Text="Log In" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
        </div>
        <div>
            <asp:Label ID="UsernameLabel" runat="server" Text="User Name:   "></asp:Label><asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Password:   "></asp:Label><asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="LoginButton" runat="server" Text="Log in" />
        </div>
    </div>
</asp:Content>
