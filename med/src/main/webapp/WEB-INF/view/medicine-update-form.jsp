<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Medicine Details</title>
<style>
html,
body{
height:100%;
}

body{
background: linear-gradient( #00467F,#A5CC82);

background-repeat:no-repeat;
background-size:100%;
background-position:fixed;
font-family:Arial;
}

h1{
font-family:impact;
font-size:28px;
font-style: italic;
color:tomato;
}

h3{
font-family:Arial;
color:white;
}

a{
text-decoration:none;
color:burlywood;
}
.save
{
border:none;
background:#ff267e;
outline:none;
width:150px;
height:25px;
color:#fff;
cursor:pointer;
border-radius:20px;
margin-left:85px;
}

.save input[type="submit"]:hover
{
color:#262626;
}

td{
font-size:15px;
color:white;
}

</style>
</head>
<body bgcolor="snow">
<center>
<h1>Q-Pharmacy +</h1>
</center>
<h3>Update details</h3>
<form:form action="saveMedicine" modelAttribute="medicine" method="POST" >
		<table>
			<tbody>
			<tr>
					<td><label>Medicine-ID:</label></td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td><label>Medicine Name:</label></td>
					<td><form:input path="medName" /></td>
				</tr>
				<tr>
					<td><label>Price:</label></td>
					<td><form:input path="price" /></td>
				</tr>
				<tr>
					<td><label>Manufacturer Name:</label></td>
					<td><form:input path="manName" /></td>
				</tr>
				<tr>
					<td><label>Stock:</label></td>
					<td><form:input path="stock" /></td>
				</tr>
				<tr>
					<td><label>Manufacturing Date:</label></td>
					<td><form:input path="manDate" /></td>
				</tr>
			 	<tr>
					<td><label>Expiry Date:</label></td>
					<td><form:input path="expDate" /></td>
				</tr> 
				
				<tr>
					<td><input type="submit" value="Save" class="save"></td>
				</tr>
			</tbody>
		</table>
	</form:form>
	<p>
		<button onclick="window.location.href = 'http://localhost:8751/med/medicine/list';">Back </button>
	</p>
</body>
</html>