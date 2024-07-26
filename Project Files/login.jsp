<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="login.html"%>

<%
  String mail=request.getParameter("name1");
  
  String pwd=request.getParameter("pwd");
  String diary="dsr.html";
  String log="login.html";
  try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from signin where email='"+mail+"' and password='"+pwd+"'");
     
      try{
       rs.next();
       if(rs.getString("password").equals(pwd)&&rs.getString("email").equals(mail))
       {
        
         session.setAttribute("sess", rs.getString("username"));
         session.setAttribute("mail",mail);
        response.sendRedirect(diary);
       }
       else{
       response.sendRedirect(log);
      
       }
       }
 catch(Exception e)
{
%>
<script>
          document.getElementById("invalid").style.visibility='visible';
           document.getElementById("invalid").innerHTML ='invalid mail-id/password';
           document.getElementById("invalid").style.color='red';
           $('#mail').css('border-color','red');
     </script>     
<%
}
}
catch(Exception e)
{
out.println(e);
}

%>