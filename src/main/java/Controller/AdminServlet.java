package Controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	       
	    	String id= request.getParameter("admin");
	    	String password= request.getParameter("password");
	    	RequestDispatcher dispatcher=null;
	    	try {
	    		if ("admin".equals(id) && "admin".equals(password)) {
					dispatcher=request.getRequestDispatcher("donorTable.jsp");
				}else {
					request.setAttribute("status", "failed");
					dispatcher=request.getRequestDispatcher("admin.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }

}
