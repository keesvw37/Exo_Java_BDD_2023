<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    </p>

    <%-- Conversion to an numeric array--%>
    <%
        int[] chiffres = new int[tableauDeChiffres.length];
        for (int i = 0; i < tableauDeChiffres.length; i++) {
            chiffres[i] = Integer.parseInt(tableauDeChiffres[i]);
    %>
     Chiffre <%= i %> : <%= chiffres[i] %><br>
    <% } %>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>

<p> Le carré de la première valeur est <%= chiffres[0] * chiffres[0] %> </p>

<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>

<p> La somme des 2 premières valeur est <%= ((chiffres[0])+(chiffres[1])) %></p>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>

<%
    int sum = 0;
    for (int i = 0; i < chiffres.length; i++) {
        sum += chiffres[i];
    }
%>
<p> La somme de toutes les valeurs <%= sum %></p>

<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>

<%
    int max = 0;
    for (int i = 0; i < chiffres.length; i++) {
        if (chiffres[i] > max) {
            max = chiffres[i]; 
        }
    }
%>
<p> La valeur maximum est  <%= max %></p>

<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
