<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>
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
             <div class="container">

 

                  <%
              try{
                  Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
     
                Statement st = conn.createStatement();
                String data = "SELECT COUNT(*) FROM announcement ";
                ResultSet rs = st.executeQuery(data);
                
               String Countrow="";
                    while(rs.next()){
                   
                    
                    

              
       
       %>



            <div class="img-rounded" style="float: right; background-color: #fffbcf; width: 315px; height: 260px; border: 1px solid black; margin: 10px;">

                <h3 style="color: #ffffff; background-color: #2a4e57; text-align: center; margin: 0px; padding: 0px;">
                    <%=rs.getString("annoncement")%></h3>
                
             <%=rs.getString(1)%>

                    <div id="cc-homepage-announcements" style="height: 200px; overflow-x: hidden; overflow-y: auto; padding: 6px; text-align: left;"> </div>

            </div>
                    <%
             }
            }catch (Exception e){
                
}
            
            %>
    </body>
</html>
