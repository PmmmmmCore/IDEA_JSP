<%--
  Created by IntelliJ IDEA.
  User: pm
  Date: 2016/12/19
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>nVIDIA Registration Page</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>
<style>
    body{
        background-color: #000000;
    }
</style>
<body>
<div class="login-clean">
    <form  action="mysql_insert.jsp" method="post">
        <div class="illustration"><img src="nvidia_logo.png" width="70%" height="70%"></div>
        <h2 style="text-align: center; margin-bottom: 30px">Create Your NVIDIA ID</h2>
        <div class="form-group">
            <input class="form-control" type="name" name="name" placeholder="Name">
        </div>
        <div class="form-group">
        </div>
        <div class="form-group">
            <input class="form-control" type="email" name="email" placeholder="Email">
        </div>
        <div class="form-group">
            <input class="form-control" type="password" name="password" placeholder="Password">
        </div>
        <div class="form-group">
            <input class="form-control" type="password" name="password2" placeholder="Confirm Password">
        </div>
        <div class="form-group">
            <input class="btn btn-primary btn-block" type="submit" value="Done"> </input>
        </div>
    </form>
</div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("form").fadeOut(0).animate({marginTop:0, opacity:'show'},{ duration: 500 }).fadeIn(5);
    });
</script>
</body>
</html>
