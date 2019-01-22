<%@ Page Language="C#" MasterPageFile="~/Lotnisko.Master" AutoEventWireup="true" CodeBehind="produkty.aspx.cs" Inherits="LotniskoASP_1.sklep.produkty" %>
<asp:Content ContentPlaceHolderID="CartLabel" runat="server" ID="cart_label">
    <a href="/sklep/koszyk.aspx"><img src="/grafika/cart.png" alt="" width="50px" height="50px" id="cart"/></a>
<asp:Label ID="produkt_qty" runat="server" Text="" CssClass="cart_label"></asp:Label>
</asp:Content>
	
<asp:Content ContentPlaceHolderID="PageContent" ID="productsContent" runat="server">
    <form id="form1" runat="server">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" BackColor="#0099FF" RepeatDirection="Horizontal"
                    Width="841px" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="speedometer">Prędkościomierz</asp:ListItem>
                    <asp:ListItem Value="variometer">Wariometr</asp:ListItem>
                    <asp:ListItem Value="horizon">Sztuczny horyzont</asp:ListItem>
                    <asp:ListItem Value="panel">Panel</asp:ListItem>
                    <asp:ListItem Value="altitude">Wysokościomierz</asp:ListItem>
                    <asp:ListItem Value="rpm">Obrotościomierz</asp:ListItem>
                </asp:RadioButtonList>
                <asp:CheckBoxList ID="products" runat="server" CssClass="checkbox_table" OnSelectedIndexChanged="Click">
                </asp:CheckBoxList>
                <asp:Label ID="Label1" runat="server" Text="Ilość"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number">1</asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Dodaj do koszyka" OnClick="Button1_Click" />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Więcej niż 0, mniej niż 100" ForeColor="#CC0000" MaximumValue="100"
                    MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </form>
</asp:Content>

