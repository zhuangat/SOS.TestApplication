<%@ Page Title="Register Your Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SOS.TestApplication.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <asp:Label ID="RegisterPageHeader" runat="server" Text="Registration Page" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
        </div>
        <div>
            <asp:Label ID="UsernameLabel" runat="server" Text="User Name:   "></asp:Label><asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Password:   "></asp:Label><asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="RegisterButton" runat="server" Text="Register" />
        </div>
    </div>
</asp:Content>
