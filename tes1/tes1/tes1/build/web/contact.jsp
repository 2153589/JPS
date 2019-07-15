
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
    String Name = request.getParameter("Name");
    String Email = request.getParameter("Email");
    String Description = request.getParameter("Description");
   
   try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
        
                Statement stat = conn.createStatement();
                
                String data;
                data = "INSERT INTO contact_us (Name,Email,Description)VALUES ('"+Name+"','"+Email+"','"+Description+"')";
                
              stat.executeUpdate(data);
                
           
             
    }catch (Exception e){
        
    }
%>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/design.css">
        <link rel="stylesheet" href="css/index.css">
         <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Contact Us</title>
    </head>
    
    <body>
            <header>
        <div class="container">
            <div id="title">
                <h1>SAMCIS Portal</h1>
            </div>
                <nav>
                    <ul>
                        <li><a href="index.jsp">HOME</a></li>
                        <li><a href="admission.jsp">ADMISSION</a></li>
                        <li><a href="campus.jsp">CAMPUS LIFE</a></li>
                        <li><a href="contact.jsp">CONTACT US</a></li>
                    </ul>
               </nav>
        </div>
    </header>
        <div class="container">  
  <form id="contact" action="contact.jsp" method="post">
      <CENTER><h3>Contact Us</h3></center>
    <div id="test">
    <fieldset>
        <center><label for ="Name">Name</label>
            <input id="Name" type="text" class="form-control" name=Name" required autofocus></center>
    </fieldset>
    <fieldset>
        <center><label for ="Email">Email</label>
            <input id="Email" type="text" class="form-control" name="Email" required autofocus></center>
    </fieldset>
    <fieldset>
          <center><label for ="Description">Description</label>
            <input id="Description" type="text" class="form-control" name="Description" required autofocus></center>
    </fieldset>
    <fieldset>
    <center>  <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button></center>
    </fieldset>
    </div>
  </form>
</div>
    </body>
</html>
