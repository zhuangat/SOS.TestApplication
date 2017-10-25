<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SOS.TestApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to SOS Testing Online Login Service</h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Login your account</h2>
            <p>
                After login your account, you can access our intranet.
            </p>
            <p>
                <a class="btn btn-default" href="../Pages/Login">Sign in here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Register your own account</h2>
            <p>
                Didn't have your account? Register here.
            </p>
            <p>
                <a class="btn btn-default" href="../Pages/Register">Sign up here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Logout your account</h2>
            <p>
                You can logout in logout page.
            </p>
            <p>
                <a class="btn btn-default" href="../Pages/Logout">Sign out here &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
