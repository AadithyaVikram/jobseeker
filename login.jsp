<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
background-image: url("login.jpg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  margin: 0;
  font-family: Arial;
  font-size: 17px;
}
input[type=text], input[type=password]
{
border: none;
border-bottom: 2px solid red;
width=50%;
height:25px;
}


</style>
</head>
<body >
<div class="content">
<center>
<h1 >Login</h1>
<br>
<form action="ind.jsp">
<label >ENTER gmail:</label>
<input type="text" name="user" placeholder="Type Username" size="20" maxlength="30">
<br>
<br>
<label >ENTER PASSWORD:</label>
<input type="password" name="ewd" placeholder="Type password" size="20" maxlength="30">
<br>
<br>
<input type="submit" value="SUBMIT">
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="24.jsp" >New User?</a>
</center>
</div>



</body>
</html>
