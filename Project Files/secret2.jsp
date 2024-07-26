<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>SECRET LOCKER</title>
<style>

body{
overflow:hidden;
background-image:url('lock.jpg');
height:500px;
background-position:center
background-repeat:no-repeat;
background-size:cover;
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
.cent{
position:absolute;
top:93.5%;
left:65%;
transform:translate(-50%,-50%);
}
textarea{
height:70%;
width:70%;
align:right;
font-family:cursive;
background-image:linear-gradient(white,aqua);
font-size:20px;
border-radius:25px;
border:2px solid black;
outline:none;
}
.text{
position:absolute;
top:68%;
left:63%;
height:105%;
width:80%;
transform:translate(-50%,-50%);
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
.but1{
background-color:yellow;
border-radius:20px;
border:2px solid black;
font-family:cursive;
font-size:20px;
text-color:black;
height:40px;
width:100px;
color:black;
}
input[type="submit"]:hover{
transform: scale(0.95);
}
.center3 h1{
position:absolute;
top:90%;
left:50%;
transform:translate(-50%,-50%);
}
.center4{
position:absolute;
top:90%;
left:50%;
transform:translate(-50%,-50%);
}
.but{
background-image:linear-gradient(orange,yellow);
border-radius:25px;
border:2px solid black;
font-family:cursive;
font-size:23px;
text-color:black;
height:40px;
width:200px;
color:black;
}
</style>
</head>
<body >
<div class="navbar">
  <a class="active" target="_self" href="mainpage.html"><i class="fa fa-fw fa-home"></i>MyDiary</a> 
  <a href="about1.html" target="_self"><i class="fa fa-fw fa-cloud"></i> About</a> 
  <a href="contact1.html" target="_self"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="mydiary.jsp" target="_self"><i class="fa fa-fw fa-edit"></i>Diary</a>
  <a href="remainderr.jsp" target="_self"><i class="fa fa-fw fa-bell"></i>Remainder</a>
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
out.print("...."+name+"'s Secret Locker...");
%></form></h1>
</div>
 <form method="post" action="locker.jsp" >
  <div class="text">
  <textarea id='t' name='entry' placeholder="                                   Start your Diary in your Locker...."></textarea>
   </div>
  <div class="cent"> 
  <input class="but1" type="submit" value="Save">
  </div>
</form>
<div class="center3">
<a href="view2.jsp" target="_self" ><h1><input class="but" type="submit" value="view entries"></h1></a>
</div>
<body>
</html>