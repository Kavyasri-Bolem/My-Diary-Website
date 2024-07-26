<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>REMAINDER</title>
<style>

body{
overflow:hidden;
background-image:url('remain.jpg');
height:500px;
background-position:center
background-repeat:no-repeat;
background-size:cover;
}

.center table{
position:absolute;
top:45%;
left:50%;
transform:translate(-50%,-50%);
}
.button{
background-color:violet;
border-color:blue;
height:40px;
width:100px;
color:white;
}
.center1 h1{
position:absolute;
top:0.2%;
left:96%;
transform:translate(-50%,-50%);
}
.navbar {
  width: 100%;
  top:0;
  left:0;
  position:fixed;
  background-color: #555;
  overflow:hidden;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #000;
}

.active {
  background-color: #04AA6D;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
.cen h1{
position:absolute;
top:6%;
left:55%;
background-image:linear-gradient(aqua,yellow);
height:6%;
width:110%;
transform:translate(-50%,-50%);
}
.center3{
position:absolute;
top:64%;
left:50%;
transform:translate(-50%,-50%);
}
.but{
background-image:linear-gradient(yellow,aqua);
border-radius:25px;
border:2px solid black;
font-family:cursive;
font-size:20px;
text-color:black;
height:34px;
width:180px;
color:black;
}
.but input[type="button"]:hover{
  transform: scale(0.95);
}
.text{
height:10%;
width:50%;
align:right;
font-family:cursive;
font-size:20px;
border-radius:25px;
border:2px solid black;
}
.text1{
height:10%;
width:25%;
align:right;
font-family:cursive;
font-size:20px;
border-radius:25px;
border:2px solid black;
}
.text2{
height:10%;
width:15%;
align:right;
font-family:cursive;
font-size:20px;
border-radius:25px;
border:2px solid black;
}
.text3{
height:10%;
width:10%;
align:right;
font-family:cursive;
background-color:aqua;
font-size:20px;
border-radius:20px;
border:2px solid black;
}
input[type="submit"]:hover{
  transform: scale(0.95);
}
</style>
<script>
function msg()
{
alert("Task is scheduled");
}
</script>
</head>
<body>
<div class="navbar">
  <a class="active" target="_self" href="mainpage.html"><i class="fa fa-fw fa-home"></i>MyDiary</a> 
  <a href="about1.html" target="_self"><i class="fa fa-fw fa-cloud"></i> About</a> 
  <a href="contact1.html" target="_self"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="mydiary.jsp" target="_self"><i class="fa fa-fw fa-edit"></i>Diary</a>
  <a href="secret.html" target="_self"><i class="fa fa-fw fa-lock"></i>Locker</a> 
</div>
<div class="center1">
<a href="mainpage.html" target="_self" ><h1><input class="button" type="button" value="logout"></h1></a>
</div>
<div class="cen">
<h1><form id="currentDate">
<script>
var today=new Date();
var date=today.getDate()+'/'+(today.getMonth()+1)+'/'+today.getFullYear();
document.getElementById("currentDate").value=date;
document.write(" "+date);
</script>
<%
String name=(String)session.getAttribute("sess");
out.print("...."+name+"'s Remainder...");
%>
</form></h1>
</div>
<div class="center">
<form action="remainder.jsp" method="post">
<table bgcolor="transparent" height="50%" width="50%" cellpadding="10" align="center">
<tr>
<td align="center" style="font-size:30">
Task:<input class="text" type="text" name="task"/><br><br>
Date:<input class="text1" type="date" name="date"/>
Time:<input class="text2" type="time" name="time"/><br>
<pre><input class="text3" type="submit" value="Save"></a></pre>
</td>
</tr>
</table>
</form>
<div class="center3">
<a href="schedule.jsp" target="_self" ><input class="but" type="submit" value="Scheduled tasks"></a>
</div>
</div>

</body>
</html>
