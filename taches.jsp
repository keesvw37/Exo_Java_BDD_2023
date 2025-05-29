<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Taches</title>
</head>
<body bgcolor=white>
<h1>Saisir une tache</h1>
<form action="#" method="post">

    <label for="inputValeur">Saisir le nom d'une tache : </label>
    <input type="text" id="inputValeur" name="valeur">
    <br>
    <label for="inputDescription">Saisir le description du tache : </label>
    <input type="text" id="inputDescription" name="description">
    <br>
    <label for="inputDate">Saisir la date d'echeance du tache : </label>
    <input type="text" id="inputDate" name="date">
    <br>
    <input type="submit" value="Enregistrer">

</form>

<%! 
    class Tache {
        String nameTache;
        String description;
        String date;

        public Tache(String name, String desc, String date) {
            this.nameTache = name;
            this.description = desc;
            this.date = date;
        }
    }
%>

<%
    // Get or create the list of tasks
    ArrayList<Tache> tasks = (ArrayList<Tache>) session.getAttribute("tasks");
    if (tasks == null) {
        tasks = new ArrayList<>();
        session.setAttribute("tasks", tasks);
    }

    String valeur = request.getParameter("valeur");
    String description = request.getParameter("description");
    String date = request.getParameter("date");

    if (valeur != null && !valeur.isEmpty()) {
        Tache newTache = new Tache(valeur, description, date);
        tasks.add(newTache); // Add task to the list


%>
        <p>Nom de la tâche : <%= newTache.nameTache %></p>
        <p>Description : <%= newTache.description %></p>
        <p>Date : <%= newTache.date %></p>
<br>
<h2>Liste des tâches :</h2>
<ul>
<% for (Tache t : tasks) { %>
    <li>
        <strong><%= t.nameTache %></strong><br>
        Description : <%= t.description %><br>
        Date d’échéance : <%= t.date %>
    </li><br>
<% } %>
</ul>

<%
    }
%>

</body>
</html>
