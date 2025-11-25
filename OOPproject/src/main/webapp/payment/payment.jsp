<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            background-color:#624E88;
        }

        .container {
       	 	/*margin-top: 1500px;*/
            max-width: 650px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        h3 {
            color: #555;
        }

        table {
            width: 100%;
            margin-top: 10px;
            border-collapse: collapse;
        }

        table td {
            padding: 8px;
            border: 1px solid #ddd;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        input[type="text"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .terms {
            margin-top: 15px;
        }

        .terms a {
            color: #007bff;
        }

        .event-summary {
            margin-bottom: 20px;
        }

        .event-summary h3 {
            margin-bottom: 10px;
        }

        .event-summary table {
            margin-top: 10px;
        }
    </style>
    
    <script>
    
        // Simple client-side form validation
        function validateForm() {
            var cardholderName = document.forms["paymentForm"]["cardholderName"].value;
            var cardNumber = document.forms["paymentForm"]["cardNumber"].value;
            var expiryDate = document.forms["paymentForm"]["expiryDate"].value;
            var cvv = document.forms["paymentForm"]["cvv"].value;
            var terms = document.forms["paymentForm"]["terms"].checked;

            // Check if the cardholder name, card number, expiry date, CVV, and terms are filled
            if (cardholderName == "" || cardNumber == "" || expiryDate == "" || cvv == "") {
                alert("All fields are required!");
                return false;
            }

            // Validate card number format (basic validation)
            if (cardNumber.length !== 16 || isNaN(cardNumber)) {
                alert("Please enter a valid 16-digit card number.");
                return false;
            }

            // Validate CVV (3 digits)
            if (cvv.length !== 3 || isNaN(cvv)) {
                alert("Please enter a valid 3-digit CVV.");
                return false;
            }

            // Check if terms and conditions are accepted
            if (!terms) {
                alert("You must agree to the terms and conditions.");
                return false;
            }

            return true;
        }
    
    </script>
    
</head>
<body>
    <div class="container">
        <h2>Payment Page</h2>
        <form name="/paymentservlet" action="paymentservlet" method="post" onsubmit="return validateForm()">
            <!-- Event Summary -->
            <!-- 
            <div class="event-summary">
                <h3>Event Summary</h3>
                <table>
                    <tr>
                        <td>Event Name:</td>
                        <td>Wedding Expo 2024</td>
                    </tr>
                    <tr>
                        <td>Event Date:</td>
                        <td>October 15, 2024</td>
                    </tr>
                    <tr>
                        <td>Location:</td>
                        <td>Grand Convention Center, New York</td>
                    </tr>
                    <tr>
                        <td>Total Amount:</td>
                        <td>$200</td>
                    </tr>
                </table>
            </div>
             -->
            <!-- Payment Information -->
            <h3>Payment Information</h3>
            <label for="cardholderName">Card holder Name:</label>
            <input type="text" name="cardholderName" required><br>
            <label for="cardNumber">Card Number:</label>
            <input type="text" name="cardNumber" required><br>
            <label for="expiryDate">Payment Date (DD/MM/YY):</label>
            <input type="text" name="expiryDate" required><br>
            <label for="cvv">CVV:</label>
            <input type="text" name="cvv" required><br>
            
            <!-- Terms & Conditions -->
            <div class="terms">
                <input type="checkbox" name="terms" required> I agree to the <a href="#">terms and conditions</a><br>
            </div>

            <!-- Complete Payment Button -->
            <input type="submit" value="Complete Payment">
        </form>
    </div>
</body>
</html>
