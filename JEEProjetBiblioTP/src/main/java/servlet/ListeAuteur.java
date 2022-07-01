package servlet;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class ListeAuteur
 */
@WebServlet("/ListeAuteur")
public class ListeAuteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AuteurDao bob = DaoFactory.getInstance().getAuteurDao();
		
		List<Auteur> ListAuteur;
		
		try {
			ListAuteur = bob.lister();							// -------
			request.setAttribute( "listeAuteur", ListAuteur); // ("listeAuteur" , bob.lister()) 
			
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/ListA.jsp").forward(request, response);
		
	
	}

}
