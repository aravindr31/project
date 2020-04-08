<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Sales</title>
<style>
html,
body{
height:100%;
}

body{
background: linear-gradient( #99ccff,#99ff33);
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
}
.error
{
color:red;
}

a{
text-decoration:none;
color:black;
}
.save
{
border:none;
background:#ff267e;
outline:none;
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
}

input{
width: 100%;
  margin: 8px 0;
  display: inline-block;
  border: none;
  border-radius: 0px;
  box-sizing: border-box;
}
</style>
</head>
<body >
<center>
<h1>Q-Pharmacy +</h1>
</center>
<h3>Add sales</h3>
<center>
<form:form action="saveSales" modelAttribute="sales" method="POST" >
		<table>
			<tbody>
			    <tr>
					<td><label>Medicine-ID:</label></td>
					<td><form:input path="id" name="medicineId"/></td>
				</tr>
				<tr>
					<td><label>Medicine Name:</label></td>
					<td><form:input path="medName" /></td>
					<form:errors path="medName" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Price:</label></td>
					<td><form:input path="price" /></td>
					<form:errors path="price" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Manufacturer Name:</label></td>
					<td><form:input path="manName" /></td>
					<form:errors path="manName" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Billed Date:</label></td>
					<td><form:input path="date" /></td>
					<form:errors path="date" cssClass="error"/>
				</tr>
				 
				
				<tr>
					<td><input type="submit" class="save" value="Save"></td>
				</tr>
			</tbody>
		</table>
	</form:form></center>
	<p>
	<button onclick="window.location.href = 'http://localhost:8751/med/medicine/list';">Back</button>
	</p>
</body>
</html>