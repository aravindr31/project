<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Q-Pharmacy</title>
<link rel="stylesheet" href="style1.css">
			<script src="adminlogin.js"></script>
<style>
html,
body{
height:100%;
}
body{
margin:0;
padding:0;
background: linear-gradient( #43cea2,#185a9d);

background-repeat:no-repeat;
background-size:100%;
background-position:fixed;
font-family:Arial;

}

.loginBox{
position:center;
top:25%;
left:35%;
bottom:20%;
transform:transalate(-50%,-50%);
width:350px;
height:320px;
padding:40px 40px;
box-sizing:border-box;
background:transparent;
background:rgba(0,0,0,.5);
border-radius:20px; 
}

p{
color:white;
font-family:Arial;

}
h2{
font-family:impact;
font-size:28px;
font-style: italic;
color:tomato;
}

h3{
color:green;
font-size:20px;
text-align:center;
}

h1{
color:#efed40;
text-align:center;
}
.loginBox p{
margin:0;
padding:0;
front-weight:bold;
color:#ffff;
}
.loginBox input{
width:100%;
margin-bottom:20px;
}

.loginBox input[type="text"],
.loginBox input[type="password"]{
border:none;
border-bottom:1px solid #fff;
background:transparent;
outline:none;
height:40px;
color:#fff;
font-size:13px;
}


#p1{
text-align:center;
color:tomato;
}

.loginBox input[type="submit"]{
border:none;
background:#ff267e;
outline:none;
height:40px;
color:#fff;
front-size:16px;
cursor:pointer;
border-radius:20px;  
}

.loginBox input[type="submit"]:hover{
background:orange;
transition-duration: 0.4s;
color:#262626;
 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}


</style> 
<script>
function validate(){
var user=document.getElementById("username").value;
var pass=document.getElementById("password").value;
	if(user.trim()==""||pass.trim()==""){
		document.getElementById("p1").innerHTML="fields cannot be blank!!!";
		return false}
else{
	return true;
}}

</script>
</head>
<body >

<center>
<h2>Q-Pharmacy +</h2>
</center>
<br>
<center>
<form action="success" modelAttribute="admin"  onsubmit= "return validate()">
<div class="loginBox">

<p>STAFF LOGIN</p><input type="text" id="username"  placeholder="UserID" name="username"/>
<br>
<br>
<input type="password" id="password" placeholder="Passcode" name="password"/>
<br>
<br>
<p align="center" ><input type="submit"  name="submit" value="Login"/></p>
<p id="p1"></p>
</div>
</form>
</center>


</body>
</html>