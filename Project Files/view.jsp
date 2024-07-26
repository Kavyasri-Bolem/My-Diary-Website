<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name=(String)session.getAttribute("mail");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mydiary";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
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
.butt{
background-image:linear-gradient(orange,lightgreen);
border-radius:25px;
border:2px solid black;
font-family:cursive;
font-size:18px;
text-color:black;
height:40px;
width:80px;
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
}
.text{
position:absolute;
top:68%;
left:75%;
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

              
table{
border:1px solid black;
font-family:cursive;
font-size:16px;
}
.center{
position:absolute;
top:55%;
left:55%;
transform:translate(-50%,-50%);
}
.center2 h1{
position:absolute;
top:30%;
left:17%;
transform:translate(-50%,-50%);
}
.center3{
position:absolute;
top:60%;
left:17%;
transform:translate(-50%,-50%);
}
::-webkit-scrollbar{
width:0px;
background:transparent;
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
<div class="cen">
<h1><form id="currentDate">
<script>
var today=new Date();
var date=today.getDate()+'/'+(today.getMonth()+1)+'/'+today.getFullYear();
document.getElementById("currentDate").value=date;
document.write(" "+date);
</script>
<%

String name1=(String)session.getAttribute("sess");
out.print("...."+name1+"'s Diary...");
%>
</form></h1>
</div>
<div class="center2">
<a href="mydiary.jsp" target="_self" ><i class="fa fa-fw fa-profile"></i><h1><input class="but" type="button" value="New entry"></h1> </a>
</div>
<div class="center3">
<table bgcolor="transparent" height="50%" width="60%" cellpadding="10" align="center" style="font-family:cursive">
<tr>
<td align="center" style="font-size:30;width="80%"  >
Date:<input class="text1" type="date" name="date"/>
Time:<input class="text2" type="time" name="time"/><br>
</td>
</tr>
<tr>
<td>
<form action="edit.jsp" method="post">
<input class="butt" type="button" value="Edit" name="edit"></h1> 
</form>
</td>
<td>
<form action="delete.jsp" method="post">
<input class="butt" type="submit" value="Delete" name="delete"></h1> 
</form>
</td>
</tr>

</table>

</div>
<div class="center">
<div style="height:450px; overflow-y: scroll; margin:0;padding:0">
<table align="center" bgcolor="white" border="1" cellspacing="0" height="20%">
<tr height="20%">

<th width="20%" >Date</th>
<th width="20%" >Time</th>
<th width="60%" >Entry</th>




</tr>

<%
try{
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
statement=con.createStatement();
String sql ="select * from entry where email='"+name+"' order by date desc" ;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr align="center" style="height:80px">
<td width="20%" ><%=resultSet.getString("date") %></td>
<td width="20%" ><%=resultSet.getString("time") %></td>
<td width="60%" height="20%"><div style="width:100%;height:100%;margin:0;padding:0;overflow:auto">
<%=resultSet.getString("entry") %></div></td>

</td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</div>
</body>
</html>