<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(Views/img/header-image.png);
            background-size: cover;
            background-position: top;
            font-family: Arial, sans-serif;
            color: #fff;
        }
        a {
            text-decoration: none;
            color: #fff;
        }
        .container-login {
            background-color: rgba(0, 0, 0, 0.8);
        }
        .btn-danger:hover {
           background-color: rgba(252,212,16,255);
            border-color: rgba(252,212,16,255);
        }
        .forgot-password-link:hover {
            color:#ccc;
            text-decoration: underline;
        }
        .sign-up-link:hover {
            text-decoration: underline;
            
        }
        .form-control {
            background-color: #2d2d2d;
            color: #fff;
            border-color: #2d2d2d;
        }
        .form-control::placeholder {
            color: #fff;
            opacity: 1;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-gradient">
        <div class="container">
            <a class="navbar-brand" href="index">
                <img src="Views/img/LogoWozeric.png" alt="Logo" class="logo" height="100px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card text-white container-login">
                    <div class="card-body p-4 m-4">
                        <h1 class="mb-4">Login</h1>
                        <form action="" method="post">
                            <% if (request.getAttribute("error") != null) { %>
                                <p class="mt-3 text-danger"><%= request.getAttribute("error") %></p>
                            <% } %>
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Username" name="username" required>
                            </div>
                            <div class="mb-3">
                                <input type="password" class="form-control" placeholder="Password" name="password" required>
                            </div>
                            <div class="mb-3">
                                <button formaction="sign-in" name="btnlogin" type="submit" onclick=${empty user ? "alertSucces()":"alertError()"} class="btn btn-danger w-100 me-2">Sign In</button>
                            </div>
                            <div class="mb-3 text-center">
                                <a href="forgot-password" class="forgot-password-link">Forgot password?</a>
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
                                <label class="form-check-label" for="rememberMe">Remember Me</label>
                            </div>
                            <div class="mb-3">
                                <p>Don't have an account? <a href="sign-up" class="sign-up-link fs-6"><b>Sign up now</b></a></p>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script >
	function alertSucces() {
		Swal.fire({
			  icon: "success",
			  title: "Chúc mừng",
			  text: "Bạn đã đăng nhập thành công",

			});
	}
	
	function alertError() {
		Swal.fire({
			  icon: "error",
			  title: "Sai mật khẩu",
			  text:  "Bạn đã đăng nhập sai !",

			});
	}
    </script>
</body>
</html>
