<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SALES DETAILS</title>
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

</style>
</head>
<body >
<center>
<h1>Q-Pharmacy +</h1>
</center>


<center>
<h3>SALES DETAILS</h3>
</center>
<br>

<table border="1" bgclor="white" >
	    <tr>
		   <th>Medicine-ID</th>
		   <th>Medicine Name</th>
		   <th>Price</th>
		   <th>Manufacturer Name</th>
		   <th> Billed date</th>
		   
		</tr>
		<c:forEach var="tempSales" items="${sales}">
		
			<tr>
				<td>${tempSales.id}</td>
				<td>${tempSales.medName}</td>
				<td>${tempSales.price}</td>
				<td>${tempSales.manName}</td>
				<td>${tempSales.date}</td>
				
			</tr>
		</c:forEach>
	</table>
	<p>
		<button onclick="window.location.href = 'http://localhost:8751/med/medicine/list';">Back to Medicine list </button>
	</p>

</body>
</html>