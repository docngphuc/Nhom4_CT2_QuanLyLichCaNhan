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
      <!--Tìm sự kiện-->  
      <div class="row" id="timsukien">
        <div class="row navbar navbar-default">
         <div style="width:max-content; margin:auto; line-height:50px; font-weight: 700;">Tìm sự kiện</div>
        </div>
        <div class="row">
           <div class="col-lg-2 col-md-3 col-sm-3">
              <div style="margin-top: 7px"><strong>Tên sự kiện:</strong></div>
           </div>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="inputUserName" placeholder="Nhập tên sự kiện">
          </div>
            <div class="col-sm-2">
              <button class="btn" id="btntimsukien">Search</button>
              <div class="modal" id="btnsua" tabindex="-1">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Sự kiện</h4>
                    </div>
                    <div class="modal-body">
                       <div class="row">
                         <div class="form-horizontal form-tsk">
                            <div class="form-group">
                               <label class="col-lg-2 col-md-2 col-sm-4 equal-input">Tên:</label>
                               <div class="col-lg-4 col-md-4 col-sm-8">
                                  <input type="text" class="form-control" id="inputEmail3" placeholder="Tên sự kiện(*)">
                               </div>
                               <label class="col-lg-2 col-md-2 col-sm-4 equal-input" style="padding-right:0px">Vị trí:</label>
                               <div class="col-lg-3 col-md-5 col-sm-4">
                                  <input type="text" class="form-control" id="inputEmail3">
                               </div>
                            </div>
                            <div class="form-group">
                               <label class="col-lg-2 col-md-2 col-sm-4 equal-input" style="padding-right: 0px">Tần suất:</label>
                              <div class="col-lg-5 col-md-4 col-sm-6">
                                  <select class="form-control" id="tsk-tan-suat-popup">
                                    <option value='0'>Một lần</option>
                                    <option value='1'>Hàng ngày</option>
                                    <option value='2'>Hàng tuần</option>
                                    <option value='3'>Hàng tháng</option>
                                  </select>
                               </div>
                              </div>
                           

                            <div class="form-group display-none tsk-ts-popup" id="tsk-ts-ngay-popup">
                               <label class="col-md-1 col-sm-1 equal-input">Từ:</label>
                               <div class="col-md-5 col-sm-5">
                                  <input type="time" class="form-control" id="inputEmail3" >
                               </div>
                               
                               <label class="col-md-1 col-sm-1 equal-input" style="padding-right:0px">Đến:</label>
                               <div class="col-md-5 col-sm-5">
                                  <input type="time" class="form-control" id="inputEmail3" >
                               </div>
                            </div>
                            <div id="tsk-ts-tuan-popup" class="display-none tsk-ts-popup">
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
                                  <div class="col-md-5 col-sm-5">
                                     <input type="time" class="form-control" id="inputEmail3" >
                                  </div>
                               </div>
                            </div>
                            
                            <div id="tsk-ts-thang-popup" class="display-none tsk-ts-popup">
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
                                  <div class="col-md-5 col-sm-5">
                                     <input type="time" class="form-control" id="inputEmail3" >Thứ 2
                                  </div>
                               </div>
                            </div>
                            
                            <div class="form-group">
                              <div class="col-sm-12">
                                 <textarea class="form-control col-sm-5" rows="3" placeholder="Mô tả"></textarea>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-1"></div>
                               <button class="btn btn-default" data-toggle="modal" data-target="#moimn" data-dismiss="modal">Mời người khác</button>
                               
                            </div>
                            <div class="form-group">
                               <div class="ng-d-m col-md-3 col-sm-2">
                                  <label>Võ Tấn Trình</label>
                                  <a href="#">x</a>
                               </div>
                               <div class="ng-d-m col-md-3 col-sm-2">
                                  <label>Võ Tấn Trình</label>
                                  <a href="#">x</a>
                               </div>
                               <div class="ng-d-m col-md-3 col-sm-2">
                                  <label>Võ Tấn Trình</label>
                                  <a href="#">x</a>
                               </div>
                            </div>
                            <div class="form-group">
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
                            </div>
                            <div class="form-group">
                              <div class="col-xs-1"></div>
                               <a href="#">Thêm nhắc nhở</a>
                            </div>
                            <div class="form-group">
                               <div class="col-sm-offset-4 col-sm-6">
                                  <button type="submit" class="btn btn-primary" data-dismiss="modal"  >Xác nhận</button>
                                  <button type="submit" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
                               </div>
                            </div>
                         </div>
                          
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>

        <div class="row">
          <strong>Kết quả:</strong>
        </div>

        <div class="row" id="bangketqua">
        <br>
          <table class="table">
            <tr>
              <th>Tên sự kiện</th>
              <th>Người tổ chức</th>
              <th>Bắt đầu</th>
              <th>Kết thúc</th>
              <th>Vị trí</th>
              <th>Tần xuất</th>
              <th>Từ</th>
              <th>Đến</th>
              <th>Thời gian bắt đầu</th>
              <th>Thời gian kết thúc</th>
              <th></th>
            </tr>
            <tr>
              <td>Vật lý 1</td>
              <td>Nguyễn Thị Hồng</td>
              <td>7:00</td>
              <td>9:00</td>
              <td>A302</td>
              <td>Hằng tuần</td>
              <td>Thứ 2</td>
              <td>Thứ 2</td>
              <td>10/09/2016</td>
              <td>24/12/2014</td>
              <td><a class="btn" data-target="#btnsua" data-toggle="modal">Sửa</a></td>
            </tr>
            <tr>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
              <td>  </td>
            </tr>
          </table>
          <br>
        </div>
      <!--Mở popup mời cho tìm sự kiện-->
        <div class="modal" tab-index="-1" id="moimn">
        <div class="modal-dialog">
           <div class="modal-content">
              <div class="modal-header">Mời người khác</div>
              <div class="modal-body">
                 <form>
                    <div class="form-group row">
                       <label class="col-sm-3" style="line-height: 34px">Danh sách:</label>
                       <div class="col-sm-5">
                          <textarea class="form-control" rows="3" placeholder="Mô tả"></textarea>
                       </div>
                    </div>
                    <div class="form-group row">
                       <label class="col-xs-12 error">Không tìm thấy vnboy</label>
                    </div>
                    <div class="form-group row">
                       <div class="col-xs-offset-3 col-xs-3 col-sm-2">
                          <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#btnsua" data-dismiss="modal">Xác nhận</button>
                       </div>
                       <div class="col-xs-2 col-sm-2">
                          <button type="submit" class="btn btn-default" data-toggle="modal" data-target="#btnsua" data-dismiss="modal">Hủy bỏ</button>
                       </div>
                    </div>
                 </form>
              </div>

            </div>
          </div>
        </div>
      </div><!--Kết thúc tìm sự kiện-->

    </div><!--Hết nội dung-->
  </div>

</div>

<script>
$(document).ready(function(){
    
   $("#tsk-tan-suat-popup").change(function(){
      $(".tsk-ts-popup").slideUp();
      switch(this.value){
        case'1':
         case '1':
            //hang ngay
            $("#tsk-ts-ngay-popup").slideDown();
            break;
         case '2':
            $("#tsk-ts-tuan-popup").slideDown();
            break;
         case '3':
            $("#tsk-ts-thang-popup").slideDown();
            break;
         default:
            break;
      }
    })
    $("#bangketqua").hide();
    $("#btntimsukien").click(function(){
      $("#bangketqua").show();
    })
});
</script>

</body>
</html>
