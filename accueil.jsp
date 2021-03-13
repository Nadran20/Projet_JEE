<html>  

<head>
    <link rel="stylesheet" type="text/css" href="styleCSS/body.css" />
    <link rel="stylesheet" type="text/css" href="styleCSS/accueil.css" />
</head>

<body>
    <div id="forms">
    <div id="text">
    <%
    String login = (String) request.getAttribute("login");
    String msg = (String) request.getAttribute("msg");
    if (login!=null){
        out.println("Bienvenue dans votre espace bibliothécaire "+login);
    }
    if (msg!=null){
        out.println(msg);
    }
    %>
    </div>
    </br>
    
    <form action="./ajouterDoc.jsp" method="post">
        <div class="button">
            <button type="submit" id="ajouter" required minlength="1">Ajouter un document</button>
        </div>
    </form>
    <form action="./ChoixDelete" method="post">
        <div class="button">
            <button type="submit" id="supprimer" required minlength="1">Supprimer un document</button>
        </div>
    </form>
    <form action="./ServiceDeconnexion" method="post">
        <div class="button" id="deconnexion">
            <button type="submit" id="deconnexion">Deconnexion</button>
        </div>
    </form>
    </div>
</body>

<footer>
</footer>

</html>