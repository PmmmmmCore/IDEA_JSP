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

    try {
        String driveName = "com.mysql.jdbc.Driver";
        String DBUser = "root";
        String DBPasswd = "";

        String connUrl = "jdbc:mysql://localhost/jsp";
        Class.forName(driveName).newInstance();
        Connection conn = DriverManager.getConnection(connUrl,DBUser,DBPasswd);
        Statement stmt = conn.createStatement();
        String sql = "select * from user_info where email='"+email+"' and password='"+password+"'";

        try {
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                response.sendRedirect("main.html");
            }
            else {
                response.sendRedirect("wrong.html");
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