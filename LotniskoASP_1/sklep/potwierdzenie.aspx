<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Lotnisko.Master" CodeBehind="potwierdzenie.aspx.cs" Inherits="LotniskoASP_1.sklep.potwierdzenie" %>
<asp:Content ContentPlaceHolderID="CartLabel" runat="server" ID="cart_label">
    <a href="/sklep/koszyk.aspx"><img src="/grafika/cart.png" alt="" width="50px" height="50px" id="cart"/></a>
<asp:Label ID="produkt_qty" runat="server" Text="" CssClass="cart_label"></asp:Label>
</asp:Content>
<asp:Content ContentPlaceHolderID="PageContent" runat="server" ID="ConfirmContent">
    <form id="form1" runat="server">
                <div id="confirm_content" runat="server">
                    
                    
                    
                </div>
                <asp:Button ID="Button1" runat="server" Text="Powrót do sklepu" 
                        onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Opłać zamówienie" 
                    onclick="Button2_Click" />
            </form>
</asp:Content>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Koszyk</title>
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
				<asp:Label ID="produkt_qty" runat="server" Text="Label" CssClass="cart_label"></asp:Label>	
			</div>
		</div>	
	<div id="container">			
		<div id="menu">
		<div id="menu_items">
		
			<ul>
				<li><a href="../podstrony/dla_pilota.html">Dla pilota</a></li>
				<li><a href="../podstrony/forum.html">Forum</a></li>
                <li><a href="produkty.aspx">Sklep</a></li>
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
                <div id="confirm_content" runat="server">
                    
                    
                    
                </div>
                <asp:Button ID="Button1" runat="server" Text="Powrót do sklepu" 
                        onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Opłać zamówienie" 
                    onclick="Button2_Click" />
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
</html>--%>