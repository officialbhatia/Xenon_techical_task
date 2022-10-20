<%@page import="com.Bean.PSignin"%>
<%@page import="com.model.PSigninM"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");

	PSignin al = new PSignin();
	al.setEmail(email);
	al.setPassword(password);

	PSigninM am = new PSigninM();
	int x = am.login(al);

	if(x>=1)
	{
		response.sendRedirect("PatientPortal.jsp");
	}
	else
	{
		response.sendRedirect("Welcome1.jsp");
	}
%>

</body>
</html>