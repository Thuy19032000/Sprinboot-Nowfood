<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="resource/common/authen.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body style="background-image: url(resource/client/images/bg.jpg);">
	<!-- Authen form -->
	<form action="j_spring_security_check" method="post">
		<div class="auth-form" style="background-color: white;">
			<div class="auth-form-container">
				<div class="auth-form-header">
					<h3 class="auth-form-title">Login</h3>
					<a href="register" style="color: #ff0b00;font-weight: bold;" class="auth-form-subtitle">Register</a>
				</div>
				<p style="color: #a82400; margin-top: -15px;font-weight: bold; margin-left: auto; margin-bottom: 5px;">${err}</p>
				<c:if test="${verifySuccess != null}">
					<p style="color: #00c300; margin-top: -15px;font-weight: bold; margin-left: auto; margin-bottom: 5px;">${verifySuccess}</p>
				</c:if>
				<div class="auth-form-form" style="margin-top: 15px;">
					<div class="auth-form-group">
						<input class="auth-form-input" type="text" name="account"
							placeholder="Email or Phone" required="required" />
					</div>
					<div class="auth-form-group">
						<input class="auth-form-input" type="password" name="password"
							placeholder="Password" required="required" />
					</div>
					<div class="auth-form-group" style="display: flex; justify-content: space-between; margin-top: -10px; margin-bottom: 15px;">
						<div><input type="checkbox" name="remember-me" style="cursor: pointer;"/> Remember me</div>
						<div><a style="color: #2c3e50;" href="<c:url value="/forgotpassword"/>">Forgot password?</a></div>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<div class="auth-form-controls">
					<a href="client/home" class="btn">Back</a>
					<button type="submit" class="btn" style="cursor: pointer;">Login</button>
				</div>
				<div> Manager account: manager@gmail.com   123</div>
			</div>
			<div class="auth-form-social">
				<a href="<c:url value="/oauth2/authorization/facebook"/>" class="btn-social-fb"><i class='fab' style="font-size: 20px;">&#xf09a;</i> Login with Facebook </a>
				<a href="<c:url value="/oauth2/authorization/google"/>" class="btn-social-gg"><i class='fab' style='font-size:20px; color: tomato'>&#xf2b3;</i> Login with Google </a>
			</div>
		</div>
	</form>
</body>
</html>