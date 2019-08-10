<%-- 
    Document   : Registration
    Created on : 18 Jun, 2019, 1:20:47 PM
    Author     : YOGESHKUMAR MEHTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home State</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="icon" type="image/png" href="../resources/Register/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/vendor/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/vendor/animsition/css/animsition.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/vendor/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/Register/css/main.css"/>
<!--===============================================================================================-->
</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('../Upload/building2.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="../UserRegistrationServet">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">User Name</span>
						<input class="input100" type="text" name="name" placeholder="UserName...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" placeholder="Email addess...">
						<span class="focus-input100"></span>
					</div>
                                    
                                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                                                <span class="label-input100">Password</span>
						<input class="input100" type="password" name="Password" placeholder="Password..">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">Gender</span>
                                                <select style="width: 200px; background-position: 80% center; color: lightgray" name="gender"><option value="Male" selected="true">Male</option>
                                                        <option value="Female">Female</option>
                                                </select>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Mobile No.</span>
                                                <input class="input100" type="text" placeholder="Mobile No." name="MobileNo1">
						<span class="focus-input100"></span>
					</div>

                                    <div class="wrap-input100 validate-input" >
						<span class="label-input100">Alternate Mobile No.</span>
						<input class="input100" type="text"  placeholder="Alternate Mobile No." name="MobileNo2">
						<span class="focus-input100"></span>
					</div>

					

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Sign Up
							</button>
						</div>

						<a href="Login.jsp" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Login
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
 <script src="../resources/Register/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="../resources/Register/vendor/animsition/js/animsition.min.js"></script>
	<script src="../resources/Register/vendor/bootstrap/js/popper.js"></script>
	<script src="../resources/Register/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/Register/vendor/select2/select2.min.js"></script>
	<script src="../resources/Register/vendor/daterangepicker/moment.min.js"></script>
	<script src="../resources/Register/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../resources/Register/vendor/countdowntime/countdowntime.js"></script>
	<script src="../resources/Register/js/main.js"></script>
</body>
</html>
