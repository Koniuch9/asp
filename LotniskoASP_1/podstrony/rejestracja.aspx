<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rejestracja.aspx.cs" Inherits="LotniskoASP_1.podstrony.rejestracja" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rejestracja</title>
		<meta content="text/html; charset=UTF-8" />		
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
				
			</div>
		</div>	
	<div id="container">			
		<div id="menu">
		<div id="menu_items">
		
			<ul>
				<li><a href="dla_pilota.html">Dla pilota</a></li>
				<li><a href="forum.html">Forum</a></li>
				<li><a href="galeria.html">Galeria</a></li>
				<li><a href="#mail_us">Kontakt</a></li>
				<li><a href="#">Kalendarz imprez</a></li>
				<li><a href="#">Historia</a></li>
				<li><a href="szkolenia.html">Szkolenia pilotów</a></li>
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
		
			
			
            <div id="content_register">
		<h2>Rejestracja</h2>
		<form id="register_form" runat="server">
			<div id="register_form_left">
				
				
					Imię: <br/>
                    <asp:TextBox ID="imie" runat="server"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="To pole jest wymagane." ControlToValidate="imie" 
                        ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="imie" ErrorMessage=" Tylko litery i spacje" 
                        ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]+" Display="Dynamic"></asp:RegularExpressionValidator>
                    <br/>
					Nazwisko<br/><asp:TextBox ID="nazw" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="To pole jest wymagane." ControlToValidate="nazw" 
                        ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="nazw" ErrorMessage=" Nazwiska dwuczłonowe oddzielone myślnikiem" 
                        ForeColor="#CC0000" ValidationExpression="[a-zA-Z]+(-[a-zA-Z]+)?" Display="Dynamic"></asp:RegularExpressionValidator>
                    <br/>			
					Login:<br/><asp:TextBox ID="log" runat="server"></asp:TextBox>
                    <br/>	
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="To pole jest wymagane." ControlToValidate="log" 
                        ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>	<br/>								
					Hasło:<br/><asp:TextBox ID="pass" 
                        runat="server" EnableTheming="True" TextMode="Password"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="To pole jest wymagane." ControlToValidate="pass" 
                        ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator><br/>
					Powtóz hasło:<br/><asp:TextBox ID="pass_repeat" runat="server" 
                        TextMode="Password"></asp:TextBox>
                    <br/>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="To pole jest wymagane." ControlToValidate="pass_repeat" 
                        ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>

					<asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage=" Powtórzone hasło się nie zgadza" ForeColor="#CC0000" Display="Dynamic" ControlToCompare="pass" ControlToValidate="pass_repeat"></asp:CompareValidator><br/>
                        
					Email:<br/><asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="To pole jest wymagane. " ControlToValidate="email" 
                        ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="email" ErrorMessage=" Nieprawidłowy format email" 
                        ForeColor="#CC0000" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    <br/>			
				
				
			</div>
            <div id="register_form_right">
                
                <asp:Label ID="Label1" runat="server" Text="labelka"></asp:Label>
                
            </div>			
			<div id="register_form_down">			
			<input type="submit" value="Dalej" />
			<input type="reset" />
			</div>
			</form>
		</div>	
        
		
		
	</div>			
	</div>	
	</body>
</html>
