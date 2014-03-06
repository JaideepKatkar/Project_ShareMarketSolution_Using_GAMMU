<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<TITLE>RegisterMe.jsp</TITLE>
</HEAD>
<BODY background="images/w3b.gif">
<!--<P><IMG border="0" src="images/images"
	width="303" height="23"></A></P>-->
<SCRIPT>
<!--
function validate(frm)
{
	var varname = frm.registerName.value;
	var varpwd = frm.registerPwd.value;
	var varrepwd = frm.rePwd.value;
	
	if(varname.length==0)
	{
		alert("Enter username!!!");
		return false;
	}
	
	if(varpwd.length==0)
	{
		alert("Enter password!!!");
		return false;
	}
	
	if(varpwd.length<5)
	{
		alert("Password length must be greater than 4!!!");
		return false;
	}
	
	if(varpwd.length==0)
	{
		alert("Re-Enter password!!!");
		return false;
	}
	
	if(varpwd!=varrepwd)
	{
		alert("Password doesn't match!!!");
		return false;
	}
	
	else
	{
		return true;
	}
}
//>
</SCRIPT>
<CENTER>
<BR><h1><FONT color="#660066" face="Comic Sans MS">                         
REGISTRATION FOR THE SMART SHARE SERVICES</FONT></h1>

<FORM action="RegisterMeInsert.jsp" name="registerMe"
	onsubmit="return validate(this)"><PRE>
	
	
	

<FONT size="4" face="Comic Sans MS" color="#9933c">            </FONT><FONT
	size="5" face="Comic Sans MS" color="#9f4058">Enter Username :</FONT><FONT
	color="#9f4058"></FONT>       <INPUT type="text" name="registerName"
	size="20">


</FONT><FONT size="4" face="Comic Sans MS" color="#9933c">            </FONT><FONT
	size="5" face="Comic Sans MS" color="#9f4058">Enter Password :</FONT><FONT
	size="4" face="Comic Sans MS" color="#9933c"> </FONT>       <INPUT type="password"
	name="registerPwd" size="20">


<FONT size="4" face="Comic Sans MS" color="#9933c">            </FONT><FONT
	size="5" face="Comic Sans MS" color="#9f4058">Re-Enter Password :</FONT><FONT
	size="4" face="Comic Sans MS" color="#9933c"> </FONT>   <INPUT
	type="password" name="rePwd" size="20">


<FONT size="4" face="Comic Sans MS" color="#9933c">          	</FONT><FONT
	size="5" face="Comic Sans MS" color="#9f4058">Enter Address :</FONT><FONT
	size="4" face="Comic Sans MS" color="#9933c"> </FONT>   <INPUT
	type="text" name="address" size="20">


<FONT size="4" face="Comic Sans MS" color="#9933c">            </FONT><FONT
	size="5" face="Comic Sans MS" color="#9f4058">Phone no(with code):</FONT><FONT
	size="4" face="Comic Sans MS" color="#9933c"> </FONT> <FONT size="4" face="Comic Sans MS"></FONT><INPUT type="text" name="phone" size="20">



        <INPUT type="submit" value="Register Now"></FONT>
</B></PRE></FORM>
</CENTER>
</BODY>
</HTML>
