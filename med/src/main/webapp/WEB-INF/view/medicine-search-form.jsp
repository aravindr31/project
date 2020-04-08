<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine List-Search By Id</title>
<style>
html,
body{
height:100%;
}

body{
background: linear-gradient(#A5FECB,#20BDFF,#5433FF);

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
table{
 width: 100%;
border-collapse:collapse;
border:1px solid black;
}
th
{
color:white;
background-color: #3e8e41;
padding: 5px;
}
td{
  text-align: center;
padding: 5px;
}
tr{
background-color: #f5f5f5;
}
tr:hover {
background-color: #f5f5f5;
}

input{
backgroung-color:plum;
box-sizing: border-box;
border-radius:8px;
}
</style>
</head>
<body bgcolor="palegreen">
<center>
<h1>Q-Pharmacy +</h1>
<center>
<h3>Medicine Details-SEARCH BY ID</h3>

<br>
<table border="1" bgclor="white" >
	    <tr>
		   <th>Medicine-ID</th>
		   <th>Medicine Name</th>
		   <th>Price</th>
		   <th>Manu. Name</th>
		   <th>Stock</th>
		   <th>Manu. Date</th>
		   <th>Exp. Date</th> 
	      <th>Action</th>
		</tr>
		
		<c:url var="updateLink" value="/medicine/updateMedicine">
				<c:param name="medicineId" value="${medicine.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/medicine/deleteMedicine">
				<c:param name="medicineId" value="${medicine.id}"></c:param>
			</c:url>
			<tr>
				<td>${medicine.id}</td>
				<td>${medicine.medName}</td>
				<td>${medicine.price}</td>
				<td>${medicine.manName}</td>
				<td>${medicine.stock}</td>
				<td>${medicine.manDate}</td>
			  	<td>${medicine.expDate}</td>
				<td><a href="${updateLink}">Update</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
	
	</table>
	
<p>
		<button onclick="window.location.href = 'http://localhost:8751/med/medicine/list';">Back </button>
	</p>

</body>
</html>