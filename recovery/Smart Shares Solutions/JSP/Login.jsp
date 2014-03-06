<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"

%>
<SCRIPT language="JavaScript">
<!--
function validate(frm)
{
	var varusername = frm.username.value;
	var varpassword = frm.password.value;
	
	if(varusername.length == 0)
	{
		alert("Enter Username!!!");
		return false;
	}
	
	if(varpassword.length == 0)
	{
		alert("Enter Password !!!");
		return false;
	}
	
	if(varpassword.length < 5)
	{
		alert("Password length should be greater than 4 !!!");
		return false;
	}
	
	else
	{
		return true;
	}
}
//>

</SCRIPT>

<TITLE>login.jsp</TITLE>
</HEAD>
<BODY background="images/y2b.gif">
<P><A href="HelpLogin.jsp" target="_blank"><IMG border="0" src="images/recital002ti.gif"
	width="303" height="23"></A>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
<CENTER>
<form name="login" onsubmit="return validate(this)" action="LoginValidate.jsp"><pre><FONT size="7"
	color="#cc0000" face="Monotype Corsiva"><B>Welcome To SMART SHARE SERVICES !!!</B></FONT><FONT color="#663300"><BR></FONT><FONT
	face="Comic Sans MS" color="#663300"></FONT><FONT size="5"
	color="#663300" face="Comic Sans MS"><B>


</B></FONT><FONT size="5" color="#6600cc"
	face="Comic Sans MS"><B> Username </B></FONT><FONT size="5"
	color="#663300" face="Comic Sans MS"><B>  </B></FONT><FONT
	face="Comic Sans MS" color="#663300"><INPUT type="text"
	name="username" size="20">

</FONT><FONT
	face="Comic Sans MS" color="#6600cc">                                 </FONT><FONT face="Comic Sans MS"
	size="5" color="#6600cc"><B>           Password </B> &nbsp;</FONT><FONT
	face="Comic Sans MS" color="#663300"><INPUT type="password"
	name="password" size="20">                                                    
                                                        
         

          <INPUT
	type="submit" value="Login">        <INPUT type="reset" value="Reset"></FONT>      

                <FONT color="red" size="3">


</FONT><FONT color="#ff3333" size="3"><B><A
	href="RegisterMe.jsp">I am new, Register Me!!!</A>
</B></FONT></pre>
</form>
</CENTER>
</BODY>
</HTML>
