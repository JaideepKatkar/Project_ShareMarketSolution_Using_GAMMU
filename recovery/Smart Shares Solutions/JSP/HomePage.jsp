<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<LINK href="theme/Master.css" rel="stylesheet"
	type="text/css">
<TITLE>HomePage.jsp</TITLE>
</HEAD>
<BODY background="images/m3_100.gif">
<%String username = session.getAttribute("username").toString();%></P>
<P>
&nbsp;&nbsp;&nbsp;
 <A href="Logout.jsp"><IMG border="0" src="images/bubble011but.GIF" width="120"
	height="24"></A><BR>
<BR>
<IMG border="0" src="images/bubble001ba1024.gif" width="1016" height="68">
<CENTER><PRE><FONT face="Monotype Corsiva" size="7" color="#cc0000">Hi <%=username.toUpperCase()%>,
Welcome to SMART SHARE SERVICES

</FONT><A>
<IMG border="0" src="images/b009cut.gif"
	width="136" height="130"> <IMG border="0" src="images/images" width="174"
	height="174"></A></PRE>
 	<table align="center">
	<td>
	<FONT
	face="Monotype Corsiva" size="5">
	What do you need to know a share value immediately??<br>See the newspaper??<br>
	Call up your broker and wait in a queue??<br>
	Call up your colleague??<br> 
	Log on to laptop when you are driving your car or in a bus??<br>
	Put on the television when your wife is wanting to see an  emotional soap??<br>
	Well you will be glad to know that with Smart Share Services you donot need to do all this.. <br>
	You just need to send an SMS to SSS.. <br><br>
	The format is :<br><br>
		Share Company_name<br>
		SMS on <font face="Monotype Corsiva" size="5" color="#cc0000">+919975261781</font><br>
		And within seconds you will get the share value on your mobile..<br></FONT></td></table>
</FONT>
</CENTER>
</BODY>
</HTML>
