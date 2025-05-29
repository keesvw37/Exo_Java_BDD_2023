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
        boolean fini; 

        public Tache(String name, String desc, String date) {
            this.nameTache = name;
            this.description = desc;
            this.date = date;
            this.fini = false;
        }

        public void markAsFini() {
            this.fini = true;
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

    // Deletion handler
    String deleteIndexStr = request.getParameter("deleteIndex");
    if (deleteIndexStr != null) {
        try {
            int deleteIndex = Integer.parseInt(deleteIndexStr);
            if (deleteIndex >= 0 && deleteIndex < tasks.size()) {
                tasks.remove(deleteIndex);
            }
        } catch (NumberFormatException e) {
            // invalid deleteIndex passed
        }
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

<%
    String doneIndexStr = request.getParameter("doneIndex");
    if (doneIndexStr != null) {
        int doneIndex = Integer.parseInt(doneIndexStr);
        if (doneIndex >= 0 && doneIndex < tasks.size()) {
            tasks.get(doneIndex).markAsFini();
        }
    }
%>

<h2>Liste des tâches :</h2>
<ul>
<% for (int i = 0; i < tasks.size(); i++) {
       Tache t = tasks.get(i);
%>
    <li style="<%= t.fini ? "color:gray; text-decoration:line-through;" : "" %>">
        <strong><%= t.nameTache %></strong><br>
        Description : <%= t.description %><br>
        Date d’échéance : <%= t.date %><br>
        Statut : <%= t.fini ? "✅ Fait" : "⏳ À faire" %><br>

        <!-- Form to mark as done -->
        <% if (!t.fini) { %>
        <form action="#" method="post" style="display:inline;">
            <input type="hidden" name="doneIndex" value="<%= i %>">
            <input type="submit" value="Marquer comme fait">
        </form>
        <% } %>
        <form action="#" method="post" style="display:inline;">
            <input type="hidden" name="deleteIndex" value="<%= i %>">
            <input type="submit" value="Supprimer">
        </form>
    </li><br>
<% } %>
</ul>

<%
    }
%>

</body>
</html>
