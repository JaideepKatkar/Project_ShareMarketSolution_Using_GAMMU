<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
import="javax.servlet.http.HttpSession"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="theme/Master.css" rel="stylesheet"
	type="text/css">
<TITLE>Logout.jsp</TITLE>

</HEAD>
<BODY background="images/w3b.gif">

<%
String username = session.getAttribute("username").toString();
session.invalidate();
%>
<CENTER>
<br><br><br><br><br>
<P><B><FONT size="5" face="Comic Sans MS" color="#660066">
<%=username.toUpperCase()%>,
<br>
you have Successfully Logged Out !!!</FONT></B></P>
<BR><BR><BR>
<BR>
<BR>
<BR><BR>
<A href="Login.jsp"><B>Return to SMART SHARE SERVICES</B></A>
</CENTER>
</BODY>
</HTML>
