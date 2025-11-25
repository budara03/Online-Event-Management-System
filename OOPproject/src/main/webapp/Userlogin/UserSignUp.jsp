<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #624E88;
            margin: 0;
            padding: 20px;
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }

        h1,h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #624E88;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #e4b1f0;
        }

        input:focus {
            border-color: #80bdff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, .25);
        }
    </style>
</head>
<body>

  <form action="<%= request.getContextPath()%>/UserSignUpServlet" method="post">
        <h1>SignUp</h1>
		Username <input type="text" name="name"><br>
		Password <input type="password" name="psw"><br>
		Email <input type="text" name="email"><br>
		Phone Number <input type="text" name="phone"><br>
		First Name <input type="text" name="fname"><br>
		Last Name <input type="text" name="lname"><br>
		Address <input type="text" name="address"><br>
		UserType <input type="text" name="utype"><br>
		
		<input type="submit" name="submit" value="Create a Account">
	</form>
</body>
</html>