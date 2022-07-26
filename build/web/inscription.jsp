<%-- 
    Document   : inscription
    Created on : 24 juil. 2022, 00:05:14
    Author     : niam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="fr">
    <head>
        <title>Inscription</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https : //fonts.googleapis.com/css2?family= Poppins: wght @100;300;400;600 & display=swap" rel="stylesheet">
    </head>
    <body>
        
        <div class="container_form" >
            <section class="form_section">
                <header>
                    <h1>Inscription</h1>
		</header>
                <form  method="post" action="inscription">
                    
                    <div class="form_champ input">
                        <label for="nom"> </label>
                        <p><input type="text" name="nom" id="nom" placeholder="Nom" /> </p>
                    </div>
                    
                    <div class="form_champ input">
                        <label for="prenom"> </label>
                        <p><input type="text" name="prenom" id="prenom" placeholder="Prénom" /> </p>
                    </div>
                    
                    <div class="form_champ input">
                        <label for="pseudo"> </label>
                        <p><input type="text" name="pseudo" id="pseudo" placeholder="Pseudo" /> </p>
                    </div>
                    
                    <div class="form_champ input">
                        <label for="email"> </label>
                        <p><input type="email" name="email" id="email" placeholder="E-mail" /> </p>
                    </div>
                    
                    <div class="form_champ input">
                        <label for="password"> </label>
                        <p><input type="password" name="password" id="password" placeholder="Mots de passe :" /> </p>
                    </div>
                    <div class="form_champ input">
                        <label for="password_confirm"> </label>
                        <p> <input type="password" name="password_confirm" id="password_confirm" placeholder="Confirmer votre mots de passe :" /> </p>
                    </div>
                    <!-- bouton s'inscrire -->
                    <div class="form_champ boutton">
                        <p> <input type="submit" name="btn_inscire" value="S'inscrire"/> </p>
                    </div>
                    <p>Vous avez déja un compte?</p>
                    
                    <div class="form_champ boutton2">
                        <a href="login.jsp">Se connecter</a>
                    </div>
                    
            </form>
            </section>
        </div>
        
        
        
        
    </body>
</html>

