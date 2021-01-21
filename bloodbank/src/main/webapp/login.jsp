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
        <link rel="stylesheet" href="username.css">
        <title>Sign in</title>
      </head>
      
      <body>
        <div class="main">
          <p class="sign" align="center">Sign in</p>
          <form class="form1" method="post" action="/bloodbank/loginservlet">
            <input class="un " type="text" align="center" placeholder="Username" name="usernamelog">
            <input class="pass" type="password" align="center" placeholder="Password"name="passwordlog">
                          
           
            
           
            <button type="submit" class="sumbitlog">Sign in</button>
            <p class="forgot" align="center"><a href="signup.jsp">Dont have a account create  one</p>
                  
                      
          </div>
           
      </body>
      
      </html>
</html>

    