package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Bean.DoctorLogin;

public class DoctorLoginM {
	Connection connection;
	PreparedStatement statement;
	ResultSet set;
	    
    String password,email;
			    
	    
    public DoctorLoginM()
    {
	    try 
	    {

	         Class.forName("com.mysql.cj.jdbc.Driver");
	         connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "qwerty@123");
	         
	     } catch (SQLException e) {
	         e.printStackTrace();
	     } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	     }
    }
		

    public String Dlogin(DoctorLogin dl)
    {
    	int i=0;
    	email=dl.getEmail();
    	password=dl.getPassword();
    	
    	String department=null;
    	
	    try {

	         statement= connection.prepareStatement("select * from doctor where Email=? and password=?");
	         statement.setString(1,email);
	         statement.setString(2,password);
	         set = statement.executeQuery();

	           
	         if(set.next())
	         {
	        	 department=set.getString(8);
	         }
	         
	     } catch (SQLException e) {
	         e.printStackTrace();
	     }

	    return department;
    }


}
