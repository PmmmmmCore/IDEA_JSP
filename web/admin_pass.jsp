<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8" %>
<%@ page import="java.net.DatagramPacket" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<%
    String pass=request.getParameter("pass");
    String email=request.getParameter("email");

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
        String update_pass = "UPDATE user_info SET state=1 WHERE email='"+ email +"'";
       // String update_fail = "UPDATE user_info SET state=2 WHERE email='"+ email +"'";

        try {
            stmt.execute(update_pass);
            response.sendRedirect("admin_main.jsp");
        }catch (Exception e) {
            e.printStackTrace();
        }


        stmt.close();
        conn.close();

    }catch (Exception e) {
        e.printStackTrace();
    }

%>