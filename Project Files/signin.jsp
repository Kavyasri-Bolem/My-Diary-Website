
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="signin.html"%>
<%
  String fname=request.getParameter("name1");
  String uname=request.getParameter("name2");
  String pwd=request.getParameter("pwd");
  String spd=request.getParameter("pwd");
  String email=request.getParameter("mail");
  String gen=request.getParameter("gender");
  String diary="dsr.html";
  
 
  try{
      Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
    PreparedStatement ps= con.prepareStatement("insert into signin(fullname,username,password,spassword,email,gender)values(?,?,?,?,?,?)");
       ps.setString(1,fname);
       ps.setString(2,uname);
       ps.setString(3,pwd);
       ps.setString(4,spd);
       ps.setString(5,email);
       ps.setString(6,gen);
       ps.executeUpdate();
       response.sendRedirect(diary);
       session.setAttribute("sess",uname);
      
 }
 catch(Exception e)
{   
   %>
     
     <script>
          document.getElementById("invalid").style.visibility='visible';
           document.getElementById("invalid").innerHTML ='already have an account with this mail-id';
           document.getElementById("invalid").style.color='red';
          
     </script>     

<%
  

}

 
%>
