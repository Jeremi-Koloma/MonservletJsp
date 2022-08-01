/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package inscriptionPack;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import userspack.Utilisateur;

/*
 *
 * @author niam
 */

@WebServlet(name = "inscriptionServlet", urlPatterns = {"/inscription"})
public class inscriptionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    List<Utilisateur> liste = new ArrayList();

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //recupérer les champs du formulaire;
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String pseudo = request.getParameter("pseudo");
            String email = request.getParameter("email");
            String pwd = request.getParameter("password");
            String pwd_confirm = request.getParameter("password_confirm");
            
             //Affichage des valeurs du formulaire en cas d'error;
            request.setAttribute("nom",nom);
            request.setAttribute("prenom", prenom);
            request.setAttribute("pseudo", pseudo);
            request.setAttribute("email", email);
            request.setAttribute("password",pwd);
            request.setAttribute("password_confirm", pwd_confirm);
            
            //Vérifions si les champs du formulaion Inscription ne sont pas vide;
        if( !nom.equals("") && !prenom.equals("") && !pseudo.equals("") && !email.equals("") && !pwd.equals("") && !pwd_confirm.equals("")){

                // vérifions si les mots de passes sont identique;
                if(pwd.equals(pwd_confirm)){
                    // vérifions Si le mots de passe est fort alors on passe;
                        if(pwd.length()>5){
                            //Demarrer la session;
                            HttpSession session = request.getSession();
                            //l'Ajouter à la liste des utilisateurs;
                            Utilisateur user = new Utilisateur(nom,prenom,pseudo,email,pwd,pwd_confirm);
                            liste.add(user);
                            session.setAttribute("liste", liste);
                            //Si tout marche bien, Alors rediriger vers la page d'Accueil;
                            RequestDispatcher redirection = request.getRequestDispatcher("Accueil.jsp");
                            redirection.forward(request, response);
                        }else{

                            // Sinon si le mots de passe est faible;
                            request.setAttribute("error", "mots de passe faible !");
                            RequestDispatcher rd = request.getRequestDispatcher("inscription.jsp");
                            rd.include(request, response);
                        }
                        
                }else {
                        // Sinon si les mots de passe sont incorrect (message d'erreur);
                        request.setAttribute("error", "mots de passe incorrect !");
                        RequestDispatcher rd = request.getRequestDispatcher("inscription.jsp");
                        rd.include(request, response);
                    }
        }
        else {
                        // Sinon si les champs sont vide;
                        request.setAttribute("error", "Veillez renseigner tous les champs !");
                        RequestDispatcher rd = request.getRequestDispatcher("inscription.jsp");
                        rd.include(request, response);
                        
                    }
       
        
      //this.getServletContext().getRequestDispatcher("/Accueill.jsp").forward(request, response);
       
        
    }

  
}
