

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/contact.css">
        <title>Registered Users</title>
    </head>

             <style>
            td{
                padding: 10px;
            }
            div{
                width: 50%;
                border: 1px solid black;
                border-radius: 5px;
                background-color: lightskyblue;
            }
        </style>
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
        
        <h1>Registered</h1>
        <div>
            <center>
        <table>
            <tr>
                <td>First Name</td>
                <td>Last Name </td>
                <td> Postal Address </td>
                <td> Email Address </td>
                <td> Number </td>
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
           <%
             }
            }catch (Exception e){
                
}
            
            %>
        </table>
        </center>
        </div>
        
</div>
    </body>
</html>
