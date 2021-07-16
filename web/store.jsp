<%-- 
    Document   : store.jsp
    Created on : 16 Jul, 2021, 11:55:27 AM
    Author     : karthik
--%>

<%@ page import="java.sql.*" %>

<%
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
                 String s=request.getParameter("sender");
                String r=request.getParameter("receiver");
                Integer a=Integer.parseInt(request.getParameter("amount"));
               try{
		
                    Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","2907");
		PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?)");
		ps.setString(1,s);
		ps.setString(2,r);
		ps.setString(3,a);
		 int i=ps.executeUpdate();
		if(i>0)
                    //response.sendRedirect("mohan.html"); 
                   out.print("You are successfully registered...");
                }
                catch(Exception e)
			{
				out.println(e);	
			}
%>




