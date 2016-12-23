<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8" %>
<%@ page import="java.net.DatagramPacket" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<html>
<head>
    <title>add message into user_info</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("password");

    java.util.Date date=new java.util.Date();
    String datetime=new Timestamp(date.getTime()).toString();

    try {
        String driveName = "com.mysql.jdbc.Driver";
        String DBUser = "root";
        String DBPasswd = "";

        String connUrl = "jdbc:mysql://localhost/jsp";
        Class.forName(driveName).newInstance();
        Connection conn = DriverManager.getConnection(connUrl,DBUser,DBPasswd);
        Statement stmt = conn.createStatement();
        String insert_sql = "insert into user_info (email,password,name) values('" + email + "','" + password +"','" + name +"')";
        String query_sql = "select * from user_info";

        try {
                stmt.execute(insert_sql);

        }catch (Exception e)    {
            e.printStackTrace();
        }

        try {
            ResultSet rs = stmt.executeQuery(query_sql);
            while (rs.next()) {
                %>
                Name = <%=rs.getString("name")%> <br>
                Email = <%=rs.getString("email")%> <br>
                Password = <%=rs.getString("password")%> <br>
                <%
            }
        }catch (Exception e) {
                e.printStackTrace();
                        }

                            stmt.close();
                            conn.close();

}catch (Exception e) {
                e.printStackTrace();
            }

%>
</body>
</html>
