<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>MY DIARY</title>
<style>
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
html{
height:100%;
}
body{
height:100%;
overflow:hidden;
background-image:url('myd.jpg');
height:500px;
background-position:center
background-repeat:no-repeat;
background-size:cover;
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
.but{
background-image:linear-gradient(orange,lightgreen);
border-radius:25px;
border:2px solid black;
font-family:cursive;
font-size:23px;
text-color:black;
height:50px;
width:250px;
color:black;
}
.but1{
background-color:skyblue;
border-radius:20px;
border:1px solid black;
font-family:cursive;
font-size:23px;
text-color:black;
height:40px;
width:100px;
color:black;
}
.center2 h1{
position:absolute;
top:30%;
left:17%;
transform:translate(-50%,-50%);
}
.center3 h1{
position:absolute;
top:50%;
left:17%;
transform:translate(-50%,-50%);
}
.center4 h1{
position:absolute;
top:70%;
left:15.5%;
transform:translate(-50%,-50%);
}

.cent{
position:absolute;
top:95%;
left:65%;
transform:translate(-50%,-50%);
}
textarea{
height:70%;
width:70%;
align:right;
font-family:cursive;
background-image:linear-gradient(white,gold);
font-size:20px;
border-radius:25px;
border:2px solid black;
outline:none;
}
.text{
position:absolute;
top:68%;
left:75%;
height:105%;
width:80%;

transform:translate(-50%,-50%);
}
textarea:focus{
outline:none;
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
@media only screen and (max-width: 620px) {
  /* For mobile phones: */
  .button,.but,.but1,.text,.textarea {
    width: 100%;
  }
}

</style>

<head>
<body>
<div class="navbar">
  <a class="active" target="_self" href="mainpage.html"><i class="fa fa-fw fa-home"></i>MyDiary</a> 
  <a href="about1.html" target="_self"><i class="fa fa-fw fa-cloud"></i> About</a> 
  <a href="contact1.html" target="_self"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="secret.html" target="_self"><i class="fa fa-fw fa-lock"></i>Locker</a>
  <a href="remainderr.jsp" target="_self"><i class="fa fa-fw fa-bell"></i>Remainder</a>
 </div>
<div class="center1">
<a href="mainpage.html" target="_self" ><h1><input class="button" type="button" value="logout"></h1></a>
</div>
<div class="center2">
<a href="profile.jsp" target="_self" ><i class="fa fa-fw fa-profile"></i><h1><input class="but" type="button" value="My Profile"></h1> </a>
</div>
<div class="center3">
<a href="view.jsp" target="_self" ><i class="fa fa-fw fa-view"></i><h1><input class="but" type="button" value="View entries"></h1></a>
</div>
<div class="center4">
<a href="settings.jsp" target="_self" ><h1><i class="fa fa-fw fa-spin"></i><input class="but" type="button" value="Settings"></h1></a>
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
out.print("...."+name+"'s Diary...");
%></form></h1>
</div>
 <form method="post" action="entry.jsp" >
  <div class="text">
  <textarea id='t' name='entry' placeholder="                                   Start your Diary...."></textarea>
   </div>
  <div class="cent"> 
  <input class="but1" type="submit" value="Save">
  </div>
</form>
</body>

</html>
