<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Table to Display Cards -->
       <div class="table-container">
            <h2>You can find your Saved Cards Details here</h2>
            <table id="cardsTable">
                <thead>
                    <tr>
                    	<th>CardId</th>
                        <th>Card Number</th>
                        <th>Bank Name</th>
                        <th>Card Type</th>
                        <th>Amount</th>
                        <th>Card Expire Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cards" items ="${allCards}">
                    <tr>
                    	<th>${cards.cardID}</th>
                        <td>${cards.cardNumber}</td>
                        <td>${cards.bankName}</td>
                        <td>${cards.cardType}</td>
                        <td>${cards.value}</td>
                        <td>${cards.expireDate}</td>
                        <td>
                            <a href="Update.jsp?CardId=${cards.cardID}&CardNumber=${cards.cardNumber}&CardType=${cards.cardType}&BankName=${cards.bankName}&Value=${cards.value}&ExpireDate=${cards.expireDate}">
                            <button>
								Update                            
                            </button>
                            </a>
                            <form action="DeleteServlet" method="post">
                            <a href="CardController.java?action=delete&cardId=${cards.cardID}">
                            <input type="hidden" name="cardId" value="${cards.cardID}">
                            	<button id="delete">
									Delete                            
                            	</button>
                            </a>
                            </form>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <style>
body {
    font-family: Arial, sans-serif;
    background-color: #624E88;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: auto;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
}

label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 8px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
}

button {
    padding: 10px 20px;
    margin:0px 0px 5px 5px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button[type="button"] {
    background-color: #2196F3;
}

button:hover {
    background-color: black;
}

.table-container {
    margin-top: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

button.delete, button.edit {
    background-color: red;
    color: white;
    border: none;
    border-radius: 4px;
    padding: 5px 10px;
    cursor: pointer;
}

button.edit {
    background-color: blue;
}
h2{
	color: #f2f2f2;
}
#delete{
background-color: red;
}
</style>
</body>
</html>