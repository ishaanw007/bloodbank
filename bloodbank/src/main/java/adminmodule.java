

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminmodule
 */
public class adminmodule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminmodule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		 try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         
	         try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","ishaan123");
				String username = request.getParameter("name");
				String pass = request.getParameter("password");
				String bloodgrp = request.getParameter("blood");
				String cit = request.getParameter("city");
				String mob = request.getParameter("mobile");
				String insert_query = "insert into signup values ('"+username+"', '"+pass+"', '"+cit+"','"+bloodgrp+"',"+mob+")";
				  Statement stmt = con.createStatement();
				int record = stmt.executeUpdate(insert_query);
				 response.sendRedirect("/bloodbank/work/addsucess.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				 e.printStackTrace();
		
		       
				
			}
	}

}
