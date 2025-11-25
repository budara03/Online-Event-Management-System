<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update</title>
    <style type="text/css">
        body {
            font-family: "Hind SemiBold", sans-serif;
            background-color: #624E88;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
 .container1
{
    display: flex;
    justify-content:center;
    align-items: center;
    min-height: 100vh;
    /*background: black;*/

}
        h1 {
            text-align: center;
            font-size: 2rem;
            color: #333;
        }

        form {
            width: 700px;
            padding:40px ;
            background: white;
            border-radius: 10px;
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
            background-color:  #624E88;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #4cae4c;
        }

        form input::placeholder {
            color: #888;
        }
    </style>
</head>
<body>

<%  String id = request.getParameter("id");
	String uname = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone_number");
    String fname = request.getParameter("first_name");
    String lname = request.getParameter("last_name");
    String address =request.getParameter("address"); 
    String user_type =request.getParameter("user_type"); 
    
  %>   <div class="container1">
      <form action="<%= request.getContextPath()%>/UpdateUserservarlet" method="post">
      <br><br> <br><br><br><br>
      <h1>Update login</h1>
       UserID <input type="text" name="id"value =<%=id%> readonly><br>
       User Name <input type="text" name="name" value =<%=uname%> ><br>
       Password <input type="password" name="psw"value =<%=password%> ><br>
       Email <input type="text" name="email"value =<%=email%> ><br>
       Phone Number <input type="text" name="phone" value =<%=phone%> ><br>
       first name <input type="text" name="fname"value =<%=fname%> ><br>
       last name <input type="text" name="lname"value =<%=lname%> ><br>
       Address <input type="text" name="address"value =<%=address%> ><br>
       User_type <input type="text"name="utype"value =<%=user_type%> ><br>
        
        
        <input type="submit" name="update" value="update">
    </form>
</div>
</body>
</html>
