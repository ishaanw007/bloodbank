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
        <link rel="stylesheet" href="add.css">
        <title>Add Donors</title>
      </head>
      
      <body>
        <div class="main">
          <p class="sign" align="center">Add Donor</p>
          <form class="form1" method="post" action="/bloodbank/adminmodule">
            <input class="un " name="name" type="text" align="center" placeholder="Name">
            <input class="pass" type="password" name="password" align="center" placeholder="Password">
             <select name="blood" class="un" placeholder="Blood Group">
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select><br><br>
           
            <input class="un " type="text" name="city"align="center" placeholder="City">
            <input class="un " type="text" name="mobile"align="center" placeholder="Phone Number">
           
         
            <button type="submit" class="sumbitlog">enter</button>
           
                  
                      
          </div>
           
      </body>
      
      </html>
</html>