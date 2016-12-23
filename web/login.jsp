<%@ page import="javax.swing.plaf.nimbus.State" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String driveName = "com.mysql.jdbc.Driver";
    String DBUser = "root";
    String DBPasswd = "";
    java.util.Date date=new java.util.Date();
    String connUrl = "jdbc:mysql://localhost/jsp";
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String sql = "select * from user_info where email='"+email+"' and password='"+password+"'";
    Statement stmt = null;
    ResultSet rs = null;
    try
    {
        Class.forName(driveName).newInstance();
        Connection conn = DriverManager.getConnection(connUrl,DBUser,DBPasswd);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
        if (rs.next())
        {
            session.setAttribute("email",email);
            response.sendRedirect("index.jsp");
            %>
                Email = <%=rs.getString("email")%> <br>
                Password = <%=rs.getString("password")%> <br>
            <%
        }
        else
        {
            response.sendRedirect("index.jsp");
        }
    }
    catch (SQLException e)
    {
        e.printStackTrace();
    }
%>