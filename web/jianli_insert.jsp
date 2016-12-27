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
    <title>add message into jianli</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String sex=request.getParameter("sex");
    String chusheng=request.getParameter("chusheng");
    String mingzu=request.getParameter("mingzu");
    String hunyin=request.getParameter("hunyin");
    String jiguan=request.getParameter("jiguan");
    String suozaidi=request.getParameter("suozaidi");
    String dianhua=request.getParameter("dianhua");
    String qizhi1=request.getParameter("qizhi1");
    String qizhi2=request.getParameter("qizhi2");
    String qizhi3=request.getParameter("qizhi3");
    String xuexiao1=request.getParameter("xuexiao1");
    String xuexiao2=request.getParameter("xuexiao2");
    String xuexiao3=request.getParameter("xuexiao3");
    String zhuanye1=request.getParameter("zhuanye1");
    String zhuanye2=request.getParameter("zhuanye2");
    String zhuanye3=request.getParameter("zhuanye3");
    String xueli1=request.getParameter("xueli1");
    String xueli2=request.getParameter("xueli2");
    String xueli3=request.getParameter("xueli3");
    String xuewei1=request.getParameter("xuewei1");
    String xuewei2=request.getParameter("xuewei2");
    String xuewei3=request.getParameter("xuewei3");
    String qizhi4=request.getParameter("qizhi4");
    String qizhi5=request.getParameter("qizhi5");
    String qizhi6=request.getParameter("qizhi6");
    String danwei1=request.getParameter("danwei1");
    String danwei2=request.getParameter("danwei2");
    String danwei3=request.getParameter("danwei3");
    String zhiwei1=request.getParameter("zhiwei1");
    String zhiwei2=request.getParameter("zhiwei2");
    String zhiwei3=request.getParameter("zhiwei3");
    String zhize1=request.getParameter("zhize1");
    String zhize2=request.getParameter("zhize2");
    String zhize3=request.getParameter("zhize3");
    String ruanjian=request.getParameter("ruanjian");
    String putonghua=request.getParameter("putonghua");
    String yingwen=request.getParameter("yingwen");
    String qita=request.getParameter("qita");
    String zige=request.getParameter("zige");
    String aihao=request.getParameter("aihao");
    String rongyu=request.getParameter("rongyu");
    String ziwopingjia=request.getParameter("ziwopingjia");
    String zhengzhi=request.getParameter("zhengzhi");
    String qizhi7=request.getParameter("qizhi7");
    String danwei4=request.getParameter("danwei4");
    String zhiwei4=request.getParameter("zhiwei4");
    String zhize4=request.getParameter("zhize4");

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
        String insert_sql = "INSERT INTO jianli (name,sex,chusheng,mingzu,zhengzhi,hunyin,jiguan,suozaidi,dianhua,email,qizhi1,xuexiao1,zhuanye1,xueli1,xuewei1,qizhi2,xuexiao2,zhuanye2,xueli2,xuewei2,qizhi3,xuexiao3,zhuanye3,xueli3,xuewei3,qizhi4,danwei1,zhiwei1,zhize1,qizhi5,danwei2,zhiwei2,zhize2,qizhi6,danwei3,zhiwei3,zhize3,qizhi7,danwei4,zhiwei4,zhize4,ruanjian,putonghua,yingwen,qita,zige,aihao,rongyu,ziwopingjia) values('" + name + "','" + sex + "','" + chusheng + "',' " + mingzu + "','"  + zhengzhi + "','"+ hunyin + "','" + jiguan + "','" + suozaidi + "','" + dianhua + "','" + email + "',' " + qizhi1 + "','" + xuexiao1 + "','" + zhuanye1 + "','" + xueli1 + "','" + xuewei1 + "','" + qizhi2 + "',' " + xuexiao2 + "','" + zhuanye2 + "','" + xueli2 + "','" + xuewei2 + "','" + qizhi3 + "','" + xuexiao3 + "',' " + zhuanye3 + "','" + xueli3 + "','" + xuewei3 + "','" + qizhi4 + "','" + danwei1 + "','" + zhiwei1 + "',' " + zhize1 + "','" + qizhi5 + "','" + danwei2 + "','" + zhiwei2 + "','" + zhize2 + "','" + qizhi6 + "',' " + danwei3 + "','" + zhiwei3 + "','" + zhize3 + "','" + qizhi7 + "','" + danwei4 + "','" + zhiwei4 + "','" + zhize4 + "','" + ruanjian + "','" + putonghua + "','" + yingwen + "','" + qita + "','" + zige + "','" + aihao + "','" + rongyu + "','" + ziwopingjia + "')";
       // String insert_sql = "INSERT INTO jianli (name) VALUES ('"+name+"')";
        try {
            stmt.execute(insert_sql);
            response.sendRedirect("done.html");
        }catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("email",email);
        stmt.close();
        conn.close();

    }catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
