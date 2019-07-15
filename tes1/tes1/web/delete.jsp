<%-- 
    Document   : delete
    Created on : 07 15, 19, 6:25:13 PM
    Author     : Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    String id = request.getParameter("id");
     try{
         Class.forName("com.mysql.jdbc.Driver").newInstance();
                  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
                  
                  
                  Statement stmt = conn.createStatement();
                  String query = "DELETE FROM announcement WHERE id =("+id+") ";      
                  ResultSet rs = stmt.executeQuery(query);
%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        
        <%
        }catch(Exception e){
         
     }  %>
    </body>
</html>
