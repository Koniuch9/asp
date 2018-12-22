<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produkty.aspx.cs" Inherits="LotniskoASP_1.sklep.produkty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Produkty</title>
		<meta content="text/html; charset=UTF-8" />
		<meta name = "description" content = "Main Page"/>
		<meta name = "keywords" content = "lotnisko, latanie"/>
		<link rel="stylesheet" type="text/css" href="../moje_style.css"/>
	</head>
<body>
<img id="samolotik" src="../grafika/samolotik.gif" width="100px" height="56px" alt="Logo OKSL"/>	

	<div id="page">	
		<div id="banner_container">
			<div id="banner">
				
				<a href="../strona_glowna.html"><img id="logo" alt="Logo OKSL" src="../grafika/logo2.png"/></a>
				
				
					<h1 id="title">Obornicki Klub Sportów Lotniczych</h1>
					<p id="titlep">Golędzinów</p>
                <a href="koszyk.aspx"><img src="../grafika/cart.png" alt="" width="50px" height="50px" id="cart"/></a>
				<asp:Label ID="produkt_qty" runat="server" Text="" CssClass="cart_label"></asp:Label>	
			</div>
		</div>	
	<div id="container">			
		<div id="menu">
		<div id="menu_items">
		
			<ul>
				<li><a href="../podstrony/dla_pilota.html">Dla pilota</a></li>
				<li><a href="../podstrony/forum.html">Forum</a></li>
				<li><a href="../podstrony/galeria.html">Galeria</a></li>
				<li><a href="#mail_us">Kontakt</a></li>
				<li><a href="#">Kalendarz imprez</a></li>
				<li><a href="#">Historia</a></li>
				<li><a href="../podstrony/szkolenia.html">Szkolenia pilotów</a></li>
				<li><a href="#">Piknik lotniczy</a>
					<ul>
						<li><a href="#">O imprezie</a>
							<ul>
								<li><a href="#">Zaproszenie</a></li>
								<li><a href="#">Program</a></li>							
							</ul>
						</li>
						<li><a href="#">Partnerzy i Sponsorzy</a></li>
					</ul>
				</li>
			</ul>
		
		</div>
		</div>

    

        <div id="content">
        <form id="form1" runat="server">
            
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" BackColor="#0099FF" 
                RepeatDirection="Horizontal" Width="841px" AutoPostBack="True">
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
            <asp:Button ID="Button1" runat="server" Text="Dodaj do koszyka" 
                onclick="Button1_Click" />
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Więcej niż 0, mniej niż 100" 
                ForeColor="#CC0000" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        </form>
        </div>
   
        <div id="right_menu">
			<div id="join_us">
           
			<p id="powitanie"></p>
             <div id="login">
					Login:<input class="login_form" id="nick" type="text"/><br/><br/>
					Hasło:<input class="login_form" id="haslo" type="text"/><br/><br/>
					<button id="logbutton">Zaloguj</button>
             </div>
				<div id="register">
					<a href="#" id="zapomnial">Zapomniałeś hasła?</a><br/>
					<a href="../podstrony/rejestracja.aspx">Zarejestruj się</a>
				</div>
			</div>
			
			<div id="mail">
				<a name="mail_us" href="mailto:koniu95@interia.pl">Wyślij nam maila!</a>
			</div>
		</div>
    <div>
    
    </div>
    

    </div>
    </div>
</body>
</html>
