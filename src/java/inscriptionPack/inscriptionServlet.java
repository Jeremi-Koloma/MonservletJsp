/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package inscriptionPack;

import java.io.IOException;
import java.io.PrintWriter;
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
        
            String nom = (String) request.getParameter("nom");
            String prenom = (String) request.getParameter("prenom");
            String pseudo = (String) request.getParameter("pseudo");
            String email = (String) request.getParameter("email");
            String pwd = (String) request.getParameter("password");
            String pwd_confirm = (String) request.getParameter("password_confirm");
            //Vérifions si les champs du formulaion Inscription ne sont pas vide;
        if( !nom.equals("") && !prenom.equals("") && !pseudo.equals("") && !email.equals("") && !pwd.equals("") && !pwd_confirm.equals("")){
            
                // vérifions si les mots de passes sont identique;
                if(pwd.equals(pwd_confirm)){

                        //Demarrer la session;
                        HttpSession session = request.getSession();
                        //l'Ajouter à la liste des utilisateurs;
                        Utilisateur user = new Utilisateur(nom,prenom,pseudo,email,pwd,pwd_confirm);
                        liste.add(user);
                        session.setAttribute("liste", liste);
                        //Si tout marche bien, Alors rediriger vers la page d'Accueil;
                        RequestDispatcher redirection = request.getRequestDispatcher("Accueil.jsp");
                        redirection.forward(request, response);
                        
                        
                        
                        
                        
                        
                        
                    
                }else {
                        // Sinon si les mots de passe sont incorrect (message d'erreur);
                        try(PrintWriter out = response.getWriter()){
                            out.println("<!DOCTYPE html>");
                            out.println("<html>");
                                out.println("<head>");
                                    out.println("<title> information incorrect </title>");
                                out.println("</head>");
                                out.println("<body>");
                                    out.println("<h1> Mots de passe incorrect </h1>");
                                out.println("</body>");
                            out.println("</html>");
                        }
                    }
        }
        else {
                        // Sinon si les champs sont vide;
                        try(PrintWriter out = response.getWriter()){
                            out.println("<!DOCTYPE html>");
                            out.println("<html>");
                                out.println("<head>");
                                    out.println("<title> essayez </title>");
                                out.println("</head>");
                                out.println("<body>");
                                    out.println("<h1> Veillez renseigner tous les champs </h1>");
                                out.println("</body>");
                            out.println("</html>");
                        }
                    }
       
      //this.getServletContext().getRequestDispatcher("/Accueill.jsp").forward(request, response);
       
        
        
    }

  
}
