<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
  String email=(String)session.getAttribute("mail");
  String task=request.getParameter("task");
  String date=request.getParameter("date");
  String time=request.getParameter("time");
  String diary="remainderr.jsp";
  
  try{
      Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
    PreparedStatement ps= con.prepareStatement("insert into task(email,task,date,time)values(?,?,?,?)");
       ps.setString(1,email);
       ps.setString(2,task);
       ps.setString(3,date);
       ps.setString(4,time);
       ps.executeUpdate();
       response.sendRedirect(diary);
 }
 catch(Exception e)
{
out.println(e);
}

%>