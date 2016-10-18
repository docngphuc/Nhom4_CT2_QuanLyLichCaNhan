<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
<title>Admin</title>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function(){
      $('#lock').change(function(){
        switch(this.value){
          case '0':
          $('#luusua').click(function(){
            document.getElementById('status').src ='../img/nolock.jpg';
          });
          break;
          case '1':
          $('#luusua').click(function(){
            document.getElementById('status').src='../img/lock.png';
          });
          break;
          default:
          break;
        }
      });

      $('#edit').click(function(){
        document.getElementById("popuphoten").innerHTML = $('#hoten').text();
        document.getElementById("popupusername").innerHTML = $('#username').text();
        document.getElementById("popupemail").innerHTML = $('#email').text();
      });
    });
  </script>
  <style type="text/css">
    .menu li{
      padding-top: 20px;
      list-style: none;
      display: inline;
    }
    .myform{
      width: 700px;
      margin:0px auto;
    }
    .scrollingtext {
      height: 400px;
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
  </style>
</head>
<body>
<div id="id_nav">
  <nav class="navbar navbar-default" id="id_content">
    <div class="container-fluid">
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <form class="navbar-form navbar-left">
        <!--Tạo thanh navbar chứa Search, Tên tk đang đăng nhập sử dụng, nút đăng xuất--> 
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Search</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><b>Xin chào, Admin</b></a></li>
          <li>
              <a href="../index.jsp">Đăng xuất</a>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</div><!--Kết thúc thanh navbar-->

<div class="container">
  <!--Giao diện thực hiện-->
  <div class="row" id="timkiem">
    <div class="row navbar navbar-default">
       <div style="width:max-content; text-align: center; margin:auto; line-height:50px; font-weight: 700;">KHÓA - TÌM TÀI KHOẢN</div>
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
    <div class="panel panel-default" style="margin-top: 20px;">
      <div class="panel-heading" style="text-align: center;"><strong>Hiển thị kết quả tìm kiếm</strong></div>
      <div class="panel-body scrollingtext" style="border: 1px solid black;">
        <table class="table" border="1">
          <tr>
            <td><b>STT</b></td>
            <td><b>Họ tên</b></td>
            <td><b>UserName</b></td>
            <td><b>Email</b></td>
            <td><b>Status</b></td>
            <td><b>Edit</b></td>
          </tr>
          <tr>
            <td>01</td>
            <td id="hoten">Nguyễn Thị Hồng</td>
            <td id="username">nthong</td>
            <td id="email">hongnt@gmail.com</td>
            <td><img id="status" src="../img/nolock.jpg"></td>
            <td><img class="btn" id="edit" src="../img/edit.png" data-target="#btnedit" data-toggle="modal"></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div><!--Kết thúc tìm tài khoản-->

<div class="modal" id="btnedit" tabindex="-1"><!--Popup khi click sửa-->
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Sửa</h4>
      </div>
      <div class="modal-body" style="line-height: 3.5;">
        <div class="row">
          <div class="col-xs-4"><b>Họ tên</b></div>
          <div class="col-xs-8" id="popuphoten"></div>
        </div>
        <div class="row">
          <div class="col-xs-4"><b>UserName</b></div>
          <div class="col-xs-8" id="popupusername"></div>
        </div>
        <div class="row">
          <div class="col-xs-4"><b>Email</b></div>
          <div class="col-xs-8" id="popupemail"></div>
        </div>
        <div class="row">
          <div class="col-xs-4"><b>Status</b></div>
          <div class="col-xs-8">
            <select class="form-control" id="lock">
              <option value='0'>UnLock</option>
              <option value='1'>Lock</option>
            </select>
          </div>
        </div>
      </div>
      <div class="modal-footer" style="text-align: center;">
        <button class="btn btn-primary" data-dismiss="modal" id="luusua">Lưu</button>
        <button class="btn" data-dismiss="modal">Hủy</button>
      </div>
    </div>
  </div>
</div>  
</body>
</html>

