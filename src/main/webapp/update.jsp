<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<title>Update Page</title>
<%@ include file="header.html"%>
<p><br/></p>
<%
String host = "jdbc:mysql://localhost:3306/project2";
Connection con = null;
Statement stat = null;
ResultSet res = null;
PreparedStatement stmt = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection(host,"root","Aryabose@2001");
%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
          id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <!doctype html>
        <html lang="en">

        <head>
          <!-- Required meta tags -->
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

          <!-- Fonts -->
          <link rel="dns-prefetch" href="https://fonts.gstatic.com">
          <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



          <link rel="icon" href="Favicon.png">

          <!-- Bootstrap CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<body>
     <main class="my-form">
      <div class="cotainer">
        <div class="row justify-content-center">
          <div class="col-md-8 main-container">
            <div>
            <div class="card-header" align="center">
	<h3><strong>Update Student Result</strong></h3>
<form action="" method="post">
	<%
	stat = con.createStatement();
	String u = request.getParameter("u");
	int rollNo = Integer.parseInt(u);
	String data = "select * from result where rollNo='"+rollNo+"'";
	res = stat.executeQuery(data);
	while(res.next()){
	%>

	<input type="hidden" name="rollNo" value='<%=res.getString("rollNo") %>'/>
	<div class="form-group">
		<label>Compiler Design</label>
		<input type="text" class="form-control" name="s1" value='<%=res.getString("s1") %>'/>
	</div>
	<div class="form-group">
		<label>Artificial Intelligence</label>
		<input type="text" class="form-control" name="s2" value='<%=res.getString("s2") %>'/>
	</div>
	<div class="form-group">
		<label>Software Engineering</label>
		<input type="text" class="form-control" name="s3" value='<%=res.getString("s3") %>'/>
	</div>
	<div class="form-group">
		<label>Operating Systems</label>
		<input type="text" class="form-control" name="s4" value='<%=res.getString("s4") %>'/>
	</div>
	<div class="form-group">
		<label>Object Oriented Programming</label>
		<input type="text" class="form-control" name="s5" value='<%=res.getString("s5") %>'/>
	</div>
	<div class="form-group">
		<label>Introduction to Industrial Management</label>
		<input type="text" class="form-control" name="s6" value='<%=res.getString("s6") %>'/>
	</div>
	</div>
	
	<%
	}
	%>
	<div align="center">
	<button type="submit" class="btn btn-warning"><a href="adminHome.jsp">Update</a></button>
	<button class="btn btn-warning"><a href="adminHome.jsp">Back</a></button>

</form>
</html>
	<%
String a = request.getParameter("rollNo");
String b = request.getParameter("s1");
String c = request.getParameter("s2");
String d = request.getParameter("s3");
String e = request.getParameter("s4");
String f = request.getParameter("s5");
String g = request.getParameter("s6");
if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null && g!=null){
	String query = "update result set s1=?, s2=?, s3=?, s4=?, s5=?, s6=? where rollNo ='"+a+"'";
	stmt = con.prepareStatement(query);
	stmt.setString(1,b);
	stmt.setString(2,c);
	stmt.setString(3,d);
	stmt.setString(4,e);
	stmt.setString(5,f);
	stmt.setString(6,g);
	stmt.executeUpdate();

}
%>