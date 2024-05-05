<%@ page import="java.text.NumberFormat" %>
<!DOCTYPE html>
<html>
<head>
<title>Administrator Page</title>
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

<%
// TODO: Include files auth.jsp and jdbc.jsp
%>
<%@ include file="auth.jsp"%>
<%@ include file="jdbc.jsp" %>
<%@ include file="header.jsp" %>

<%

// TODO: Write SQL query that prints out total order amount by day
String sql = "SELECT YEAR(orderDate), MONTH(orderDate), DAY(orderDate), SUM(totalAmount) " +
             "FROM ordersummary " +
             "GROUP BY YEAR(orderDate), MONTH(orderDate), DAY(orderDate)";

getConnection();
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rst = pstmt.executeQuery();

out.println("<h1 class=hd-h1>Administrator Sales Report by Day</h1>");
out.println("<table class=table border=1><tr><th>Order Date</th><th>Total Order Amount</th></tr>");

while (rst.next()) {
    int orderYear = rst.getInt(1);
    int orderMonth = rst.getInt(2);
    int orderDay = rst.getInt(3);
    String orderDate = orderYear + "-" + orderMonth + "-" + orderDay;
    double totalOrderAmount = rst.getDouble(4);
    NumberFormat currFmt = NumberFormat.getCurrencyInstance();
    out.println("<tr><td>" + orderDate + "</td><td>" + currFmt.format(totalOrderAmount) + "</td></tr>");
}

out.println("</table>");

closeConnection();
%>

</body>
</html>

