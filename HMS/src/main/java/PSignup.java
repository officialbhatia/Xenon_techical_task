

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 * Servlet implementation class PSignup
 */
@WebServlet("/PSignup")
public class PSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PSignup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection connection;
	    PreparedStatement statement ;
	    String name,age,gender,email,address,contact,password;
	
	    			    	
	    	name = request.getParameter("name");
	     	age = request.getParameter("age");
	    	gender = request.getParameter("gender");
	    	address = request.getParameter("address");
	    	contact =  request.getParameter("contact");
	    	email = request.getParameter("email");
	    	password = request.getParameter("password");
	    	
	    try {


	        Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "qwerty@123");

	        statement = connection.prepareStatement("insert into patients(Name,Age,Gender,Address,Contact,Email,Password) values(?,?,?,?,?,?,?)");
	        statement.setString(1,name);
	        statement.setString(2,age);
	        statement.setString(3,gender);
	        statement.setString(4,address);
	        statement.setString(5,contact);
	        statement.setString(6,email);
	        statement.setString(7,password);

	        
	        statement.executeUpdate();

	        
	        
	        
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	    }


	    }


	}

