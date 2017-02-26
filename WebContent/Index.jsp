<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,Beans.*"%>
<%
	Utente utente = (Utente) session.getAttribute("user");

	if (utente != null) {
		response.sendRedirect("Indexlog.jsp");
		// SIMULA LA SESSIONE
		//utente = new Utente("a","a","a","a",true,true);

	} else {

	}
%>

<!DOCTYPE HTML>
<html>
<head>
<title>RBR Store</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style/style.css"
	title="style" />
<link rel="stylesheet" href="style/responsive.css">
  <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>


<body>
	<section id="main">
		<header>
			<section id="logo">
				<section id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="Index.jsp"><img><span class="logo_colour"></span></a>
					</h1>
					<h2></h2>
				</section>
				<!-- La top_menu continene i pulsanti di sign_up & login.-->
				<section id="top_menu">
					<a href="Login.jsp" class="login">login</a> <a
						href="Registrati.jsp" class="sign_up">register</a> <a
						href="Carrello.jsp" class="carrello">carrello</a>
				</section>
			</section>
			<section id="menubar">
				<ul id="menu">
					<!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
					<li class="selected"><a href="Index.jsp">Home</a></li>
					<li><a href="Prodotti.jsp">Prodotti</a></li>
					<li><a href="Registrati.jsp">Registrati</a></li>
					<li><a href="Login.jsp">Login</a></li>
					<li><a href="Carrello.jsp">Carrello</a></li>
				</ul>
			</section>
		</header>
		<section id="site_content">
			<aside>
				<!-- insert your sidebar items here -->
				<h4></h4>
				<h5>14/02/2017</h5>
				<p>
					Il sito simula un e-commerce non inserire dati per pagamento.<br />
					<a href="https://www.redbullshop.com/en/">Store Reale</a>
				</p>
				<p></p>
				<h3>Collegamenti Utili</h3>
				<ul>
					<li><a href="http://www.redbull.com/it/it">RedBull
							official site</a></li>
					<li><a href="https://www.redbullshop.com/en/">RedBull
							Store</a></li>
					<li><a href="https://www.formula1.com">Formula 1 official
							site</a></li>
					<li><a
						href="http://f1store.formula1.com/stores/F1/it?portal=CHMHGTFG&CMP=PSC-CHMHGTFG">Formula
							1 Store</a></li>
				</ul>
				<h3>Cerca Prodotto</h3>
				<form id="search" method="get" action="CercaProdottiServlet">
					<p>
						<input class="search" type="text" name="nomeProdotto"
							placeholder="Cerca Prodotto..." /> <input name="search"
							type="image" style="border: 0; margin: 0 0 -9px 5px;"
							src="style/search.png" alt="Search" title="Search" />
					</p>
				</form>
			</aside>
			<section id="content">
				<!-- insert the page content here -->
				<h1 id="go1">Benvenuti sul simulation store RBR</h1>
				<p id="block1">
					Questo è un sito creato solo a scopo illustrativo e didattico,
					infatti non è possibile effettuare veri e propri acquisti ma solo
					simularli. Sito creato da <a href="#tonno">Francesco Garofalo</a>
				</p>
				<p id="block2">
					Questo sito è stato scritto in <strong>HTML5</strong>,<strong>CSS</strong>,<strong>JSP</strong>,
					<strong>Java Servlet</strong>,<strong>JS</strong> e altri
					linguaggi...
				</p>
				<p id="g2">
					Lo store ufficiale della Red Bull Racing è disponibile al sito <a
						href="https://www.redbullshop.com/en/?gclid=Cj0KEQiAifvEBRCVx5up6Ojgr5oBEiQALHw1TgpPafl_1kKOXq0tPfArUF5qBgkYxR7vigpNOMSgb_gaAu0O8P8HAQ">Red
						Bull Store</a>

				</p>
				<h3>Ti interessa un prodotto RBR, cercalo qui!</h3>
				<form method="post" action="CercaProdottiServlet" id="search_form">
					<p>
						<input class="search" type="text" name="search_field"
							placeholder="Cerca Prodotto..." /> <input name="search"
							type="image" style="border: 0; margin: 0 0 -9px 5px;"
							src="style/search.png" alt="Search" title="Search" />
					</p>
				</form>
							<script>
					$("#go1").click(function() {
						$("#block1").animate({
							width : "90%"
						}, {
							queue : false,
							duration : 3000
						}).animate({
							fontSize : "24px"
						}, 1000).animate({
							borderRightWidth : "15px"
						}, 1000);
					});
					$("#go2").click(function() {
						$("#block2").animate({
							width : "90%"
						}, 1000).animate({
							fontSize : "24px"
						}, 1000).animate({
							borderRightWidth : "15px"
						}, 1000);
					});
				</script>
				<h2>Compatibilità Browser</h2>
				<p>Testato con:</p>
				<ul>
					<li>Internet Explorer 11</li>
					<li>Opera 43</li>
					<li>Edge</li>
					<li>Internet Explorer 11 for mobile</li>
					<li>Opera responsive tools</li>
				</ul>
			</section>
		</section>
		<footer></footer>
		<section id="footer">
			Copyright Template fornito da: &copy; colour_blue, WebApplication
			creata da &copy; Francesco Garofalo con la collaborazione di Anna Tomeo | <a
				href="http://validator.w3.org/check?uri=referer" name="tonno">HTML5</a>
			| <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
			| <a href="AdminLogin.jsp">Accedi come Admin</a>
		</section>
	</section>
</body>
</html>
