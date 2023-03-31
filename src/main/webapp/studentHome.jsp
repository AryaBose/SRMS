<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try
{
String rollNo=request.getParameter("rollNo");
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from student inner join result where student.rollNo=result.rollNo and student.rollNo='"+rollNo+"'");
if(rs.next()){
%>
<head>
<title>Student Result Home</title>

</head>


<div class="adminHomeHeading"><img src="images/TIB.jpg" width="100" height="100" vspace=8px><span style="margin-left: 20px;">TECHNO
        INTERNATIONAL BATANAGAR</span>
    </div>
    <a href="index.html" class="hide_print home-btn">Home</a>
  <hr class="new1">
<style>



@media print{
.hide_print{
display: none;
}
*{
font-size: 86%;
}

.adminHomeHeading{
font-size:23pt !important;
}
}



table{
  width:100%;
  table-layout: fixed;
  background-color: rgba(255,255,255,0.75);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: bold;
  font-size: 12px;
  color: black;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}
.adminHomeHeading {
	display:flex;
	justify-content: center;
	align-items:center;
    font-size: 1.5rem;
    padding: 1px 20px;
    font-weight: bolder;
    font-style: italic;
    color: white;
  }
  
  .home-btn{
  	text-decoration:none;
  	font-size: 20px;
    border-left: 10px;
    border-right: 10px;
    border-style: solid;
    background-color: orange;
    margin: 0 10px;
    padding: 5px 25px;
    text-align: center;
    color:black;
    border-radius: 100%;
  }
  .home-btn:hover{
  background-color: red;
  }


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  /*background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;*/
  background-color: black !important;
  font-family: 'Roboto', sans-serif;
}
body::before {
    content: "";
    width: 100vw;
    height: 100vh;
    position: fixed;
    top: 0;
    left: 0;
    background: url("images/graduation_day.jpg") center/cover;
    z-index: -1;
    opacity: 0.5;
  }

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name:&nbsp; TIB</th>
          <th>Course Name:&nbsp;&nbsp; <%=rs.getString(1) %></th>
          <th>Branch Name:&nbsp;&nbsp; <%=rs.getString(2) %></th>
          <th><center>RollNo:&nbsp;&nbsp; <%=rs.getString(3) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name:&nbsp;&nbsp; <%=rs.getString(4) %></th>
          <th>Father Name:&nbsp;&nbsp; <%=rs.getString(5) %></th>
          <th>Gender:&nbsp;&nbsp; <%=rs.getString(6) %></th>
          <th class="hide_print"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="images/print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color: black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: silver;
  color: black;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>PCC-CS501(5505)</td>
        <td colspan="2">Compiler Design</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(8) %></td>
      </tr>
      <tr>
        <td>PEC-IT501B(5510)</td>
        <td colspan="2">Artificial Intelligence</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(9) %></td>
      </tr>
      <tr>
        <td>ESC501(5505)</td>
        <td colspan="2">Software Engineering</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(10) %></td>
      </tr>
      <tr>
        <td>PCC-CS502(5507)</td>
        <td colspan="2">Operating Systems</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(11) %> </td>
      </tr>
      <tr>
        <td>PCC-CS503(5504)</td>
        <td colspan="2">Object Oriented Programming</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td> <%=rs.getString(12) %> </td>
      </tr>
      <tr>
        <td>HSMC-501(5508)</td>
        <td colspan="2">Introduction to Industrial Management</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td> <%=rs.getString(13) %> </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>600</td>
        <td>180</td>
        <td><%float sum=rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13); out.println(sum); %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/600);%></td>
      </tr>
  </table>
   
</body>
<%}
else
{
response.sendRedirect("errorResultView.html");	
}
}
catch(Exception e)
{}%>

