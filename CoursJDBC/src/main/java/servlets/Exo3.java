package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Exo3
 */
@WebServlet("/exo3")
public class Exo3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("prenom", request.getParameter("prenom"));
		request.setAttribute("nom", request.getParameter("nom"));
		this.getServletContext().getRequestDispatcher("/WEB-INF/Exo3.jsp").forward(request, response);
	}


}
