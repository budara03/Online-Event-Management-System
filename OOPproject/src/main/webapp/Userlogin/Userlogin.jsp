<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style >
        body {
            font-family: "Hind SemiBold", sans-serif;
            background-color: #624E88;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            text-align: center;
            font-size: 2rem;
            color: #333;
        }
  .log {
         align-items: center;
  }
  
        form {
            align-items: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #624E88;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #e4b1f0;
        }

        form input::placeholder {
            color: #888;
        }
    </style>
</head>
<body>

<div class ="log">
    <form action="<%= request.getContextPath()%>/UserLoginServlet" method="post">
        <h1>Login Page</h1>
        User Name <input type="text" name="username" placeholder="Enter your username"><br>
        Password <input type="password" name="password" placeholder="Enter your password"><br>
        <input type="submit" name="submit" value="Login">
    </form>
    </div>
</body>
</html>
