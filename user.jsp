<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thêm sự kiện</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/client.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main-client.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Search</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><label>Xin chào anh Hạnh</label></li>
        <li>
            <a href="index.jsp">Đăng xuất</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-2 col-sm-3" id="menu">
      <ul class="nav nav-pills nav-stacked">
        <li class="menu-item-parent">
          <a href="" onclick="return false;">Quản lý sự kiện</a>
          <ul>
             <li><a href="them-su-kien.jsp">Thêm sự kiện</a></li>
             <li><a href="danh-sach-su-kien.jsp">Danh sách sự kiện</a></li>
             <li><a href="tim-su-kien.jsp">Tìm sự kiện</a></li>
          </ul>
        </li>
        <li class="menu-item-parent"><a href="tim-tai-khoan-client.jsp" >Tìm tài khoản</a></li>
        
        <li class="menu-item-parent"><a href="quan-ly-tai-khoan.jsp">Quản lý tài khoản</a></li>
      </ul>
    </div>
</div>
</body>
</html>
