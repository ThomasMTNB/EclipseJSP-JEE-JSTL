package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AuteurDao;
import dao.DaoException;
import dao.DaoFactory;
import model.Auteur;

/**
 * Servlet implementation class AjouterAuteur
 */
@WebServlet("/AjouterAuteur")
public class AjouterAuteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	AuteurDao ajout = DaoFactory.getInstance().getAuteurDao();
		

		
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	this.getServletContext().getRequestDispatcher("/WEB-INF/AjoutA.jsp").forward(request, response);	
		
	
	}





protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String nom = request.getParameter("nomAuteur");
	String prenom = request.getParameter("prenomAuteur");
	String telephone = request.getParameter("telAuteur");
	String email = request.getParameter("mailAuteur");
	
	Auteur newA = new Auteur();
	
	newA.setNom(nom);
	newA.setPrenom(prenom);
	newA.setTelephone(telephone);
	newA.setEmail(email);
	
	
	
	try {
		ajout.creer(newA);
	} catch (DaoException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	response.sendRedirect( request.getContextPath() + "/ListeAuteur" );
	
	
}


}