import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class store extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
                  
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String s=request.getParameter("sender");
                String r=request.getParameter("receiver");
                String number=request.getParameter("numb");
                String a=request.getParameter("amount");
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mohan","root","2907");
		PreparedStatement ps=con.prepareStatement("insert into transcations values(?,?,?)");
		ps.setString(1,s);
		ps.setString(2,r);
		ps.setString(3,a);
		
		int i=ps.executeUpdate();
		if(i>0){
                out.println("<html><body onload=\"alert('Transcation sucessful!!')\"></body></html>");
                request.getRequestDispatcher("mainpage.html").include(request, response);  
                }
                // RequestDispatcher rs = request.getRequestDispatcher("mainpage.html");
                 //rs.forward(request, response);
               
		
			
		}catch (Exception e2) {System.out.println(e2);}
		
		out.close();
	}

}

