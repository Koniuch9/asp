<%@ Page Title="" Language="C#" MasterPageFile="~/Lotnisko.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LotniskoASP_1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CartLabel" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <form runat="server" id="loginForm">

    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>

    <asp:TextBox ID="loginLogin" runat="server"></asp:TextBox></br>
    <asp:Label ID="Label2" runat="server" Text="Hasło"></asp:Label>
    <asp:TextBox ID="loginPassword" runat="server"></asp:TextBox></br>

    <asp:Button ID="loginConfirm" runat="server" Text="Zaloguj się" 
        onclick="loginConfirm_Click" />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </form>
</asp:Content>
