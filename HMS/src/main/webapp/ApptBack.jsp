<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appt back</title>
</head>
<body>
<%

int id=Integer. parseInt(request. getParameter("id"));;
String number=request.getParameter("number");
String name=request.getParameter("name");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String department=request.getParameter("department");
String date=request.getParameter("date");
String time=request.getParameter("time"); 


Connection connection;
PreparedStatement statement;
int i;


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","Goodmorning0011");
	
	statement=connection.prepareStatement("insert into appointments(Patient_id,Contact,Name,Email,Gender,Department,Date,Time) values(?,?,?,?,?,?,?,?)");
	statement.setInt(1,id);
	statement.setString(2,number);
	statement.setString(3, name);
	statement.setString(4, email);
	statement.setString(5, gender);
	statement.setString(6, department);
	statement.setString(7, date);
	statement.setString(8,time);
	i=statement.executeUpdate();
	
	if(i>0){
		out.print("<h1>Data Saved we will mail you when appointment is booked</h1>");
	}
	else{
		out.print("Data not Saved");
	}
}
catch (ClassNotFoundException e) 
{
	e.printStackTrace();
}
catch(SQLException e)
{
	e.printStackTrace();
}

%>

</body>
</html>