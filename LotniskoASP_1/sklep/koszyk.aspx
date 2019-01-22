<%@ Page Language="C#" MasterPageFile="~/Lotnisko.Master" AutoEventWireup="true" CodeBehind="koszyk.aspx.cs" Inherits="LotniskoASP_1.sklep.koszyk" %>
<asp:Content ContentPlaceHolderID="CartLabel" runat="server" ID="cart_label">
    <a href="/sklep/koszyk.aspx"><img src="/grafika/cart.png" alt="" width="50px" height="50px" id="cart"/></a>
<asp:Label ID="produkt_qty" runat="server" Text="" CssClass="cart_label"></asp:Label>
</asp:Content>
<asp:Content ContentPlaceHolderID="PageContent" ID="CartContent" runat="server">
<form id="form1" runat="server">
            <div id="cart_content" runat="server">
            
                
            
            </div>
            <asp:CheckBoxList ID="order_content" runat="server" CssClass="checkbox_table" 
                 AutoPostBack="True" CausesValidation="True" ValidationGroup="valid">            
            </asp:CheckBoxList>
            <asp:Label ID="Label1" runat="server" Text="Ilość: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" 
                ValidationGroup="valid"></asp:TextBox>
            <asp:RangeValidator
                ID="RangeValidator1" runat="server" ErrorMessage="Pomiędzy 0 a 100" 
                ControlToValidate="TextBox1" MaximumValue="100" MinimumValue="0" 
                Type="Integer" ValidationGroup="valid"></asp:RangeValidator><br />
                <asp:Button ID="Button2" runat="server" Text="Wyczyść" 
                onclick="Button2_Click" /><br />  
            <asp:Label ID="Label2" runat="server" Text="Wybierz sposób zapłaty"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Selected="True">Przelew</asp:ListItem>
                <asp:ListItem>Karta</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label3" runat="server" Text="Wybierz formę dostawy"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True" Value="Kurier">Kurier - 7,99zł</asp:ListItem>
                <asp:ListItem Value="Paczkomat">Paczkomat - 5zł</asp:ListItem>
                <asp:ListItem Value="Poczta">Poczta - 9,99zł</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label4" runat="server" Text="Cena całkowita: "></asp:Label>
            <asp:Label ID="koszt" runat="server" Text="Label"></asp:Label>
            <br />            
        
            

            <asp:Button ID="Button1" runat="server" Text="Dalej" onclick="Button1_Click"  />  
        </form>
</asp:Content>
