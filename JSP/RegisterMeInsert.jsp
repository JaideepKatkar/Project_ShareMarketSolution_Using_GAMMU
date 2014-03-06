<%@ page import="java.sql.*;"%>
<%
String registerName = request.getParameter("registerName");
String registerPwd = request.getParameter("registerPwd");
String registerAddress = request.getParameter("address");
String registerPhone = request.getParameter("phone");
String url = "jdbc:mysql://localhost/sms?user=root&password=fedora"; 
Connection con = null;
Statement st = null;
ResultSet rs = null;


try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(url);
}catch(Exception e)
{
	out.println("Caught in exception: " + e);
}	

try
{
	st = con.createStatement();
	con.setAutoCommit(false);
	st.executeUpdate("insert into login (username,password) values('"+registerName+"','"+registerPwd+"')");
	con.commit();
	con.setAutoCommit(false);
	st.executeUpdate("insert into registration (username,phno,address) values('"+registerName+"','"+registerPhone+"','"+registerAddress+"')");
	con.commit();
	response.sendRedirect("RegisterMeSuccess.jsp");
}
catch(Exception e)
{
	response.sendRedirect("RegisterMe.jsp");
}
%>
