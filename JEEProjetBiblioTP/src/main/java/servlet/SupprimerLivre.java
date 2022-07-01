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
import dao.LivreDao;
import model.Auteur;

/**
 * Servlet implementation class SupprimerAuteur
 */
@WebServlet("/SupprimerLivre")
public class SupprimerLivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		LivreDao deletage = DaoFactory.getInstance().getLivreDao();
		

		long id = Long.parseLong(request.getParameter("id"));
		
		try {
			deletage.supprimer(id);			
			
			
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect( request.getContextPath() + "/ListeLivre" );
		
		
			
	}

}
