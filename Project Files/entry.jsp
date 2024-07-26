<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>

<%
  String email=(String)session.getAttribute("mail");
  String ent=request.getParameter("entry");
  String diary="mydiary.jsp";
  try{
      Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
    PreparedStatement ps= con.prepareStatement("insert into entry(email,date,entry)values(?,?,?)");
      java.sql.Date d=new java.sql.Date(new java.util.Date().getTime());
      ps.setString(1,email);
      ps.setDate(2,d);
      ps.setString(3,ent);
     ps.executeUpdate();
       response.sendRedirect(diary);
 
 }
 catch(Exception e)
{
out.println(e);
}

%>