<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>SECRET PASSWORD</title>
<style>
body,html{
background-image:url('myd.jpg');
height:100%;
width:100%;
display:grid;
place-items:center;
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
.text{
height:10%;
width:50%;
align:right;
font-family:cursive;
font-size:20px;
border-radius:25px;
border:2px solid black;
}
::selection{
  background: #4158d0;
  color: #fff;
}
.wrapper{
  width: 380px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
}
.wrapper .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color: #fff;
  user-select: none;
  border-radius: 15px 15px 0 0;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
}
.wrapper form{
  padding: 10px 30px 50px 30px;
}
.wrapper form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapper form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 25px;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus,
form .field input:valid{
  border-color: #4158d0;
}
.wrapper form .field label{
  position: absolute;
  top: 50%;
  left: 20px;
  color: #999999;
  font-weight: 400;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
form .field input:focus ~ label,
form .field input:valid ~ label{
  top: 0%;
  font-size: 16px;
  color: #4158d0;
  background: #fff;
  transform: translateY(-50%);
}
form .content{
  display: flex;
  width: 100%;
  height: 50px;
  font-size: 16px;
  align-items: center;
  justify-content: space-around;
}
form .content .checkbox{
  display: flex;
  align-items: center;
  justify-content: center;
}
form .content input{
  width: 15px;
  height: 15px;
  background: red;
}
form .content label{
  color: #262626;
  user-select: none;
  padding-left: 5px;
}
form .content .pass-link{
  color: "";
}
form .field input[type="submit"]{
  color: #fff;
  border: none;
  padding-left: 0;
  margin-top: -10px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
  transition: all 0.3s ease;
}
form .field input[type="submit"]:active{
  transform: scale(0.95);
}
form .signin-link{
  color: #262626;
  margin-top: 20px;
  text-align: center;
}
form .pass-link a,
form .signin-link a{
  color: #4158d0;
  text-decoration: none;
}
form .pass-link a:hover,
form .signin-link a:hover{
  text-decoration: underline;
}
</style>
<script>
       function back(){
        var pwd=document.getElementById("pwd2").value;
         if(pwd.value.length<8){
          document.getElementById("invalid3").style.visibility='visible';
           document.getElementById("invalid3").innerHTML ='password length must be atleast 8 characters';
           document.getElementById("invalid3").style.color='red';
           }
else if(pwd.length>15){
          document.getElementById("invalid3").style.visibility='visible';
           document.getElementById("invalid3").innerHTML ='password length must not exceed 15 characters';
           document.getElementById("invalid3").style.color='red';
           } 
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
  <a href="remainderr.jsp" target="_self"><i class="fa fa-fw fa-bell"></i>Remainder</a>
</div>
<div class="center1">
<a href="mainpage.html" target="_self" ><h1><input class="button" type="button" value="logout"></h1></a>
</div>

<div class="wrapper">
   
            <div class="field">
         <div class="title">
            login password
         </div>
       
         <form action="pwd2.jsp">
            <div class="field">
               <input type="email" name="mail" required>
               <label>Username</label>
            </div>
            <pre>    <label id="invalid1" name="invalid"></label></pre>
            <div class="field">
               <input type="password" name="pwd2" required>
               <label>New-Password</label>
            </div>
       
            <div class="field">
               <input type="password" name="pwd3" required>
               <label>Re-Enter-Password</label>
            </div>
            <pre>    <label id="invalid2" name="invalid"></label></pre>
            
            <div class="field">
               <input type="submit" value="ok" onclick="back()">
            </div>
            
         </form>
      </div>
   </body>
</html>

