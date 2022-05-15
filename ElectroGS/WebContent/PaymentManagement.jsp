<%@page import="com.PaymentManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/PaymentManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Payment Management</h1>

				<form id="formPaymentManagement" name="formPaymentManagement" method="post" action="PaymentManagement.jsp">


					Bill ID: <input id="bill_id" name="bill_id" type="text"
						class="form-control form-control-sm"> 
						
						<br>Card Number: <input id="card_number" name="card_number" type="text"
						class="form-control form-control-sm"> 
						
						<br> Card Type: <input id="card_type" name="card_type" type="text"
						class="form-control form-control-sm"> 
						
						<br> Exp Date: <input id="exp" name="exp" type="text"
						class="form-control form-control-sm"> 
						
						<br> CVV: <input id="cvv" name="cvv" type="text"
						class="form-control form-control-sm"> 
						
						<br> Amount: <input id="amount" name="amount" type="text"
						class="form-control form-control-sm"> 
						
						
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					PaymentManagement projectObj = new PaymentManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
