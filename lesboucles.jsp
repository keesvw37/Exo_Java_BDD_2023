<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles exc 1 --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= cpt; j++) { %>
       <%= "*" %>
    <% } %>
       <%= "</br>" %>
    <% } %>
    </p>

<%-- Boucle for pour afficher une ligne d'étoiles exc 2 --%>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= i; j++) { %>
       <%= "*" %>
    <% } %>
       <%= "</br>" %>
    <% } %>
    </p>

<%-- Boucle for pour afficher une ligne d'étoiles exc 3 --%>
    <p>
    <% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
       <%= "*" %>
    <% } %>
       <%= "</br>" %>
    <% } %>
    </p>

<%-- Boucle for pour afficher une ligne d'étoiles exc 4 --%>
    <p>
    <% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
       <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 0; k <= i; k++) { %>
       <%= "*" %>
    <% } %>
       <%= "</br>" %>
    <% } %>
    </p>

<%-- Boucle for pour afficher une ligne d'étoiles exc 5 --%>
    <p>
    <% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
       <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 0; k <= i; k++) { %>
       <%= "*" %>
       <%= "&nbsp;" %>
    <% } %>
       <%= "</br>" %>
    <% } %>
    </p>

<%-- Boucle for pour afficher une ligne d'étoiles exc 6 --%>
    <p>
    <% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
       <%= "&nbsp;" %>
    <% } %>
    <% for (int k = 0; k <= i; k++) { %>
       <%= "*" %>
    <% } %>
       <%= "</br>" %>
    <% } %>

    <% for (int i = 0; i < cpt; i++) { %>
    <% for (int k = 0; k <= i; k++) { %>
       <%= "&nbsp;" %>
    <% } %>
    <% for (int j = 0; j < cpt - i; j++) { %>
       <%= "*" %>
    <% } %>
       <%= "</br>" %>
    <% } %>
    </p>

<%-- La table de multiplication exc 7 --%>

<p>
<% for (int i = 1; i <= cpt; i++) { %>
<%= i + " x " + cpt + " = " + (i * cpt) %><br> %>
<% } %>
</p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
