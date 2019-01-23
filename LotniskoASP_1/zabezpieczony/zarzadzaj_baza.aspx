<%@ Page Title="" Language="C#" MasterPageFile="~/Lotnisko.Master" AutoEventWireup="true" CodeBehind="zarzadzaj_baza.aspx.cs" Inherits="LotniskoASP_1.zabezpieczony.zarzadzaj_baza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CartLabel" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
    <asp:LoginName runat="server"/>

    <form id="form1" runat="server">
    



   
   

    
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    



   
   

    
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataSourceID="LinqDataSource1" DataKeyNames="ID">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Nazwa:
            <asp:TextBox ID="NazwaTextBox" runat="server" Text='<%# Bind("Nazwa") %>' />
            <br />
            Cena:
            <asp:TextBox ID="CenaTextBox" runat="server" Text='<%# Bind("Cena") %>' />
            <br />
            Data:
            <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
            <br />
            Dodal:
            <asp:TextBox ID="DodalTextBox" runat="server" Text='<%# Bind("Dodal") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Nazwa:
            <asp:TextBox ID="NazwaTextBox" runat="server" Text='<%# Bind("Nazwa") %>' />
            <br />
            Cena:
            <asp:TextBox ID="CenaTextBox" runat="server" Text='<%# Bind("Cena") %>' />
            <br />
            Data:
            <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
            <br />
            Dodal:
            <asp:TextBox ID="DodalTextBox" runat="server" Text='<%# Bind("Dodal") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Nazwa:
            <asp:Label ID="NazwaLabel" runat="server" Text='<%# Bind("Nazwa") %>' />
            <br />
            Cena:
            <asp:Label ID="CenaLabel" runat="server" Text='<%# Bind("Cena") %>' />
            <br />
            Data:
            <asp:Label ID="DataLabel" runat="server" Text='<%# Bind("Data") %>' />
            <br />
            Dodal:
            <asp:Label ID="DodalLabel" runat="server" Text='<%# Bind("Dodal") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    



   
   

    
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="LotniskoASP_1.ProduktyDataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
        TableName="Produkties">
    </asp:LinqDataSource>
    </form>


   
   

</asp:Content>
