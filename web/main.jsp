<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8" %>
<%@ page import="java.net.DatagramPacket" %>
<%@ page import="static java.lang.Class.forName" %>
<%@ page contentType="text/html; charset=utf-8" %>
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
<style>
    body{
        background-color: #000000;
    }
    th{
        text-align:center;
        width: 120px;
        height: 40px;
        color: rgb(97,163,52);
    }
    tr{
        width: 120px;
        height: 40px;
        color: #a79b9d;
    }
    input{
        background-color: black;
        border: 0px;
        width: 130px;
    }
    textarea{
        background-color: black;
        border: 0px;
    }

</style>
<body>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">  NVIDIA  </a>
            <p CLASS="navbar-text">World Leader in Visual Computing Technologies. </p>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="registered.jsp"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
                <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </div>
</nav>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");
%>
<%
    java.util.Date date=new java.util.Date();

    try {
        String driveName = "com.mysql.jdbc.Driver";
        String DBUser = "root";
        String DBPasswd = "";
        String str = (String) session.getAttribute("email");

        String connUrl = "jdbc:mysql://localhost/jsp";
        Class.forName(driveName).newInstance();
        Connection conn = DriverManager.getConnection(connUrl,DBUser,DBPasswd);
        Statement stmt = conn.createStatement();
        String sql = "select * from jianli where email='" + str + "'";

        try {
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){

            %>

<form action="post" align="center">
    <br>
    <h1 style="color: rgb(97, 163, 52);">WELCOME TO JOIN US!</h1>
    <br>
    <br>
</form>
<form action="jianli_update.jsp" method="post">
    <table border="2" width="800"  style="border-color: rgb(97,163,52)" align="center" >
        <tr><th rowspan="5">基<br>本<br>信<br>息</th><th>姓名</th><td><input type="text" name="name" value="<%=rs.getShort("name")%>"></td><th>性别</th><td><input
                type="text" name="sex" value="<%=rs.getString("sex")%>"></td><th rowspan="5">照片</th></tr>
        <tr><th>出生日期</th><td><input type="text" name="chusheng" value="<%=rs.getString("chusheng")%>"></td><th>民族</th><td><input type="text" name="mingzu" value="<%=rs.getString("mingzu")%>"></td></tr>
        <tr><th>政治面貌</th><td><input type="text" name="zhengzhi" value="<%=rs.getString("zhengzhi")%>"></td><th>婚姻状况</th><td><input type="text" name="hunyin" value="<%=rs.getString("hunyin")%>"></td></tr>
        <tr><th>籍贯</th><td><input type="text" name="jiguan" value="<%=rs.getString("jiguan")%>"></td><th>现所在地</th><td><input type="text" name="suozaidi" value="<%=rs.getString("suozaidi")%>"></td></tr>
        <tr><th>本人电话</th><td><input type="text" name="dianhua" value="<%=rs.getString("dianhua")%>"></td><th>Email</th><td><input type="text" name="email" value="<%=rs.getString("email")%>"></td></tr>

        <tr><th rowspan="4">教<br>育<br>经<br>历</th><th>起止年月</th><th>毕业学校</th><th>专业</th><th>学历</th><th>学位</th></tr>
        <tr><td><input type="text" name="qizhi1" value="<%=rs.getString("qizhi1")%>"></td><td><input type="text" name="xuexiao1" value="<%=rs.getString("xuexiao1")%>"></td><td><input type="text" name="zhuanye1" value="<%=rs.getString("zhuanye1")%>"></td><td><input type="text" name="xueli1" value="<%=rs.getString("xueli1")%>"></td><td><input type="text" name="xuewei1" value="<%=rs.getString("xuewei1")%>"></td></tr>
        <tr><td><input type="text" name="qizhi2" value="<%=rs.getString("qizhi2")%>"></td><td><input type="text" name="xuexiao2" value="<%=rs.getString("xuexiao2")%>"></td><td><input type="text" name="zhuanye2" value="<%=rs.getString("zhuanye2")%>"></td><td><input type="text" name="xueli2" value="<%=rs.getString("xueli2")%>"></td><td><input type="text" name="xuewei2" value="<%=rs.getString("xuewei2")%>"></td></tr>
        <tr><td><input type="text" name="qizhi3" value="<%=rs.getString("qizhi3")%>"></td><td><input type="text" name="xuexiao3" value="<%=rs.getString("xuexiao3")%>"></td><td><input type="text" name="zhuanye3" value="<%=rs.getString("zhuanye3")%>"></td><td><input type="text" name="xueli3" value="<%=rs.getString("xueli3")%>"></td><td><input type="text" name="xuewei3" value="<%=rs.getString("xuewei3")%>"></td></tr>

        <tr><th rowspan="5">工<br>作<br>经<br>历</th><th>起止年月</th><th>工作单位</th><th>最终职位/岗位</th><th colspan="2">主要职责</th></tr>
        <tr><td><input type="text" name="qizhi4" value="<%=rs.getString("qizhi4")%>"></td><td><input type="text" name="danwei1" value="<%=rs.getString("danwei1")%>"></td><td><input type="text" name="zhiwei1" value="<%=rs.getString("zhiwei1")%>"></td><td colspan="2"><input type="text" name="zhize1" value="<%=rs.getString("zhize1")%>"></td></tr>
        <tr><td><input type="text" name="qizhi5" value="<%=rs.getString("qizhi5")%>"></td><td><input type="text" name="danwei2" value="<%=rs.getString("danwei2")%>"></td><td><input type="text" name="zhiwei2" value="<%=rs.getString("zhiwei2")%>"></td><td colspan="2"><input type="text" name="zhize2" value="<%=rs.getString("zhize2")%>"></td></tr>
        <tr><td><input type="text" name="qizhi6" value="<%=rs.getString("qizhi6")%>"></td><td><input type="text" name="danwei3" value="<%=rs.getString("danwei3")%>"></td><td><input type="text" name="zhiwei3" value="<%=rs.getString("zhiwei3")%>"></td><td colspan="2"><input type="text" name="zhize3" value="<%=rs.getString("zhize3")%>"></td></tr>
        <tr><td><input type="text" name="qizhi7" value="<%=rs.getString("qizhi7")%>"></td><td><input type="text" name="danwei4" value="<%=rs.getString("danwei4")%>"></td><td><input type="text" name="zhiwei4" value="<%=rs.getString("zhiwei4")%>"></td><td colspan="2"><input type="text" name="zhize4" value="<%=rs.getString("zhize4")%>"></td></tr>

        <tr><th rowspan="6">个<br>人<br>技<br>能</th><th>熟用软件</th><td colspan="4"><input type="text" name="ruanjian" value="<%=rs.getString("ruanjian")%>"></td></tr>
        <tr><th>语言能力</th><th>普通话</th><td><input type="text" name="putonghua" value="<%=rs.getString("putonghua")%>"></td><th>英语</th><td><input type="text" name="yingwen"></td></tr>
        <tr><th>其他技能</th><td colspan="4"><input type="text" name="qita" value="<%=rs.getString("qita")%>"></td></tr>
        <tr><th>职称/资格</th><td colspan="4"><input type="text" name="zige" value="<%=rs.getString("zige")%>"></td></tr>
        <tr><th>爱好特长</th><td colspan="4"><input type="text" name="aihao" value="<%=rs.getString("aihao")%>"></td></tr>
        <tr><th>所获荣誉</th><td colspan="4"><input type="text" name="rongyu" value="<%=rs.getString("rongyu")%>"></td></tr>

        <tr><th rowspan="1">自<br>我<br>评<br>价</th><td colspan="5"><textarea name="ziwopingjia" id="" cols="90" rows="5" value="<%=rs.getString("ziwopingjia")%>"></textarea></td></tr>
        <th colspan="6"><input type="submit" value="提交"></th>
    </table>
</form>

</body>
</html>

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

