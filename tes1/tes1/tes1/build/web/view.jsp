<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View announcement</title>
    </head>
    <body>
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
                <h1>Announcements</h1>
        <div>
            <center>
        <table>
            <tr>
                <td>Description</td>
                <td>Timestamp</td>
                <td> 

            </tr>
                  <%
              try{
                  Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/samcis","root", "");
     
                Statement st = conn.createStatement();
                String data = "SELECT * FROM announcement";
                String del = "DELETE * FROM announcement WHERE description";
                ResultSet rs = st.executeQuery(data);
                ResultSet rm = st.executeQuery(del);
               while(rs.next())
               while(rm.next()){
       
       %>
            <tr>
                <td><%=rs.getString("description")%></td>
                <td><%=rs.getString("timestamp")%></td>
                <td><input type="button" name ="delete" value="Delete"></td>
                
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
