package com.model;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;

import com.Bean.AdminLogin;

public class AdminLoginM 
{
	Connection connection;
	PreparedStatement statement;
	ResultSet set;
	    
    String password,email;
			    
	    
    public AdminLoginM()
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
		

    public int login(AdminLogin al)
    {
    	int i=0;
    	email=al.getEmail();
    	password=al.getPassword();
    	
	    try {

	         statement= connection.prepareStatement("select * from admin where Email=? and password=?");
	         statement.setString(1,email);
	         statement.setString(2,password);
	         set = statement.executeQuery();

	           
	         if(set.next())
	         {
	        	i=1; 
	         }
	         else
	         {
	        	 i=0;
	         }
	         
	     } catch (SQLException e) {
	         e.printStackTrace();
	     }

	    return i;
    }
	    

}
