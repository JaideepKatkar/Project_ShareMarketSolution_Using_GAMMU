<%@ page import="java.sql.*"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
Connection con = null;
Statement st=null;
ResultSet rs=null;


try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/sms?user=root&password=fedora");
	st=con.createStatement();
	rs=st.executeQuery("select username from login where username='"+username+"' and password='"+password+"'");
	if(rs.next())
	{
		session.setAttribute("username",username);
		response.sendRedirect("HomePage.jsp");
	}
	else
	{
		response.sendRedirect("Login.jsp");
	}
}
catch(Exception e)
{
	response.sendRedirect("RegisterMe.jsp");
}
%>
