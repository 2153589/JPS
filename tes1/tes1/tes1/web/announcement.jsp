<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


<%
    String announcement = request.getParameter("description");

   
   try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
        
                Statement stat = conn.createStatement();
                
                String data;
                data = "INSERT INTO announcement (description) VALUES ('"+announcement+"')";
                out.println("");
              stat.executeUpdate(data);
                
           
             
    }catch (Exception e){
        
    }
%>
<style>
    #Announcement{
        width: 1860px;
        height: 200px;
    }
</style>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/design.css">
        <link rel="stylesheet" href="css/index.css">
         <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
            <title>Announcements</title>
    </head>
    <body> 
        
        <header>
        <div class="container">
            <div id="title">
                <h1>SAMCIS Portal</h1>
            </div>
                <nav>
                    <ul>
                       
                        <li><a href="retrive.jsp">Registered Users</a></li>
                        <li><a href="announcement.jsp">Announcements</a></li>
                        
                    </ul>
               </nav>
        </div>
    </header>
        <form id="contact" action="" method="post">
            <fieldset>
                <center><label for ="description">Announcement</label>
            <input id="description" type="text" class="form-control" name="description" required autofocus></center>
    </fieldset>
        <br>   
    <tr>
       <center>  <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button></center>
        </tr>
        <br>
       
        <center>  <a href="newannounce.jsp">Announcements</a></li> </center>
        <center>  <a href="view.jsp">view</a></li> </center>

    </form>
 
 
        
    </body>
</html>
