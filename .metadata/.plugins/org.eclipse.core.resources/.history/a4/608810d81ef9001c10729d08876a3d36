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
 * Servlet implementation class ModifierAuteur
 */
@WebServlet("/ModifierAuteur")
public class ModifierAuteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	AuteurDao modif = DaoFactory.getInstance().getAuteurDao();
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Auteur trouver;
		
		long id = Long.parseLong(request.getParameter("id"));
		
		
		try {
			trouver = modif.trouver(id);							
			request.setAttribute( "auteur", trouver); 
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/ModifA.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String nom = request.getParameter("newNomAuteur");
		String prenom = request.getParameter("newPrenomAuteur");
		String telephone = request.getParameter("newTelAuteur");
		String email = request.getParameter("newMailAuteur");
		
		long id = Long.parseLong(request.getParameter("id"));
		
				
		try {
			
			Auteur modifier = modif.trouver(id);
			
			modifier.setNom(nom);
			modifier.setPrenom(prenom);
			modifier.setTelephone(telephone);
			modifier.setEmail(email);
			
			
			
			modif.update(modifier);
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		response.sendRedirect( request.getContextPath() + "/ListeAuteur" );
	}	

}
