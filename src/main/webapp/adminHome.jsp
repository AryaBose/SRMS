<!DOCTYPE html>
  <html>
  <title>Admin Home Page</title>

  <body>
  	<%@include file="header.html" %>
    <div class="adminHomeHeading"><img src="images/TIB.jpg" width="100" height="100" vspace=8px><span
        style="margin-left: 20px;">TECHNO
        INTERNATIONAL BATANAGAR</span>
    </div>
    <div class="w3-container">
      <div class="w3-bar w3-black">
        <button class="w3-bar-item w3-button tablink w3-hover-orange w3-text-white"
          onclick="openCity(event,'London')">Add New Student</button>
        <button class="w3-bar-item w3-button tablink w3-hover-pale-green w3-text-white"
          onclick="openCity(event,'Paris')">Insert New Result</button>
        <button class="w3-bar-item w3-button tablink w3-hover-pale-green  w3-text-white"
          onclick="openCity(event,'Tokyo')">Registered Students</button>
        <button class="w3-bar-item w3-button tablink w3-hover-pale-green w3-text-white"
          onclick="openCity(event,'Tokyo1')">All Student Result</button>
        <a href="adminLogin.html" class="w3-bar-item w3-button tablink w3-hover-red w3-text-white"
          style="text-decoration: none;">Logout</a>
        <a href="index.html" class="w3-bar-item w3-button tablink w3-hover-blue w3-text-white"
          style="text-decoration: none;">Back to Home</a>
      </div>

      <div id="London" class="w3-container  city">
        <br>
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
        </head>

        <body>
          <main class="my-form">
            <div class="cotainer">
              <div class="row justify-content-center">
                <div class="col-md-8 main-container">
                  <div>
                    <div class="card-header" align="center">
                      <h3><strong>Add New Students</strong></h3>
                    </div>
                    <div class="card-body">
                      <form name="my-form" onsubmit="return validform()" action="addNewStudent.jsp" method="post">
                        <div class="form-group row">
                          <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                          <div class="col-md-6">
                            <select id="course" name="course" class="form-control">
                              <option value="B.Tech">B.Tech</option>
                              <option value="BCA">BCA</option>
                              <option value="B.E.">B.E.</option>
                              <option value="Diploma">Diploma</option>
                            </select>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                          <div class="col-md-6">
                            <select id="branch" name="branch" class="form-control">
                              <option value="Computer Science and Engineering">Computer Science and Engineering</option>
                              <option value="Electronics and Communication Engineering">Electronics and Communication
                                Engineering</option>
                              <option value="Mechanical Engineering">Mechanical Engineering</option>
                              <option value="Civil Engineering">Civil Engineering</option>
                              <option value="Computer Application">Computer Application</option>
                              <option value="Computer Science with Artificial Intelligence">Computer Science with
                                Artificial Intelligence</option>
                            </select>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="rollNo" required>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="name" required>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="dateOfBirth" class="col-md-4 col-form-label text-md-right">Date of Birth</label>
                          <div class="col-md-6">
                            <input type="date" name="dateOfBirth" placeholder="Date of birth." class="form-control"
                              required />
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="fatherName" required>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label for="gender" class="col-md-4 col-form-label text-md-right">Gender</label>
                          <div class="col-md-6  genderArea" align="center" style="border:none">
                            <div class="gender-option">
                              <label for="male">Male</label>
                              <input type="radio" id="male" name="gender" value="male" required>
                            </div>
                            <div class="gender-option">
                              <label for="female">Female</label>
                              <input type="radio" id="female" name="gender" value="female" required>
                            </div>
                            <div class="gender-option">
                              <label for="other">Other</label>
                              <input type="radio" id="other" name="gender" value="other" required>
                            </div>
                          </div>
                        </div>

                        <div align="center">
                          <button type="submit" class="btn btn-primary">
                            Save
                          </button>
                        </div>
                    </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
      </div>
      </main>

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
  </div>

  <div id="Paris" class="w3-container city" style="display:none">
    <br>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
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

    </head>

    <body>



      <main class="my-form">
        <div class="cotainer">
          <div class="row justify-content-center">
            <div class="col-md-8 main-container">
              <div>
                <div class="card-header" align="center">
                  <h3><strong>Insert New Result</strong></h3>
                </div>
                <div class="card-body">
                  <form name="my-form" onsubmit="return validform()" action="insertNewResult.jsp" method="">
                    <div class="form-group row">
                      <label for="full_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="rollNo">
                      </div>
                    </div>



                    <div class="form-group row">
                      <label for="user_name" class="col-md-4 col-form-label text-md-right">Compiler Design</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s1">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="phone_number" class="col-md-4 col-form-label text-md-right">Artificial
                        Intelligence</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s2">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="present_address" class="col-md-4 col-form-label text-md-right">Software
                        Engineering</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s3">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Operating
                        Systems</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s4">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Object Oriented
                        Programming</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s5">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Introduction to
                        Industrial Management</label>
                      <div class="col-md-6">
                        <input type="text" class="form-control" name="s6">
                      </div>
                    </div>

                    <div class align="center">
                      <button type="submit" class="btn btn-primary">
                        Save
                      </button>
                    </div>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <br>
  </div>

  </main>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>

  </html>
  </div>

  <div id="Tokyo" class="w3-container city" style="display:none">

    <section>
      <!--for demo wrap-->
      <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="2">
          <thead>
            <tr>
              <th>Course Name</th>
              <th>Branch Name</th>
              <th>Roll Number</th>
              <th>Name</th>
              <th>Father Name</th>
              <th>Gender</th>
            </tr>
          </thead>
        </table>
      </div>
      <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="2">
          <tbody>
            <%@page import="java.sql.*" %>
              <%@page import="Project.ConnectionProvider" %>
                <%try { Connection con=ConnectionProvider.getCon(); Statement st=con.createStatement(); ResultSet
                  rs=st.executeQuery("select *from student"); while(rs.next()) { %>
                  <tr>
                    <td>
                      <%=rs.getString(1) %>
                    </td>
                    <td>
                      <%=rs.getString(2) %>
                    </td>
                    <td>
                      <%=rs.getString(3) %>
                    </td>
                    <td>
                      <%=rs.getString(4) %>
                    </td>
                    <td>
                      <%=rs.getString(5) %>
                    </td>
                    <td>
                      <%=rs.getString(6) %>
                    </td>
                  </tr>

          </tbody>
          <%}} catch(Exception e) {}%>
        </table>
      </div>
    </section>
  </div>
  <div id="Tokyo1" class="w3-container city" style="display:none">

    <section>
      <!--for demo wrap-->
      <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="2">
          <thead>
            <tr>
              <th>ROLL NUMBER</th>
              <th>Compiler Design</th>
              <th>Artificial Intelligence</th>
              <th>Software Engineering</th>
              <th>Operating Systems</th>
              <th>Object Oriented Programming</th>
              <th>Introduction to Industrial Management</th>
              <th><center>Action</center></th>
            </tr>
          </thead>
        </table>
      </div>
      <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
          <tbody>
            <%@page import="java.sql.*" %>
              <%@page import="Project.ConnectionProvider" %>
                <% try{ Connection con = null;
                Statement stat = null;
                ResultSet res = null;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project2","root","Aryabose@2001");
                stat = con.createStatement();
                String data = "select * from result";
                res = stat.executeQuery(data);
                while(res.next()){ %>
                  <tr>
                    <td>
                      <%=res.getString(1) %>
                    </td>
                    <td>
                      <%=res.getString(2) %>
                    </td>
                    <td>
                      <%=res.getString(3) %>
                    </td>
                    <td>
                      <%=res.getString(4) %>
                    </td>
                    <td>
                      <%=res.getString(5) %>
                    </td>
                    <td>
                      <%=res.getString(6) %>
                    </td>
                    <td>
                      <%=res.getString(7) %>
                    </td>
                    <td>
                    <style>
                    a 
                    </style>
                    	<a href='update.jsp?u=<%=res.getString("rollNo")%>'><h6 style="color: white;">Edit</h6></a>
                    	<a href='delete.jsp?d=<%=res.getString(1)%>'><h6 style="color: white;">Delete</h6></a>
                    </td>
                  </tr>
                  <%}} catch(Exception e) {} %>
          </tbody>
        </table>
      </div>
    </section>

  </div>

  <br>
  </body>

  </html>