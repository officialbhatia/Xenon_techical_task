<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Patients</title>
	<link rel="stylesheet" href="Pregistration.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>
<% String contact;%>
	<h1>Welcome, To NEERAM'S Patient Portal </h1>
	<div class="container" id="container">
		<div class="form-container sign-up-container" style="max-height: 100%;">
			<div class="div" style="height: 480px ;">
				
				<div id="custom_form" class="custom_form" style="overflow:scroll;height: 100%;  ">
		
					<h1>Create Account</h1>
					
					
					<input type="text" placeholder="Name" name="name" id="name"/>
					<input type="number" placeholder="Age" name="age" id="age"/>

					<div class="" style=" display: flex; flex-direction: row;">
						<label class=" gender_left radio-inline">Gender:</label>
						<label class="radio-inline" style="padding-right: 20px;">
							<input type="radio" name="optradio" id="gender" checked>Male
						</label>
						<label class="radio-inline">
							<input type="radio" name="optradio" id="gender">Female
						</label>

					</div>

					<input type="text" placeholder="Address" name="address" id="address"/>
					<input type="text" placeholder="Contact" name="contact" id="contact"/>
					<input type="email" placeholder="Email" name="email" id="email" />
					<input type="password" placeholder="Password" name="password"  id="password"/>
					
					<select class="select" name="department" id="department">
						<option value="enter">Select your department</option>
						<option value="Dermatologist">Dermatologist</option>
						<option value="Cardiologist">Cardiologist</option>
						<option value="Dentist">Dentist</option>
						<option value="Opthamologist">Ophthalmologist</option>
						<option value="Physiotherapist">physiotherapist</option>
					</select>
					
					<div class="btn">
						<button onclick="showOtp()">Confirm</button>
						<button>Reset</button>
					</div>

					<hr>
							</div>
					
					
					
					<div id="otp-container">
					
					<form action="PRegister2.jsp" method="post">
					<img src="Images/arrow.png" alt="arrow"  width="20px" onclick="showForm()">OTP Sent on <span>+91 9874563210</span>
					<div class="otp">
						
						<input type="text" placeholder="Enter OTP" name="otp" id="otp" autocomplete="one-time-code">
						
						<input id="btn" type="submit" value="Register">
					</div>
					</form>
					</div>
					
					
			</div>
			</div>
			<div class="form-container sign-in-container">
				<form action="PSignin.jsp" method="post">

					<h1>Sign in</h1>
					<br><br>
					
					<span>or use your account</span> 
					<input type="email" placeholder="Email" name="email" />
					<input type="password" placeholder="Password" name="password" />
					<a href="#">Forgot your password?</a>
					<button>Sign In</button>
				</form>
			</div>
			<div class="overlay-container">
				<div class="overlay">
					<div class="overlay-panel overlay-left">
						<h1>Welcome Back!</h1>
						<p>To keep connected with us please login with your personal info</p>
						<button class="ghost" id="signIn">Sign In</button>
					</div>
					<div class="overlay-panel overlay-right">
						<h1>Hello, Friend!</h1>
						<p>Enter your personal details and start journey to become healthy</p>
						<button class="ghost" id="signUp">Register</button>
					</div>
				</div>
			</div>
		</div>

		<footer>
			<p>

			</p>
		</footer>
		<script>
			const signUpButton = document.getElementById('signUp');
			const signInButton = document.getElementById('signIn');
			const container = document.getElementById('container');
			
			
			signUpButton.addEventListener('click', () => {
				container.classList.add("right-panel-active");
			});

			signInButton.addEventListener('click', () => {
				container.classList.remove("right-panel-active");
			});
			
			<!-- function showForm() {
				$("#otp-container").hide();
				$("#custom_form").show();
				
			}-->
			
	</script>
	
	<script>
		
	function showOtp()
	{
	var em=document.getElementById("email").value;
	var otp1=document.getElementById("otp").value;
	var na=document.getElementById("name").value;
	var ag=document.getElementById("age").value;
	var ge=document.getElementById("gender").value;
	var co=document.getElementById("contact").value;
	var em=document.getElementById("email").value;
	var ps=document.getElementById("password").value;
	var dp=document.getElementById("department").value;
	
	$.ajax({

		url:'PRegister1.jsp',
		data:{"email":em,"name":na,"age":ag,"gender":ge,"contact":co,"password":ps,"department":dp},
		type:'POST',
		success:function(result)
		{
			
			if(result>0)
				{
				alert("success");
				
				}
			else{
				alert("failure");
			}
		}	
		
	});
		
//			document.getElementById('otp-container').style.display = 'block';
//			document.getElementById('custom_form').style.display = 'none';
			
			
			$("#custom_form").hide();
		
			
		
	}
	</script>
</body>

</html>