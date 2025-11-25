<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .background {
            background-image: url('img/pexels-fu-zhichao-176355-587741.jpg');
            height: 1000px;
            width: 100%;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat; 
        }
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
           
        }
        .navbar {
            background-color: #624E88;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-brand {
            font-size: 24px;
            color: white;
            font-weight: bold;
        }

        .navbar-nav {
            list-style: none;
            display: flex;
            align-items: center;
        }

        .nav-item {
            margin-left: 20px;
        }

        .nav-item a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .nav-item a:hover {
            color: #c8a1e0;
        }
        .hero {
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color:#FEF9F2;
            text-align: center;
            padding: 0 20px;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
            font-weight: bold;
            color : white
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
        }

        .hero .btn {
            background-color: #624E88;
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .hero .btn:hover {
            background-color: #e4b1f0;
        }
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }

        .container h2 {
            margin-bottom: 40px;
            font-size: 32px;
            font-weight: bold;
            color :white;
        }

        .row {
            display: flex;
            justify-content: space-between;
        }

        .card {
            background-color: #E6D9A2;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 30%;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card img {
            width: 100%;
            height: auto;
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            font-size: 20px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .card-text {
            margin-bottom: 20px;
            font-size: 16px;
        }

        .btn-view {
            display: inline-block;
            padding: 10px 20px;
            background-color: #624E88;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn-view:hover {
            background-color: #e4b1f0;
        }

        footer {
            background-color: #624E88;
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: 0px;
        }

        footer a {
            color: white;
            text-decoration: none;
            margin: 0 ;
            font-size: 16px;
        }

        footer a:hover {
            color: #c8a1e0;
        }
    </style>
</head>
<body>

<nav class="navbar">
        <div class="navbar-brand">Eventopia</div>
        <ul class="navbar-nav">
            <li class="nav-item"><a href="AvalableEvents.jsp">Events</a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/Userlogin/UserSignUp.jsp">Sign Up</a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/Userlogin/Userlogin.jsp">Log In</a></li>
        </ul>
    </nav>

<div class="background">
    <section class="hero">
        <div>
            <h1>Welcome to Eventopia</h1>
            <p>Discover, Organize, and Manage Your Events with Ease</p>
            <a href="pexels-fu-zhichao-176355-587741.jpg" class="btn">Create Events</a>
        </div>
    </section>

    <!-- Featured Events Section -->
    <div class="container">
        <h2>Featured Events</h2>
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Exhibitions & Trade Shows</h5>
                    <p class="card-text">Experience the finest artworks from around the world.</p>
                    <a href="Exhibition.jsp" class="btn-view">View Details</a>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Concerts & Live Performances</h5>
                    <p class="card-text">Support a good cause while enjoying great entertainment.</p>
                    <a href="Music.jsp" class="btn-view">View Details</a>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Festivals</h5>
                    <p class="card-text">Support a good cause while enjoying great entertainment.</p>
                    <a href="Festivals.jsp" class="btn-view">View Details</a>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Footer -->
    <footer>
        <div>
            © 2024 Eventopia - <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
        </div>
    </footer>
</body>
</html>