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
import model.Livre;

/**
 * Servlet implementation class DetailsLivre
 */
@WebServlet("/DetailsLivre")
public class DetailsLivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		LivreDao Details = DaoFactory.getInstance().getLivreDao();
		
		Livre DetailsLivre;
		
		long id = Long.parseLong(request.getParameter("id"));
		
		
		try {
			DetailsLivre = Details.trouver(id);							// -------
			request.setAttribute( "Details", DetailsLivre); // ("listeAuteur" , Bob.lister()) 
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/DetailsL.jsp").forward(request, response);
		
	
	}

}

