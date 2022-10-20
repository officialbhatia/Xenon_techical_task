<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello Patient</title>
</head>
<body>
	<% 
	Connection connection;
    PreparedStatement statement ;

				
				String name,age,gender,address,contact,email,password;
				
				
				
				name =request.getParameter("name");
				age = request.getParameter("age");
				gender = request.getParameter("gender");
				address = request.getParameter("address");
				contact = request.getParameter("contact");
				email = request.getParameter("email");
				password = request.getParameter("password");
			
				
				
		
	
			
		
		    			    	
		    	
		    try {
		    	
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms1", "root", "qwerty@123");

		        statement = connection.prepareStatement("insert into patients(Name,Age,Gender,Address,Contact,Email,Password) values(?,?,?,?,?,?,?)");
		        statement.setString(1,name);
		        statement.setString(2,age);
		        statement.setString(3,gender);
		        statement.setString(4,address);
		        statement.setString(5,contact);
		        statement.setString(6,email);
		        statement.setString(7,password);
		     
				int i=statement.executeUpdate();
				if(i>0){
					out.print("success");
				}
				else{
					out.print("unsuccess");
				}
				
		        
		        
		        
				   
		    } catch (SQLException e) {
		        e.printStackTrace();
		    } catch (ClassNotFoundException e) {
		        e.printStackTrace();
		    }


		    



	
		
		
			
		
	%>
</body>
</html>