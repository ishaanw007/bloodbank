<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<link rel="stylesheet" href="delete.css">
</head>
<body>

<table border="1" class="centre">
<tr style="background-color: #f16767;">
<td>NAME</td>
<td>PASSWORD</td>
<td>CITY</td>
<td>BLOOD GROUP</td>
<td>PHONE NUMBER</td>
<td>DELETE RECORD</td>
</tr>
<% 
Connection conn=null;
Statement st=null;
ResultSet rs=null;
	 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		
      
  
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","ishaan123");
			
			  String qry="SELECT * FROM signup" ;
			  st = conn.createStatement();
			  rs = st.executeQuery(qry);
            
			  while(rs.next()){
            	  
            	  %>
            	  <tr>
            	  <td > <%= rs.getString(1) %></td>
            	   <td><%= rs.getString(2) %></td>
            	    <td><%= rs.getString(3) %></td>
            	     <td><%= rs.getString(4) %></td>
            	      <td><%= rs.getString(5) %></td>
            	<td><a href='delete2.jsp?user=<%= rs.getString(1)%>'><button type="button" class="delete">Delete</button></a></td>
            	      </tr>
            	  <% 
            	  
              }
			  
			  
	 }catch(Exception ex)	{
		 
	 }
        		%>
        		
        		</table>
        	</body>
</html>