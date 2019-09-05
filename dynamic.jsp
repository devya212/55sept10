<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="5">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
body ,html{font-family:Georgia,Times new Roman, Helvetica;
}
#left
{
height:640px;
background-color:white;
border-right:5px solid black;
}
#right
{
height:640px;
background-color:white;
}
#header
{
height:70px;
background-color:	#FFD700;
}
#navbar
{
	width:100%;
	margin-top:10px;
	
} 
#divider
{
height:7px;
background-color:	#191970;
} 
</style>
</head>

<body>


<center><h2 style="color:red">Display Of All Record</h2></center>
	<table id="example" cellspacing="30" class="display" width="40%" height="70%">
		<thead>
		<tr>
		<th>Customer Code</th>
        <th>Customer Name</th>
        <th>Customer Address1</th>
        <th>Customer Address2</th>
        <th>Pin code</th>
        <th>Email Address</th>
        <th>Contact No.</th>
        <th>Primary Contact Person</th>
        <th>Record Status</th>
        <th>Active_Inactive Flag</th>
        <th>Create date</th>
        <th>Create By</th>
		</tr>
		</thead>
		<tbody>

		<c:forEach items="${customerList}" var="customer">	
		<tr>
		<td>${customer.getCustomerCode()}</td>
        <td>${customer.getCustomerName()}</td>
        <td>${customer.getAddress1()}</td>
        <td>${customer.getAddress2()}</td>
        <td>${customer.getPinCode()}</td>
        <td>${customer.getEmail()}</td>
        <td>${customer.getContactNo()}</td>
        <td>${customer.getContactPerson()}</td>
        <td>${customer.getRecordStatus() }</td>
        <td>${customer.getInactiveFlag()}</td>
        <td>${customer.getCreateDate()}</td>
        <td>${customer.getCreatedBy()}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	<br>
	<br>



	<script src="https://code.jquery.com/jquery-1.12.4.js"type="text/javascript"></script>
	<script
		src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
 
  
 
</body>

</html>
