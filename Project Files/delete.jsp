<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>

<%
  String email=(String)session.getAttribute("mail");
  String date=request.getParameter("date");
  //int d=Integer.parseInt(date);
  String time=request.getParameter("time");
  //int t=Integer.parseInt(time);
  String diary="view.jsp";
  try{
      Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydiary","root","");  
    PreparedStatement ps= con.prepareStatement("delete * from entry where (date=?) and (time=?) and (email=?)");
     ps.setInt(1,d);
      ps.setInt(2,t);
      ps.setString(3,email);
     ps.executeQuery();
       response.sendRedirect(diary);
 
 }
 catch(Exception e)
{
out.println(e);
}

%>