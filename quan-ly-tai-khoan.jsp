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
  <script type="text/javascript"></script>
   
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
	    <div class="col-md-9x col-sm-9">
      <!--Quản lý tài khoản-->
  <div class="row">
    <div class="panel panel-default" style="margin-top: 20px; margin-right: 20px;">
      <div class="panel-heading" style="text-align: center;"><strong>Quản Lý Tài Khoản</strong></div>
        <div class="panel-body scrollingtext" style="border: 1px solid black;">
        <div class="row">
          <div class="col-xs-4 col-md-4">
            <strong>UserName</strong>
          </div>
          <div class="col-xs-6 col-md-4">
           <p id="tendangnhap"> phuc do</p>
          </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-md-4">
              <strong >Họ tên</strong>
            </div>
            <div  class="col-xs-6 col-md-4" >
             <p id="ten"> Nguyễn Thị Hồng</p>
            </div>
            <div class="col-xs-2 col-md-2">
            <a class="btn" onclick="suaten()" data-toggle="modal" data-target="#btnthaydoihoten"><span style="font-size: 20px" class="  glyphicon glyphicon-edit"></span></a>
            </div>
          <div class="modal" id="btnthaydoihoten" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Thay Đổi Họ Tên</h4>
                </div>
                <div class="modal-body">
                  <div class="row">
                    <div class="form-group">
                      <div class="col-xs-2 col-md-2">
                        <strong>Họ Tên :</strong>
                      </div>
                      <div class="col-xs-10 col-md-10">
                        <input id="hoten"  type="text" class="form-control" />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modal-footer" style="text-align: center;">
                  <button id="btnhoten" class="btn btn-primary" data-dismiss="modal">Có</button>
                  <button class="btn" data-dismiss="modal">Hủy</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
            <div class="col-xs-4 col-md-4">
              <strong >Email</strong>
            </div>
            <div class="col-xs-6 col-md-4">
             <p id="idemail">hongnt@gmail.com</p>
            </div>
            <div class="col-xs-2 col-md-2">
            <a class="btn" onclick="suaemail()" data-toggle="modal" data-target="#btnthaydoiemail"><span style="font-size: 20px" class="  glyphicon glyphicon-edit"></span></a>
            </div>
          <div class="modal" id="btnthaydoiemail" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Thay Đổi Email</h4>
                </div>
                <div class="modal-body">
                  <div class="row">
                    <div class="form-group">
                      <div class="col-xs-2 col-md-2">
                        <strong> Email :</strong>
                      </div>
                      <div class="col-xs-10 col-md-10">
                        <input type="text" class="form-control" id="email"/>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modal-footer" style="text-align: center;">
                  <button id="btnemail" class="btn btn-primary" data-dismiss="modal" >Có</button>
                  <button class="btn" data-dismiss="modal">Hủy</button>
                </div>
              </div>
            </div>
          </div>
        </div>
         <div class="row">
            <div class="col-xs-4 col-md-4">
              <strong >Số Điện Thoại</strong>
            </div>
            <div class="col-xs-6 col-md-4">
             <p id="iddienthoai">0974995036</p>
            </div>
            <div class="col-xs-2 col-md-2">
            <a class="btn" onclick="suasdt()" data-toggle="modal" data-target="#btnthaydoisdt"><span style="font-size: 20px" class="  glyphicon glyphicon-edit"></span></a>
            </div>
          <div class="modal" id="btnthaydoisdt" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Thay Đổi Số Điện Thoại</h4>
                </div>
                <div class="modal-body">
                  <div class="row">
                    <div class="form-group">
                      <div class="col-xs-2 col-md-2">
                        <strong> SĐT:</strong>
                      </div>
                      <div class="col-xs-10 col-md-10">
                        <input type="text" class="form-control" id="sdt"/>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modal-footer" style="text-align: center;">
                  <button id="btnsdt" class="btn btn-primary" data-dismiss="modal">Có</button>
                  <button class="btn" data-dismiss="modal">Hủy</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row"">
          <a class="btn" data-toggle="modal" data-target="#btnthaydoimk">Thay Đổi Mật Khẩu</a>
          <div class="modal" id="btnthaydoimk" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Thay Đổi Mật Khẩu</h4>
                </div>
                <div class="modal-body">
                  <div class="row">
                    <div class="form-group">
                      <div class="col-xs-4">
                        <strong>Pasword Cũ:</strong>
                      </div>
                      <div class="col-xs-7">
                        <input type="Password" class="form-control" id="passcu"/>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group">
                      <div class="col-xs-4">
                        <strong>Pasword Mới:</strong>
                      </div>
                      <div class="col-xs-7">  
                        <input type="Password" class="form-control" id="passmoi"/>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group">
                      <div class="col-xs-4">
                        <strong>Xác Nhận Password:</strong>
                      </div>
                      <div class="col-xs-7">
                        <input type="Password" class="form-control" id="xnpass"/>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modal-footer" style="text-align: center;">
                  <button id="thaymk" data-dismiss="modal" class="btn btn-primary">Có</button>
                  <button class="btn" data-dismiss="modal">Hủy</button>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
    </div><!--Hết nội dung-->
  </div>

</div>

</body>
<script>

  function suaten()
  {
    document.getElementById('hoten').value = $('#ten').text();
  }
  function suaemail()
  {
    document.getElementById('email').value = $('#idemail').text();
  }
  function suasdt()
  {
    document.getElementById('sdt').value = $('#iddienthoai').text();
  }

  function validateText(id)
{
  if($("#"+id).val()==null || $("#"+id).val()==""){
    var div = $("#"+id).closest("div");
    $("#gly"+id).remove();
    div.addClass("has-error has-feedback")
    div.append('<span id="gly'+id+'" style="margin-right: 10px;" class="glyphicon glyphicon-remove form-control-feedback"></span>')
    return false;
  }
  else{
    var div = $("#"+id).closest("div");
    $("#gly"+id).remove();
    div.removeClass("has-error has-feedback")
    div.append('<span id="gly'+id+'" style="margin-right: 10px;" class="glyphicon glyphicon-ok form-control-feedback"></span>')
    return true;
  }
}
  $(document).ready(function(){
    $("#btnemail").click(function(){
      if(!validateText("email"))
        return false;
      else {
        if (!validateemail("email")) {
        return false;
        }
        else
        {
             var str3 = document.getElementById("email").value;
            document.getElementById("idemail").innerHTML =str3;

        }
      }
    });
    
    $("#btnhoten").click(function(){
      if(!validateText("hoten"))
        return false;
      else
      {
         var str1 = document.getElementById("hoten").value;
         document.getElementById("ten").innerHTML =str1;
      }
      });
    $("#btnsdt").click(function(){
      if (!validateText("sdt")) {
        return false;
      }
      else
        if (!validatePhone("sdt")) {
          return false;
        }
        else
        {
          var str4 = document.getElementById("sdt").value;
          document.getElementById("iddienthoai").innerHTML =str4;
        }
    });
    $("#thaymk").click(function(){
      if (!validateText("passcu")) {
        return false;
      }
      else{
        if (!validateText("passmoi")) {
          return false;
        }
        else
          if (!validateText1("passmoi","xnpass")) {
            return false;
          }
          else {
            return true;
          }
      }
    });
  });
  function validateemail(id) {
    var x = $("#"+id).val()
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<(atpos+2) ||( dotpos+2)>=x.length) {
      var div = $("#"+id).closest("div");
    $("#gly"+id).remove();
    div.addClass("has-error has-feedback")
    div.append('<span id="gly'+id+'" style="margin-right: 10px;" class="glyphicon glyphicon-remove form-control-feedback"></span>')
        return false;
    }
    else
    {
      var div = $("#"+id).closest("div");
    $("#gly"+id).remove();
    div.removeClass("has-error has-feedback")
    div.append('<span id="gly'+id+'" style="margin-right: 10px;" class="glyphicon glyphicon-ok form-control-feedback"></span>')
      return true;
    }
}
    function validatePhone(id) {
    var x = $("#"+id).val()
    var filter = /^[0-9-+]+$/;
    if (filter.test(x)) {
      
      var div = $("#"+id).closest("div");
    $("#gly"+id).remove();
    div.removeClass("has-error has-feedback")
    div.append('<span id="gly'+id+'" style="margin-right: 10px;" class="glyphicon glyphicon-ok form-control-feedback"></span>')
        return true;
    }
    else {
      var div = $("#"+id).closest("div");
    $("#gly"+id).remove();
    div.addClass("has-error has-feedback")
    div.append('<span id="gly'+id+'" style="margin-right: 10px;" class="glyphicon glyphicon-remove form-control-feedback"></span>')
        return false;
    }
}
function validateText1(id,id1)
{
  if($("#"+id).val()!= $("#"+id1).val()){
    var div = $("#"+id1).closest("div");
    $("#gly"+id1).remove();
    div.addClass("has-error has-feedback")
    div.append('<span id="gly'+id1+'" style="margin-right: 10px;" class="glyphicon glyphicon-remove form-control-feedback"></span>')
    return false;
  }
  else{
    var div1 = $("#"+id1).closest("div");
    $("#gly"+id1).remove();
    div.removeClass("has-error has-feedback")
    div.append('<span id="gly'+id1+'" style="margin-right: 10px;" class="glyphicon glyphicon-ok form-control-feedback"></span>')
    return true;
  }
}
</script>
</html>