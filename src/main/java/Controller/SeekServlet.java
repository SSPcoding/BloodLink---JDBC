package Controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Dao.SeekDao;
import Pojo.Seek;
/**
 * Servlet implementation class SeekServlet
 */
public class SeekServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String pname = request.getParameter("name");
		String pphone = request.getParameter("phone");
		String pmail = request.getParameter("email");
		String paddress = request.getParameter("address");
		int age = Integer.parseInt(request.getParameter("age"));
		String pgender = request.getParameter("gender");
		String pblood = request.getParameter("blood_group");
		String prequire = request.getParameter("bloodunit");
		String pdisease = request.getParameter("disease");
		String pcause = request.getParameter("cause");
		
		Seek seeker= new Seek(pname, pphone,pmail,paddress,age,pgender, pblood, prequire, pdisease,pcause);
		
		SeekDao p=new SeekDao();
		p.save(seeker);
		String destination = "RequisitionConfirmation.jsp";
        
        // Use RequestDispatcher to forward the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
        dispatcher.forward(request, response);
   
	}
}


