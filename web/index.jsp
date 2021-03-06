<%--
  Created by IntelliJ IDEA.
  User: pm
  Date: 2016/11/8
  Time: 1:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>nVIDIA Login Page</title>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
  <link rel="stylesheet" href="assets/css/styles.min.css">

</head>
<style>
  body{
    background-color: #000000;
  }
</style>
<body background="">
<div class="login-clean">
  <form action="login.jsp" method="post">
    <!-- <h2 class="sr-only">Login Form</h2> -->
    <div class="illustration"><img src="nvidia_logo.png" width="70%" height="70%"></div>
    <h2 style="text-align: center; margin-bottom: 30px">Log In NVIDIA</h2>
    <div class="form-group">
      <input class="form-control" type="email" name="email" placeholder="Email">
    </div>
    <div class="form-group">
      <input class="form-control" type="password" name="password" placeholder="Password">
    </div>
    <div class="form-group">
      <input class="btn btn-primary btn-block" type="submit" value="Log In">
    </div><a href="registered.jsp" class="forgot">No account ?&nbsp; Register</a>
    <a href="admin_login.html" class="forgot">Administrator? Log in</a>
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
