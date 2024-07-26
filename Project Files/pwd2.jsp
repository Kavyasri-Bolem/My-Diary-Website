<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ include file="settings.jsp"%>



<%
String name=(String)session.getAttribute("mail");
String pwd1=request.getParameter("mail");
String pwd2=request.getParameter("pwd2");
String pwd3=request.getParameter("pwd3");
  String diary="mydiary.jsp";
  String log="settings.jsp";
        if(!(pwd2).equals(pwd3)){
        %>
           <script>
          document.getElementById("invalid2").style.visibility='visible';
           document.getElementById("invalid2").innerHTML ='enter the password correctly';
           document.getElementById("invalid2").style.color='red';
           $('#mail').css('border-color','red');
     </script>     
<%
    }else{
     
    try{
       int check=0;
       Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from signin where email='"+pwd1+"'");
      if((name).equals(pwd1)){
         while(rs.next()){
            check=1;
           st.executeUpdate("update signin set password='"+pwd2+"' where email='"+pwd1+"'");  
       response.sendRedirect(diary);
     }
}
else{
%>
<script>  
          document.getElementById("invalid1").style.visibility='visible';
           document.getElementById("invalid1").innerHTML ='incorrect username';
           document.getElementById("invalid1").style.color='red';
           $('#mail').css('border-color','red');     
</script>  
<%
}
}
 catch(Exception e)
{
%>
<script>  
          document.getElementById("invalid1").style.visibility='visible';
           document.getElementById("invalid1").innerHTML ='enter the password correctly';
           document.getElementById("invalid1").style.color='red';
           $('#mail').css('border-color','red');     
</script>  
<%
}
}


%>