<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  <style type="text/css">
  /* Global styles */
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
}

#cont {
  background-color: #ffffff;
  width: 80%;
  max-width: 600px;
  margin: 20px auto;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h1.hname {
  text-align: center;
  color: #333;
  margin-bottom: 20px;
  font-size: 24px;
}

label {
  display: inline-block;
  margin-bottom: 10px;
  color: #333;
  font-weight: bold;
}

input[type="text"],
input[type="date"],
input[type="number"],
select,
#inp {
  width: 100%;
  padding: 8px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 16px;
  box-sizing: border-box;
}

input[type="radio"] {
  margin: 0 10px;
}

button {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  margin-right: 10px;
}

button:hover {
  background-color: #45a049;
}

button#resetBtn {
  background-color: #f44336;
}

button#resetBtn:hover {
  background-color: #e53935;
}

button.subBtn {
  background-color: #2196F3;
}

button.subBtn:hover {
  background-color: #1976D2;
}

form {
  margin-bottom: 30px;
}

/* Responsive adjustments */
@media screen and (max-width: 600px) {
  #cont {
    width: 95%;
    padding: 15px;
  }

  button {
    width: 100%;
    margin-top: 10px;
  }
}
  
  </style>
  
  </head>
  <body>    
    
    <!-- create event form -->
   
    <div id="cont">
     <h1 class="hname">Create Event</h1>
      <form method="post" action="createeventServlet">
      
        <label for="ename">Event Name :</label>
        <input type="text" class="ename" name="ename" id="inp" /><br /><br />

        <label for="ename">Event Date :</label>
        <input type="date" class="edate" name="edate" id="inp" /><br /><br />
        
        <label for="etype">Select Event Type  </label><br0><br>
       
        <label for="etype" class="rtype">Outdoor Event :</label>        
        <input type="radio"  name="etype" value="outdoor"/>
        
        <label for="etype" class="rtype" >Indoor Event  :</label>
        <input type="radio" name="etype" value="indoor" />
        <br /><br />

        <label for="elocation">Event Location :</label>
        <input type="text" class="elocation" name="elocation" id="inp" /><br /><br />

        <label for="time">Choose time :</label>
        <select name="etime" id="inp"  >
          <option value="morning">Morning</option>
          <option value="evening">Evening</option>
          <option value="night">Night</option>
        </select>

        <br /><br />

        <button type="submit" id="subBtn">Submit</button>
        <button type="reset" id="resetBtn">Reset</button>

        <br /><br />
      </form>
    </div>
    <br><br>
    

    
     

  </body>
</html>
