<%--
  Created by IntelliJ IDEA.
  User: pm
  Date: 2016/12/18
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>mysql_test</title>
</head>
<body>
    <table border="1" align="center">
        <tr>
            <td>email</td>
            <td>name</td>
            <td>password</td>
        </tr>
        <%
            String driverClass="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/jsp";
            String user="root";
            String password="";
            String a="???";
            Connection conn;
            try {
                Class.forName(driverClass);
                conn=DriverManager.getConnection(url,user,password);
                Statement stmt=conn.createStatement();
                String sql="select * from user_info";
                ResultSet rs=stmt.executeQuery(sql);
                while (rs.next()){
                    %>
            <tr>
                <td><%=rs.getString("")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("password")%></td>
            </tr>
        <%
                }
            }
            catch (Exception ex){
                ex.printStackTrace();
            }
        %>
    </table>
</body>
</html>