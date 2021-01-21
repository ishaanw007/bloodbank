<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   

        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="admin.css">
        <title>Admin functions</title>
      </head>
      
      <body>
      <%
      
      response.setHeader("Cache-Control","no-cache , no-store ,must-revalidate");
      response.setHeader("Pragma","no-cache");
      response.setDateHeader("Expire", 0);
      response.setHeader("Cache-Control","max-age=0");
      
      %>
        <div class="main">
          <p class="sign" align="center">WELCOME ADMIN</p>
          <form class="form1" method="post" action="/bloodbank/loginservlet">
            <button  class="view"> <a href="view.jsp">View Record</a></button><br>
            <button  class="add"> <a href="Add.jsp">Add Record</a></button><br>
            <button  class="delete"> <a href="Delete.jsp">Delete Record</a></button><br>
           
             </form>
                   <form class="form2" method="post" action="/bloodbank/logout">
            <button  class="logout">Log out</button>
             </form>
                      
          </div>
           
      </body>
      
      </html>
