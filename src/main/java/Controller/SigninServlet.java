package Controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import CommonConnection.CommonConnection;

/**
 * Servlet implementation class SignupServlet
 */
public class SigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	Connection connection = CommonConnection.getConnection();
       
    	String umail= request.getParameter("email");
    	String upass= request.getParameter("password");
    	
    	HttpSession session= request.getSession();
    	RequestDispatcher dispatcher=null;
    	
    	PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("select * from user where umail=? and upass=? ;");
			stmt.setString(1,umail);
			stmt.setString(2, upass);
			ResultSet rs= stmt.executeQuery();
			if (rs.next()) {
				session.setAttribute("name", rs.getString("uname")); 
				dispatcher=request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status", "failed");
				dispatcher=request.getRequestDispatcher("Signin.jsp");
			}
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }
}

