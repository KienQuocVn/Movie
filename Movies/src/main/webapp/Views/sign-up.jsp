<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
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
            background-color: #0000FF;
            border-color: #0000FF;
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
            color: gray;
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
                        <h1 class="mb-4">Sign Up</h1>
                        <form action="signup" method="post">
                            <% if (request.getAttribute("error") != null) { %>
                                <p class="mt-3 text-danger"><%= request.getAttribute("error") %></p>
                            <% } %>
                            <div class="mb-3">
                                <input type="text" value="${user.userName}" class="form-control" placeholder="Full name" name="fullName" required>
                            </div>
                            <div class="mb-3">
                                <input type="text" value="${user.fullName}" class="form-control" placeholder="Username" name="userName" required>
                            </div>
                            <div class="mb-3">
                                <input type="password" value="${user.password}" class="form-control" placeholder="Password" name="password" required>
                            </div>
                            <div class="mb-3">
                                <input type="password" value="${user.password}" class="form-control" placeholder="Confirm Password" name="confirmPassword" required>
                            </div>
                            <div class="mb-3">
                                <input type="email" id="email" value="${user.email}" class="form-control" placeholder="Email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <button formaction="Sign-upSS" type="submit" class="btn btn-danger w-100 me-2">Sign Up</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
