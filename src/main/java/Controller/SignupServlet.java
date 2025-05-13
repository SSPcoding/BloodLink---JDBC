package Controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Dao.UserDao;
import Pojo.Users;

/**
 * Servlet implementation class SignupServlet
 */
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        String uname = request.getParameter("name");
        String umail = request.getParameter("email");
        String upass = request.getParameter("pass");

        RequestDispatcher dispatcher = null;

        Users user = new Users(uname, umail, upass);

        try {
            UserDao d = new UserDao();
            int rowCount = d.save(user);
            dispatcher = request.getRequestDispatcher("Signup.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
        } catch (Exception e) {
            // Handle exceptions appropriately, e.g., log or display an error message.
            e.printStackTrace();
            request.setAttribute("status", "error");
        }

        dispatcher.forward(request, response);
        System.out.println("Save Successfully");
    }
}
