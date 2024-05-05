<!DOCTYPE html>
<html>
<head>
<title>Login Screen</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<style>
        body {
            font-family: Georgia, serif !important;
			margin: 20px !important; /* Use !important to increase specificity */
        }

        table {
            width: 100%;
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

		.hd-h3 {
			font-family: Georgia, serif !important;
			padding-top: 20px !important;
		}

		.form-fm, .submit, .para-p {
			margin-top: 10px !important;
		}
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div style="margin:0 auto;text-align:center;display:inline">

<h3 class=hd-h3>Please Login to System</h3>

<%
// Print prior error login message if present
if (session.getAttribute("loginMessage") != null)
	out.println("<p class=para-p>"+session.getAttribute("loginMessage").toString()+"</p>");
%>

<br>
<form name="MyForm" method=post action="validateLogin.jsp">
<table style="display:inline">
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Username:</font></div></td>
	<td><input type="text" name="username"  size=10 maxlength=10></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Password:</font></div></td>
	<td><input type="password" name="password" size=10 maxlength="10"></td>
</tr>
</table>
<br/>
<input class="submit" type="submit" name="Submit2" value="Login">
</form>

</div>

</body>
</html>

