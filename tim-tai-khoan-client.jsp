<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/client.css">
  
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main-client.js"></script>
<style type="text/css">
  body{
	  font-family: 'verdana', serif, sans-serif;
	  font-size:14px;
  }

  .error{
    color:red;
  }
  .display-none{
    display: none;
  }

  .navbar-nav.navbar-right label{
    padding:15px;
  }

  .form-tsk{
    padding:5px;
    font-size: 13px;
  }
  .form-group label.equal-input, .form-group div{
    margin-top: 5px;
    margin-bottom: 5px;
    line-height: 34px;
  }
  .scrollingtext {
    height: 200px;
    overflow:auto;
    border: 5px;
    list-style: none;
    }
    .scrollingtext a{
    color: black;
    text-decoration: none;
    }
    .scrollingtext a:hover{
    color: blue;
    }
    .myform{
    width: 700px;
    margin:0px auto;
    }
  </style>
 
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><label>Xin chào ...</label></li>
        <li>
            <a href="index.jsp">Đăng xuất</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid">
  <div class="row">
  
    <!--Thanh menu-->
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
    </div><!--Hết thanh menu-->

    <!--Nội dung-->
    <div class="col-md-10 col-sm-9">
      <!--Tìm tài khoản-->
      <div class="row" id="timkiem">
        <div class="row navbar navbar-default">
           <div style="width:max-content; margin:auto; text-align:center; line-height:50px; font-weight: 700;">Tìm tài khoản</div>
        </div>
        <div class="row">
          <div class="">
             <div class="col-lg-3 col-md-3 col-sm-3">
                <select class="form-control" id="tim-bang">
                  <option value='0'>UserName</option>
                  <option value='1'>Tên</option>
                  <option value='2'>Email</option>
                </select>
             </div>
            <div class="col-sm-6">
              <input type="text" class="form-control" id="inputUserName" placeholder="Nhập tên từ khóa">
            </div>
              <div class="col-sm-2">
                <button class="btn" data-target="#adsads" data-toggle="modal" id="btnsearch">Search</button>
              </div>
          </div>
        </div>
      </div>
        
      <div class="row" style="text-align: center;">
        <div class="panel panel-default" style="margin-top: 20px; margin-right: 20px;">
          <div class="panel-heading" style="text-align: center;"><strong>Hiển thị kết quả tìm kiếm</strong></div>
          <div class="panel-body scrollingtext" style="border: 1px solid black;">
            <table class="table">
              <tr>
                <td><b>STT</b></td>
                <td><b>Họ tên</b></td>
                <td><b>UserName</b></td>
                <td><b>Email</b></td>
                <td><b>Status</b></td>
              </tr>
              <tr>
                <td>01</td>
                <td id="hoten">Nguyễn Thị Hồng</td>
                <td id="username">nthong</td>
                <td id="email">hongnt@gmail.com</td>
                <td><img id="status" src="img/nolock.jpg"></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div><!--Kết thúc tìm tài khoản-->
  </div><!--Hết nội dung-->
</div>

</body>
</html>