
function validate(){
var username=document.getElementById("username").value;
var password=document.getElementById("password").value;
if(username=="kivi" && password=="sri1620"){
//alert("login successfull");
window.location="welcome.html";
return false;
}
else{
alert("you have entered wrong username or password");
}
}
