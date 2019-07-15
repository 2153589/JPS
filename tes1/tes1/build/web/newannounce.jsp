<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>
<style>
    #Announcement{
        width: 1860px;
        height: 200px;
    }
    
    .box{
        border: 2px black solid;
        width: 300px;
        height:auto;
        margin:20px;

    }

    .heading{
        text-align: center;
        border-bottom: 1px black solid;
        font-size: 15px;
    }

    .box p{
        font-size: 20px;
        margin: 20px;
        border: 2px pink solid;
        word-wrap: break-word;  
    }
    .box-carry{

        padding:12px;
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
             <div class="container">

 

                  <%
              try{
                  Class.forName("com.mysql.jdbc.Driver").newInstance();
                  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
                  
                  Statement stmt = conn.createStatement();
                  String query = "SELECT * FROM announcement";
                  
                  ResultSet rs = stmt.executeQuery(query);
                  
                  while(rs.next()){
       
       %>

       <div class="box-carry">
    
        <div class="box">
        <div class="heading">
            <h2><%=rs.getString("datetime")%></h2>
        </div>
        <div>
            <p><%=rs.getString("description")%></p>
        </div>
    </div>

    </div>


                    <%
             }
            }catch (Exception e){}
            %>
    </body>
</html>
