package servlet;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FruitServlet
 */

public class FruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FruitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    ArrayList <String> ListeFruit = new ArrayList<>();
    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ListeFruit.add("Bannane");
		ListeFruit.add("Pomme");
		ListeFruit.add("Je suis faché");
		
		request.setAttribute("fruit", ListeFruit);
		
		
	
		
		
		
		String param = request.getParameter("isGood");

		int isGood;
		if (param == null) {
			isGood = 0;
		} else {
			try {
				
				isGood = Integer.valueOf(param);
				
			} catch (Exception e) {
				isGood = 0;
			}
		}
		
		String isItGood;
		
		if (isGood==0) {
			isItGood="C'est pas bon";
		} else {
			isItGood="C'est bon !";
		}
		

		request.setAttribute("isGood", isItGood);
		
		
		String nom = request.getParameter("nom");
		

		if (nom == null ) {
			nom = "pas de nom";
		}
		

		
			request.setAttribute("nom", nom);


			

		
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/Fruit.jsp").forward(request, response);
		
	}


}


/*
if (request.getParameter("isGood").equals("o")) {
	result = "c'est pas bon" 	
}
else {
	result = "c'est bon"
}

request.setAttribute("result", result);

*/










