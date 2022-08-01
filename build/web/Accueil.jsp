<%-- 
    Document   : inscription
    Created on : 24 juil. 2022, 00:05:14
    Author     : niam
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="userspack.Utilisateur"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


 <% 
    String fullName = request.getParameter("prenom")+" "+request.getParameter("nom");
%>

 

<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="fr">
    <head>
        <title>Accueil</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link href="https : //fonts.googleapis.com/css2?family= Poppins: wght @100;300;400;600 & display=swap" rel="stylesheet">
        <script src="https://use.fontawesome.com/2f1f8b47c6.js"></script>
    </head>
    <body>
        
        <div class="banner">
            <!-- le menu -->
            <div class="navbar">
                <img src="images/logo1.png" alt="logo" class="logo" />
                <ul>
                    <li><a href="#">Accueil</a></li>
                    <li><a href="deconnexion">Se Déconnecter</a></li>
                    <li class="activPseudo"><a href="#"><% out.print(fullName);%></a></li>
                </ul>
            </div>
            <!-- le contenu -->
            <div class="contenu">
                <h1>BIENVENUE <span><% out.print(fullName); %> ! </span></h1>
                <p><i class="fas fa-clock"></i> Pour voir la liste des personnes inscrits, veillez cliquez le bouton voir liste </p>
                
                <div class="btnliste">
                    <button class="bouttonListeJs" type="button"> Voire la liste </button>
                </div>
                
                
                
                
                <div class="listPersonCover hidden">
                
                 <div class="btnClose">
                    <button><i class="fa fa-close" aria-hidden="true"></i> </button>
                </div>
            
                <div class="listePersonseContainer">
                        <% 
                        //Recupérer la session de l'utilisateur;
                        List<Utilisateur> liste = (ArrayList <Utilisateur>) session.getAttribute("liste");
                        for (Utilisateur u: liste){
                       
                        %>
                       <div class="personneListe">   
                       
                            <span><i class="fa fa-user" aria-hidden="true"></i>  <% out.print(u.getPrenom());%> </span>
                            <span><% out.print(u.getNom());%></span>
                            <p><% out.print(u.getPseudo());%></p>
                            <p><% out.print(u.getEmail());%></p>
                                
                            
                        </div>
                            <%}%> 
                                
                </div>
                
            </div>
        </div>
        </div>
       <div class="flux hidden"></div>     
    <script src="JS/script.js" defer></script>
    </body>
</html>

