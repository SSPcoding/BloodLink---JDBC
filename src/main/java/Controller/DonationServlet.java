package Controller;

import java.io.IOException;
import java.security.Provider.Service;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

import Dao.DonorDao;
import Pojo.Donors;

/**
 * Servlet implementation class DonationServlet
 */
public class DonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Service service;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String dname = request.getParameter("dname");
		String dphone = request.getParameter("dphone");
		String dmail = request.getParameter("dmail");
		String daddress = request.getParameter("daddress");
		int dage = Integer.parseInt(request.getParameter("dage"));
		String dblood_group = request.getParameter("dblood_group");
		String diseases = request.getParameter("diseases");
		String dsymptoms = request.getParameter("dsymptoms");
		
		Donors donor = new Donors(dname, dphone, dmail,daddress, dage, dblood_group, diseases, dsymptoms);
		
		DonorDao d=new DonorDao();
		d.save(donor);
		 String destination = "DonationConfirmation.jsp";
	        
	        // Use RequestDispatcher to forward the request to the JSP page
	        RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
	        dispatcher.forward(request, response);
	}

}
