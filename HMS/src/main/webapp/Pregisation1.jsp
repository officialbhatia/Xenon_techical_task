<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="Pregistration.css">



</head>

<body>
	<h2>Welcome, To NEERAM'S Patient Portal </h2>
	<div class="container" id="container">
		<div class="form-container sign-up-container" style="max-height: 100%;">
			<div class="div" style="height: 480px ;">
				<form action="PRegister2.jsp" method="post" class="custom_form" style="overflow:scroll;height: 100%;  ">

					<h1>Create Account</h1>
					<div class="social-container">
						<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
						<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
						<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
					</div>
					<span>or use your email for registration</span>
					<input type="text" placeholder="Name" name="name" />
					<input type="number" placeholder="Age" name="age" />

					<div class="" style=" display: flex; flex-direction: row;">
						<label class=" gender_left radio-inline">Gender:</label>
						<label class="radio-inline" style="padding-right: 20px;">
							<input type="radio" name="optradio" checked>Male
						</label>
						<label class="radio-inline">
							<input type="radio" name="optradio">Female
						</label>

					</div>

					<input type="text" placeholder="Address" name="address" />
					<input type="text" placeholder="Contact" name="contact" />
					<input type="email" placeholder="Email" name="email" />
					<input type="password" placeholder="Password" name="password" />
					<div class="btn">
						<button>Confirm</button>
						<button>Reset</button>
					</div>

					
					
				</form>
			</div>
			</div>
			<div class="form-container sign-in-container">
				<form action="PSignin.jsp" method="post">

					<h1>Sign in</h1>
					<div class="social-container">
						<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
						<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
						<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
					</div>
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
		</script>
</body>

</html>
</body>
</html>