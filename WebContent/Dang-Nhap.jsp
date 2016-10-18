<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Đăng Nhập</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/mycss.css">
  <style type="text/css">
  	.b{
  		margin-right: 10px; 
  	}
  	.btn-toolbar.col-md-4{
  		margin:9px 0px;
  	}
	.button-top{
		width: 85px;
	}
	.btn-group
	{
		margin :10px;
	}
	.canhgiua{
	display: block;
	margin-right: auto;
	margin-left: auto;
	}
  </style>
</head>
<body>
<div class="container-fluid">
	<div class="row navbar navbar-default" style="background: #E0E6F8;">
		<div class="col-md-9 col-sm-8"></div>
		<div class="btn-toolbar col-md-3 col-sm-4 pull-right">
			<div class="btn-group">
				<button class="btn btn-primary btn-sm pull-right button-top" data-target="#logindangnhap" data-toggle="modal">Đăng Nhập</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-primary btn-sm pull-right button-top" data-target="#logindangky" data-toggle="modal">Đăng Ký</button>
			</div>
		</div>
	</div>
	</div>
	<div class="row">
		<marquee scrolldelay="0" scrollamount="15" height= "100%"><h2 style="color: #2E2EFE"> Quản Lý Lịch Cá Nhân</h2></marquee>

	</div>
	</div>
	<div>
		<img class="canhgiua"  src="img/lienket.jpg" width="95%" height="470" ></img>

	</div>
	
</div>
		<div class="modal" id="logindangnhap" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Đăng Nhập</h4>
					</div>
					<div class="modal-body">
						<form method="post" id="loginform" role="form">
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label for="inputUserName">UserName:</label>
									</div>
									<div class="col-md-6">
										<input class="form-control" placeholder="Login UserName" size="40" type="text" id="login-username"/>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-3">
										<label for="inputPassWord">Password :</label>
									</div>
									<div class="col-md-6">
									<input class="form-control" placeholder="Login PassWord" type="password" size="40" id="login-passwword"/>
									</div>
								</div>
							</div>
							<div row>
								<a class="btn" data-toggle="modal" data-target="#btnlaymk" data-dismiss="modal" >Quên mật khẩu</a>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<div class="row">
							<button id="dangnhap" class="col-md-2 btn btn-primary" style="margin-left: 50px;">Đăng Nhập</button>
							<button class="col-md-2 btn btn-primary" style="margin-left: 300px" data-dismiss="modal">Thoát</button>
						</div>
					</div>
				</div>
			</div>
		</div>
				<div class="modal" id="btnlaymk" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"> Xác Nhận Email </h4>
					</div>
					<div class="modal-body">
						<form>
							<div class="form-group">
								<div class="row">
									<div class="col-md-11 col-sm-11">
										<input class="form-control" placeholder="Email" size="50" height="20px" type="email" id="xacnhan-inputemail"/>
									</div>
								</div>
							</div>
							
						</form>
					</div>
					<div class="modal-footer">
						<div class="row">
							<button id="goiyeucau" class="col-md-2 btn btn-primary" style="margin-left: 50px;">Gởi</button>
							<button class="col-md-2 btn btn-primary" style="margin-left: 300px" data-dismiss="modal">Thoát</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		

		<div class="modal" id="logindangky" tabindex="-2" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Đăng ký</h4>
					</div>
					<div class="modal-body">
						<form method="post" id="dangkyform" role="form">
							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="inputPassWord">UserName</label>
									</div>
									<div class="col-md-8">
									<input class="form-control" placeholder="Nhập UserName" size="40" type="text" id="dangky-username"/>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="inputPassWord">Họ tên</label>
									</div>
									<div class="col-md-8">
									<input class="form-control" placeholder="Nhập họ tên" size="40" type="text" id="dangky-hoten"/>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="inputPassWord">Email</label>
									</div>
									<div class="col-md-8">
									<input class="form-control" placeholder="Nhập Email" size="40" type="email" id="dangky-email"/>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="inputPassWord">Số điện thoại</label>
									</div>
									<div class="col-md-8">
									<input class="form-control" placeholder="Nhập số điện thoại" size="40" type="text" id="dangky-sodt"/>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="inputPassWord">PassWord</label>
									</div>
									<div class="col-md-8">
									<input class="form-control" placeholder="Nhập password" size="40" type="password" id="dangky-passwword"/>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-4">
										<label for="inputPassWord">Nhập lại password</label>
									</div>
									<div class="col-md-8">
									<input class="form-control" placeholder="Nhập lại password"  size="40" type="password" id="dangky-Confirmpassword"/>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<div class="row">
							<button id="dangky" class="col-md-2 btn btn-primary btn-group" style="margin-left: 50px;" data-dismiss="modal">Đăng Ký</button>
							<button class="col-md-2 btn btn-primary btn-group" style="margin-left: 300px" data-dismiss="modal">Thoát</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!--Bắt đầu footer-->
<footer class="site-footer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<p style="font-size: 18px; text-align: center; color: red;">
					Giới thiệu
				</p>
				<p>Đây là web app Quản lý lịch cá nhân của các thành viên nhóm 4</p>
				<p>Môn học: Lập trình web</p>
				<p>Giáo viên hướng dẫn: Đặng Thị Kim Giao</p>
				<p>Trường Đại học sư phạm kỹ thuật TPHCM</p>
			</div>
			<div class="col-md-4">
				<p style="font-size: 18px; text-align: center; color: red;">
					Thông tin liên lạc
				</p>
				<p><b>Email: </b><span><u>congphuc2508@gmail.com</u></span></p>
				<p><b>Facebook: </b><span><a href="https://www.facebook.com/L%E1%BA%ADp-Tr%C3%ACnh-web-718076578344350/" style="">Facebook/Quản lý lịch cá nhân</a></span></p>
				<p><b>Điện thoại: </b>0974995036</p>
			</div>
			<div class="col-md-4">
				<p style="font-size: 18px; text-align: center; color: red;">
					Hướng dẫn
				</p>
				<p><b>1.</b> Nhấn vào nút đăng ký ở góc trên bên trái màn hình và tạo một tài khoản</p>
				<p><b>2.</b> Đăng nhập và tào khoản để sử dụng dịch vụ</p>

			</div>
		</div>
		<div class="row">
			<div class="bottom-footer">
			<div class="col-md-5">
				@Copyright WebManagerPersonalCalendar 2016
			</div>
			<div class="col-md-7">
				<ul class="footer-nav">
					<li><a href="http://hcmute.edu.vn/">Home</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Facebook</a></li>
					<li><a href="#">Gmail</a></li>
				</ul>
			</div>
			</div>
		</div>
	</div>
</footer>
</body>

<script>
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
		$("#dangnhap").click(function(){
			validateText("login-username")
			validateText("login-passwword")
			if(!validateText("login-username"))
				return false;
			if(!validateText("login-passwword"))
				return false;
		});
		$("#login-username").keyup(function(){
			validateText("login-username");
		});
		$("#login-passwword").keyup(function(){
			validateText("login-passwword");
		});
		$("#dangky").click(function(){
			validateText("dangky-username")
			validateText("dangky-hoten")
			validateText("dangky-email")
			validateemail("dangky-email")
			validateText("dangky-sodt")
			validatePhone("dangky-sodt")
			validateText("dangky-passwword")
			validateText("dangky-Confirmpassword")
			if(!validateText("dangky-username"))
				return false;
			if(!validateText("dangky-hoten"))
				return false;
			if(!validateText("dangky-email"))
				return false;
			else {if (!validateemail("dangky-email")) {
				return false;
				}
			}
			if(!validateText("dangky-sodt"))
				return false;
			else {
				if (!validatePhone("dangky-sodt")) {
					return false;
				}
			}
			if(!validateText("dangky-passwword"))
				return false;
			if(!validateText("dangky-Confirmpassword"))
				return false;
		});
		$("#dangky-username").keyup(function(){
			validateText("dangky-username");
		});
		$("#dangky-hoten").keyup(function(){
			validateText("dangky-hoten");
		});
		$("#dangky-email").keyup(function(){
			validateText("dangky-email");
			validateemail("dangky-email");
		});
		$("#dangky-sodt").keyup(function(){
			validateText("dangky-sodt");
			validatePhone("dangky-sodt");
		});
		$("#dangky-passwword").keyup(function(){
			validateText("dangky-passwword");
		});
		$("#dangky-Confirmpassword").keyup(function(){
			validateText("dangky-Confirmpassword");
		});
	});
	function validateemail(id) {
    var x = $("#"+id).val()
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
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
</script>

</html>