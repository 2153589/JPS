<%-- 
    Document   : retrive
    Created on : 07 4, 19, 7:21:32 AM
    Author     : Michael
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name </th>
                <th> Postal Address </th>
                <th> Email Address </th>
                <th> Number </th>
            </tr>
            
       <%
              try{
                  Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
     
                Statement st = conn.createStatement();
                String data = "SELECT * FROM student_registration";
                ResultSet rs = st.executeQuery(data);

               while(rs.next()){
        %>
            <tr>
                <td><%=rs.getString("first_name")%></td>
                <td><%=rs.getString("last_name")%></td>
                <td><%=rs.getString("postal_address")%></td>
                <td><%=rs.getString("email_address")%></td>
                <td><%=rs.getString("contact_number")%></td>
            </tr>
            <% }
            }catch (Exception e){
                
}
            }
            %>
        </table>

    </body>
</html>
