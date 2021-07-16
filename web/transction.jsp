<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <style>
            h1{
                text-align: center;
                color: orange;
                background-color: oldlace;
                padding-top: 20px;
                padding-bottom: 20px;
                border-radius: 20px;
            }
table{
  font-family: arial, sans-serif;
  border-collapse: collapse;
 width:60%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
tr:nth-child(even) {
  background-color: #dddddd;
}


</style>
        
    </HEAD>

    <BODY bgcolor="#E2F9CC" >
        
        <h1>TRANSCATIONS</h1>
        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mohan", "root", "2907");
               //"jdbc:mysql://localhost:3306/college","root","2907"
            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from transcations") ; 
        %>

        <table class="center" BORDER="1">
            <TR>
                <th>SENDER</th>
                <th>RECEIVER</th>
                <th>AMOUNT</th>
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                
    
            </TR>
            <% } %>
        </table>
      
    </BODY>
</HTML>
