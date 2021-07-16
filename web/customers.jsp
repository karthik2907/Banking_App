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
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}

</style>
        <LINK rel="text/css" href="cutomers.css">
    </HEAD>

    <BODY bgcolor="#E2F9CC" >
        
        <h1>CUSTOMERS</h1>
        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/mohan", "root", "2907");
               //"jdbc:mysql://localhost:3306/college","root","2907"
            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from customers") ; 
        %>

        <table class="center" BORDER="1">
            <TR>
           
                <th>ACCOUNT.NO</th>
                <th>NAME</th>
                <th>AMOUNT</th>
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
               <td> <div class="popup" onmouseover="myFunction()"> <%= resultset.getString(1) %>
                       <span class="popuptext" id="myPopup">Name: Mohan<br> Id: 1231<br>
                       Account Type: Savings</span>
                </div>
                </td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                
            
              <!--  <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>-->
    
            </TR>
            <% } %>
        </table>
       <script>
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
</script> 
    </BODY>
</HTML>
