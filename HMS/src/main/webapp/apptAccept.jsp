<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	int Patient_id=Integer.parseInt(request.getParameter("Patient_id")); 
	String Email=request.getParameter("Email");
	 ResultSet set;

	    Connection connection;
	    PreparedStatement statement ;
	    String Status;
	     try {


	            Class.forName("com.mysql.cj.jdbc.Driver");
	            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms1", "root", "qwerty@123");
	
	            Status = "accepted";
	            statement = connection.prepareStatement("update appointments set Status=? where Patient_id=?");
	            statement.setString(1, Status);
	            statement.setInt(2,Patient_id );
	            statement.executeUpdate();

	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }


			
				%>
