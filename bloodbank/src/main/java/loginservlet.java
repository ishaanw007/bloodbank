

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginservlet
 */
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
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
				String usernamelog = request.getParameter("usernamelog");
				String passwordlog = request.getParameter("passwordlog");
				String SQL="SELECT * FROM signup WHERE Name= '" +usernamelog +"' AND Password='"+passwordlog+"'";
				  Statement stmt = con.createStatement();
				  ResultSet rs = stmt.executeQuery(SQL);
//				  int record = stmt.executeUpdate(SQL);
//				  boolean rs=stmt.execute(SQL);
				  System.out.println(rs);
				  System.out.println(usernamelog);
				  System.out.println(passwordlog);
				  boolean dimag=rs.next();
				 if(usernamelog.equals("admin") && passwordlog.equals("admin")) {
					 HttpSession oldSession = request.getSession(false);
			            if (oldSession != null) {
			                oldSession.invalidate();
			            }
			            //generate a new session
			            HttpSession newSession = request.getSession(true);

			            //setting session to expiry in 5 mins
			            newSession.setMaxInactiveInterval(5*60);

			            Cookie message = new Cookie("message", "Welcome");
			            response.addCookie(message);
//			        
			        
					 
					 response.sendRedirect("work/admin.jsp");
					  
				 }
				 else {
				  while(rs.next()) {
					  
				  }
				  System.out.println(dimag);
				  if(dimag==true) {
//					 HttpSession oldSession = request.getSession(false);
//			            if (oldSession != null) {
//			                oldSession.invalidate();
//			            }
//			            //generate a new session
//			            HttpSession newSession = request.getSession(true);
//
//			            //setting session to expiry in 5 mins
//			            newSession.setMaxInactiveInterval(5*60);
//
//			           
//			            Cookie message = new Cookie("message", "Welcome");
//			            response.addCookie(message);
//			        
//					  response.sendRedirect("index.jsp");
				  }
				  else if(dimag==false) {
//					 
					    RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			            PrintWriter out = response.getWriter();
			            out.println("<font color=red>Either username or password is wrong.</font>");
			            rd.include(request, response);
				  }
				  else if(usernamelog==null||passwordlog==null) {
//						 
						    RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
				            PrintWriter out = response.getWriter();
				            out.println("<font color=red>Either username or password is wrong.</font>");
				            rd.include(request, response);
					  }
//				 
				 }
//				  
			} 
	         catch (SQLException e) {
				// TODO Auto-generated catch block
				 e.printStackTrace();
		       
				
			}
	        
	}

}
