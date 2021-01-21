<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user=request.getParameter("user");
System.out.println("name is"+user);
try
{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","ishaan123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM signup WHERE Name='"+user+"'");
if(i==1){
	 response.sendRedirect("deletesucess.jsp");

}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>