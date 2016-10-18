<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/client.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/script-tsk.js"></script>
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

    <div class="col-md-10 col-sm-9">
      <div class="row navbar navbar-default">
         <div style="width:max-content; margin:auto; line-height:50px; font-weight: 700;">Thêm sự kiện</div>
      </div>
      <div class="row">
         <div class="form-horizontal form-tsk">
            <div class="form-group">
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Tên:</label>
               <div class="col-lg-5 col-md-4 col-sm-8">
                  <input type="text" class="form-control" id="inputEmail3" placeholder="Tên sự kiện(*)">
               </div>
           
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Vị trí:</label>
               <div class="col-lg-5 col-md-4 col-sm-8">
                  <input type="text" class="form-control" id="inputPassword3" placeholder="Vị trí">
               </div>
            </div>
           
            <div class="form-group">
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Bắt đầu:</label>
               <div class="col-lg-3 col-md-5 col-sm-4">
                  <input type="date" class="form-control" id="inputEmail3" >
               </div>
               <div class="col-lg-2 col-md-5 col-sm-4">
                  <input type="time" class="form-control" id="inputEmail3">
               </div>
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input" style="padding-right:0px">Kết thúc:</label>
               <div class="col-lg-3 col-md-5 col-sm-4">
                  <input type="date" class="form-control" id="inputEmail3" >
               </div>
               <div class="col-lg-2 col-md-5 col-sm-4">
                  <input type="time" class="form-control" id="inputEmail3">
               </div>
            </div>
            <div class="form-group">
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input" style="padding-right: 0px">Tần suất:</label>
               <div class="col-lg-5 col-md-4 col-sm-6">
                  <select class="form-control" id="tsk-tan-suat">
                    <option value='0'>Một lần</option>
                    <option value='1'>Hàng ngày</option>
                    <option value='2'>Hàng tuần</option>
                    <option value='3'>Hàng tháng</option>
                  </select>
               </div>
            </div>
            
            <div class="display-none tsk-ts tsk-ts-ngay">
              <div class="form-group">
                <label class="col-md-1 col-sm-1 equal-input">Từ:</label>
                <div class="col-md-5 col-sm-5">
                  <input type="time" class="form-control" id="inputEmail3" >
                </div>
                                 
                <label class="col-md-1 col-sm-1 equal-input" style="padding-right:0px">Đến:</label>
                <div class="col-md-4 col-sm-4">
                  <input type="time" class="form-control" id="inputEmail3" >
                </div>
                <div class="col-md-1 col-sm-1 close-giai-doan">
                  <a href="">X</a>
                </div>
              </div>
            </div>
            <div class="display-none tsk-ts tsk-ts-tuan">
               <div class="form-group" >
                  <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Thứ:</label>
                  <div class="col-lg-5 col-md-4 col-sm-6">
                     <select class="form-control">
                       <option>Thứ 2</option>
                       <option>Thứ 3</option>
                       <option>Thứ 4</option>
                       <option>Thứ 5</option>
                       <option>Thứ 6</option>
                       <option>Thứ 7</option>
                       <option>Chủ nhật</option>
                     </select>
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-md-1 col-sm-1 equal-input">Từ:</label>
                  <div class="col-md-5 col-sm-5">
                     <input type="time" class="form-control" id="inputEmail3" >
                  </div>
                  
                  <label class="col-md-1 col-sm-1 equal-input" style="padding-right:0px">Đến:</label>
                  <div class="col-md-4 col-sm-4">
                     <input type="time" class="form-control" id="inputEmail3" >
                  </div>
                  <div class="col-md-1 col-sm-1 close-giai-doan">
                    <a href="">X</a>
                  </div>
               </div>
            </div>
            
            <div class="display-none tsk-ts tsk-ts-thang">
               <div class="form-group">
                  <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Ngày:</label>
                  <div class="col-lg-5 col-md-4 col-sm-6">
                     <input type="number" min="0" max="31" class="form-control" id="inputEmail3" >
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-md-1 col-sm-1 equal-input">Từ:</label>
                  <div class="col-md-5 col-sm-5">
                     <input type="time" class="form-control" id="inputEmail3" >
                  </div>
                  
                  <label class="col-md-1 col-sm-1 equal-input" style="padding-right:0px">Đến:</label>
                  <div class="col-md-4 col-sm-4">
                     <input type="time" class="form-control" id="inputEmail3" >
                  </div>
                  <div class="col-md-1 col-sm-1 close-giai-doan">
                    <a href="">X</a>
                  </div>
               </div>
            </div>
            
            <div id="tsk-ts-them-giai-doan" class="display-none form-group">
              <a href="">Thêm nhắc nhở</a>
            </div>

            <div class="form-group">
               <textarea class="form-control" rows="3" placeholder="Mô tả"></textarea>
            </div>
            <div class="form-group">
               <button class='btn btn-default' data-toggle="modal" data-target="#pop-moi-nguoi">Mời người khác</button>
               <div class="modal" tab-index="-1" id="pop-moi-nguoi">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">Mời người khác</div>
                        <div class="modal-body">
                           <form>
                              <div class="form-group row">
                                 <label class="col-sm-3" style="line-height: 34px">Danh sách:</label>
                                 <div class="col-sm-9">
                                    <textarea class="form-control" rows="3" placeholder="Mô tả"></textarea>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-xs-12 error">Không tìm thấy vnboy</label>
                              </div>
                              <div class="form-group row">
                                 <div class="col-xs-offset-4 col-xs-3 col-sm-2">
                                    <button type="submit" class="btn btn-primary">Xác nhận</button>
                                 </div>
                                 <div class="col-xs-3 col-sm-2">
                                    <button type="submit" class="btn btn-default">Hủy bỏ</button>
                                 </div>
                              </div>
                           </form>
                        </div>
                        
                     </div>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <div class="ng-d-m col-md-2 col-sm-3">
                  <label>Võ Tấn Trình</label>
                  <a href="#">x</a>
               </div>
               <div class="ng-d-m col-md-2 col-sm-3">
                  <label>Võ Tấn Trình</label>
                  <a href="#">x</a>
               </div>
               <div class="ng-d-m col-md-2 col-sm-3">
                  <label>Võ Tấn Trình</label>
                  <a href="#">x</a>
               </div>
            </div>
            <div class="form-group form_line-nhac-nho">
               <label class="col-xs-2 equal-input">Nhắc nhở:</label>
               <div class="col-xs-3">
                  <select class="form-control">
                    <option>Email</option>
                    <option>Phone</option>
                  </select>
               </div>
               <div class="col-xs-3">
                  <input type="number" class="form-control" id="" value="0">
               </div>
               <div class="col-xs-3">
                  <select class="form-control">
                     <option>Giây</option>
                     <option>Phút</option>
                     <option>Giờ</option>
                     <option>Ngày</option>
                  </select>
               </div>
               <div class="col-xs-1 close-nhac-nho">
                 <a href="" onclick="return false">X</a>
               </div>
            </div>
            <div class="form-group">
               <a href="" id="form_button-them-nhac-nho">Thêm nhắc nhở</a>
            </div>
            <div class="form-group">
               <div class="col-sm-offset-5 col-sm-7">
                  <button type="submit" class="btn btn-primary">Xác nhận</button>
                  <button type="submit" class="btn btn-default">Hủy bỏ</button>
               </div>
            </div>
         </div>
         

      </div>
    </div>
  </div>

</div>

</body>
</html>
