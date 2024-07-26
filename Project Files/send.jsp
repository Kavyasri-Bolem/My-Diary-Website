<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="secret.html"%>

<%
String name=(String)session.getAttribute("mail");
String pwd=request.getParameter("pwd2");
String diary="secret2.jsp";
String log="secret.html";
try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select spassword from signin where email='"+name+"'");
      try{
       rs.next();
       if(rs.getString("spassword").equals(pwd))
       {
        response.sendRedirect(diary);
       }
       else{
       %>
<script>
          document.getElementById("invalid").style.visibility='visible';
           document.getElementById("invalid").innerHTML ='invalid password';
           document.getElementById("invalid").style.color='red';
           $('#mail').css('border-color','red');
     </script>     
<%
       response.sendRedirect(log);
      
       }
       }
 catch(Exception e)
{
%>
<script>
          document.getElementById("invalid").style.visibility='visible';
           document.getElementById("invalid").innerHTML ='invalid password';
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
%>