<%@page import="java.sql.*"%>

<% 
String id = request.getParameter("d");
int no = Integer.parseInt(id);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2","root","Aryabose@2001");
Statement st = con.createStatement();
st.executeUpdate("delete from result where rollNo='"+no+"'");
st.executeUpdate("delete from student where rollNo='"+no+"'");
response.sendRedirect("adminHome.jsp");
%>