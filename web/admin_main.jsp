<%@ page import="javax.swing.plaf.nimbus.State" %>
<%@ page import="java.sql.*" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");

    java.util.Date date=new java.util.Date();
    String datetime=new Timestamp(date.getTime()).toString();


%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>nVIDIA Main Page</title>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <script src="dist/js/jquery-3.1.1.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>
<body>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">  NVIDIA  </a>
            <p CLASS="navbar-text">World Leader in Visual Computing Technologies. </p>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </div>
</nav>
<table class="table table-hover">
    <tr>
        <td></td>
        <td>#</td>
        <td>Name</td>
        <td>Email</td>
        <td>State</td>
        <td>More...</td>
    </tr>
    <%
        try {
            String driveName = "com.mysql.jdbc.Driver";
            String DBUser = "root";
            String DBPasswd = "";

            String connUrl = "jdbc:mysql://localhost/jsp";
            Class.forName(driveName).newInstance();
            Connection conn = DriverManager.getConnection(connUrl, DBUser, DBPasswd);
            Statement stmt = conn.createStatement();
            String sql = "select * from jianli where 1";
            ResultSet rs=stmt.executeQuery(sql);
            while (rs.next())
        }catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>

</body>
</html>