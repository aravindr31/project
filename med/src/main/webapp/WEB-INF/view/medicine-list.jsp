<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STOCK DETAILS</title>
<style>
html,
body{
height:100%;
}

body{
background: linear-gradient( #314755,#26a0da);

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

.button:hover
{
background:orange;
transition-duration: 0.4s;
color:#262626;
 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
 }
 .btn-group{
 overflow:hidden;
 }
 .btn-group .button {
  background-color: black; 
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  cursor: pointer;
  float: left;
  overflow:hidden;
}
 .btn-group .button:hover {
  background-color: #3e8e41;
}
input{
background-color:plum;
box-sizing: border-box;
}
label
{
font-family:Arial;
color:white;
}
.save
{
border:none;
background:black;
outline:none;
height:25px;
color:#fff;
cursor:pointer;
border-radius:20px;
margin-left:0px;
}
.save input[type="submit"]:hover
{
color:black;
}
.search{
position:absolute;
top:30%;
left:75%;
}
.box{
  display: inline-block;
  outline:none;
  background:white;
  colour:white;
  border: 1 px solid grey;
  border-radius: 0px;
  box-sizing: border-box;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 7px 20px;
  text-decoration: none;
  font-size: 13px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}


</style>
</head>
<body >
<center>
<h1>Q-Pharmacy +</h1>
</center>


<!--  <div class="btn-group">
<input type="button" value="Add Medicine" onclick="window.location.href='addMedicine';return false;" class="button"/>
<button  value="Logout"  class="button" onclick="window.location.href = 'http://localhost:8751/med/index.jsp';">Logout </button>
</div>-->

<div class="topnav">
  <a class="active" href="addMedicine">Add</a>
    <a  href="addSales">New Sale</a>
    <a  href="list">View sales</a>
      <a  href="addSupplier">Add Supplier</a>
    <a  href="/supplier/list">View Supplier</a>
  <a href="http://localhost:8750/med/index.jsp">SignOut</a>
</div>

<center>
<h3>STOCK DETAILS</h3>
<div>

<form action="searchMedicine"   >
<label>Search By Id:</label>
<input type="number" name="medicineId" class="box">
<input type="submit" value="Search" class="save">
</form>
<br>
</div>
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
	      <th>Action</td>
		</tr>
		<c:forEach var="tempMedicines" items="${medicines}">
		<c:url var="updateLink" value="/medicine/updateMedicine">
				<c:param name="medicineId" value="${tempMedicines.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/medicine/deleteMedicine">
				<c:param name="medicineId" value="${tempMedicines.id}"></c:param>
			</c:url>
			<tr>
				<td>${tempMedicines.id}</td>
				<td>${tempMedicines.medName}</td>
				<td>${tempMedicines.price}</td>
				<td>${tempMedicines.manName}</td>
				<td>${tempMedicines.stock}</td>
				<td>${tempMedicines.manDate}</td>
			  	<td>${tempMedicines.expDate}</td>
				<td><a href="${updateLink}">Update</a> |
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	

</body>
</html>