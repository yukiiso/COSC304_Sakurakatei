<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Taii's Nandemo Grocery CheckOut Line</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
		body {
			font-family: Georgia, serif !important;
			margin: 20px !important; /* Use !important to increase specificity */
		}

		table {
			width: 60% !important;
			border-collapse: collapse;
			background-color: #F2F2F2; /* Set your desired background color */
			margin-top: 20px; /* Optional: Add some space above the table */
		}

		th, td {
			border: 1px solid #dddddd;
			text-align: left;
			padding: 8px;
		}

		th {
			background-color: #7FBFB0; /* Set your desired header background color */
			color: white;
		}

		.hd-h1 {
			font-family: Georgia, serif !important;
			padding-top: 20px !important;
			padding-left: 10px !important;
		}
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<!-- Taii Hirano, 44551257 -->
<!-- Yuki Isomura, 11888757 -->

<%-- <h1 align=center><font face=cursive color=#3399FF>Taii's Nandemo Grocery</font></h1> --%>

<h1 class=hd-h1>Enter your customer id to complete the transaction:</h1>

<form action = "order.jsp" method="post">
  <table>
    <tbody>
      <tr>
        <td>
          <label for="customerId">CustomerID:</label>
        </td>
        <td>
          <input type="text" id="customerId" name="customerId" required>
        </td>
      </tr>
      <tr>
        <td>
          <label for="password">Password:</label>
        </td>
        <td>
          <input type="password" id="password" name="password" required>
        </td>
      </tr>
      <tr>
        <td>
          <button type="reset">Reset</button>
        </td>
        <td>
          <button type="submit">Submit</button>
        </td> 
      </tr>
    </tbody>
  </table>
</form>

</body>
</html>