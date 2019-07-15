

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String number = request.getParameter("number");
   
   try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
        
                Statement stat = conn.createStatement();
                
                String data;
                data = "INSERT INTO student_registration (first_name,last_name,email_address,postal_address,contact_number)VALUES ('"+fname+"','"+lname+"','"+email+"','"+address+"','"+number+"')";
                
              stat.executeUpdate(data);
                
           
             
    }catch (Exception e){
        
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/admisiion.css">
    <link rel="stylesheet" href="css/contact.css">
    <title>SAMCIS | ADMISSION</title>
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
                        <li class = "active"><a href="">ADMISSION</a></li>
                        <li><a href="campus.jsp">CAMPUS LIFE</a></li>
                        <li><a href="contact.jsp">CONTACT US</a></li>
                    </ul>
                </nav>
        </div>
    </header>

        <div class="container">
            <section id="regForm">
                <h4 class="card-title">Register</h4>
                    
                <form action="admission.jsp" method="POST">
                        <div class="form-group">
                            <label for="fname">First Name</label>
                            <input id="fname" type="text" class="form-control" name="fname" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name</label>
                            <input id="lname" type="text" class="form-control" name="lname" required autofocus>
                        </div>
                
                                                <div class="form-group">
                                                    <label for="address">Postal Address</label>
                                                    <input id="name" type="text" class="form-control" name="address" required autofocus>
                                                </div>
                
                                                <div class="form-group">
                                                    <label for="email">Email Address</label>
                                                    <input id="email" type="email" class="form-control" name="email" required>
                                                </div>
                    
                               
                                                
                    <div class="form-group">
                            <label for="number">Contact Number</label>
                            <input id="number" type="text" class="form-control" name="number" required autofocus>
                        </div>
                    
                    <div class="form-group no-margin">
                                                    <button type="submit" name = "submit" class="btn btn-primary btn-block">
                                                        Register
                                                    </button>
                                                </div>
                                                
                                            </form>
            </section>
                                        </div>
                                        
</body>
</html>

