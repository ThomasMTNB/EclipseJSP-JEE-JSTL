package servlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class DetailsAuteur
 */
@WebServlet("/DetailsAuteur")
public class DetailsAuteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AuteurDao Details = DaoFactory.getInstance().getAuteurDao();
		
		Auteur DetailsAuteur;
		
		long id = Long.parseLong(request.getParameter("id"));
		
		
		try {
			DetailsAuteur = Details.trouver(id);							// -------
			request.setAttribute( "Details", DetailsAuteur); // ("listeAuteur" , Bob.lister()) 
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/DetailsA.jsp").forward(request, response);
		
	
	}

}
