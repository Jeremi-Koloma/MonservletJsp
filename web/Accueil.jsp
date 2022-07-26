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
    String fullName = request.getParameter("nom")+" "+request.getParameter("prenom");
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
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https : //fonts.googleapis.com/css2?family= Poppins: wght @100;300;400;600 & display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="container_accueil" >
            <div class="hometitle">
                <h1>Page d'Acceuil</h1>
                
            </div>
            
            <h3> Bienvenue : <% out.print(fullName); %> !</h3>
            
            <div class="menu">
                <nav>
                    <ul>
                        <li><a href="deconnexion">Déconnecter</a></li>
                        <li class="activPseudo"><a href="#"> <% out.print(fullName);%> </a></li>
                    </ul>
                </nav>
            </div>
                    
                    
                    
                    
                <table border=1 width="100%"> 
                    <tr> 
                        <td>Nom</td>
                        <td>Prenom</td> 
                        <td>pseudo</td>
                        <td>email</td>
                    </tr>              
                    
                    <% 
                        //Recupérer la session de l'utilisateur;
                        List<Utilisateur> liste = (ArrayList <Utilisateur>) session.getAttribute("liste");
                        for (Utilisateur u: liste){
                       
                    %>
                    
                    <tr>
                        <td><% out.print(u.getNom());%> </td>
                        <td><% out.print(u.getPrenom());%> </td>
                        <td><% out.print(u.getPseudo());%> </td>
                        <td><% out.print(u.getEmail());%> </td>   
                        
                    </tr>
                    <%}%>
                    
                   
                    
                </table>    
                    
                    
                    
          
        </div>
                 
    </body>
</html>

