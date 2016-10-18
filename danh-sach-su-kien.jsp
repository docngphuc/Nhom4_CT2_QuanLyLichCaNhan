<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/client.css">
  <link rel="stylesheet" href="css/fullcalendar.min.css">
  <link rel="stylesheet" href="css/fullcalendar.print.css" media='print' >
  <link rel="stylesheet" href="css/jquery-ui.min.css">

  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main-client.js"></script>
  <script src="js/jquery-ui.min.js"></script>
  <script src="js/moment.min.js"></script>
  <script src="js/fullcalendar.min.js"></script>
  <style>
	::-webkit-scrollbar { 
		display: block; 
	}
    #calendar {
      min-width: 900px;
      margin: 0 auto;
	  font-family: verdana,sans-serif,arial;
    }
	
    .fc-event-container{
      cursor: pointer;
    }
	#eventContent{
		width:90%;
		margin: auto;
	}
	#eventContent .modal-content{
		width:100%;
		margin: 0px auto;
		padding: 5px;
	}
	#eventContent .modal-dialog{
		width: 100%;
	}
		
	@media (max-width:600px){
		#eventContent{
			width:100%;
			margin: auto;
		}
	}
	@media (max-width:350px){
		.form-group label:nth-child(1),.form-group label:nth-child(2){
			width: 100%;
		}
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
         <div class="use-case-title">Danh sách sự kiện</div>
      </div>
      <div class="row">
         
        <div id="calendar"></div>
      </div>
    </div>
  </div>

</div>

<div id="eventContent" class="modal fade" title="Chi tiết về sự kiện" tabindex="-1" role="dialog" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modal_event-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <div class="form-horizontal form-xs-sk">
            <div class="form-group">
               <label class="col-lg-2 col-md-3 col-sm-5 col-xs-6 equal-input">Người tổ chức:</label>
               
               <label class="col-lg-4 col-md-3 col-sm-7 col-xs-6 equal-input">Nguyễn Thị Hằng</label>

               <label class="col-lg-1 col-md-2 col-sm-4 col-xs-12 equal-input">Tên:</label>
               <div class="col-lg-5 col-md-4 col-sm-8 col-xs-12">
                 <input type="text" class="form-control" id="form_input-ten-su-kien">
               </div>
           
            </div>
           
            <div class="form-group">
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Bắt đầu:</label>
               <div class="col-lg-3 col-md-5 col-sm-4">
                  <input type="date" class="form-control" id="form_input-ngay-bat-dau">
               </div>
               <div class="col-lg-2 col-md-5 col-sm-4">
                  <input type="time" class="form-control" id="form_input-gio-bat-dau">
               </div>
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input" style="padding-right:0px">Kết thúc:</label>
               <div class="col-lg-3 col-md-5 col-sm-4">
                  <input type="date" class="form-control" id="form_input-ngay-ket-thuc" >
               </div>
               <div class="col-lg-2 col-md-5 col-sm-4">
                  <input type="time" class="form-control" id="form_input-gio-ket-thuc">
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
               <label class="col-lg-1 col-md-2 col-sm-4 equal-input">Vị trí:</label>
               <div class="col-lg-5 col-md-4 col-sm-8">
                  <input type="text" class="form-control" id="inputPassword3" placeholder="Vị trí">
               </div>
            </div>
            
            <div class="form-group display-none tsk-ts" id="form_select-them-su-kien">
               <label class="col-md-1 col-sm-1 equal-input">Từ:</label>
               <div class="col-md-5 col-sm-5">
                  <input type="time" class="form-control" id="inputEmail3" >
               </div>
               
               <label class="col-md-1 col-sm-1 equal-input" style="padding-right:0px">Đến:</label>
               <div class="col-md-5 col-sm-5">
                  <input type="time" class="form-control" id="inputEmail3" >
               </div>
            </div>
            <div id="tsk-ts-tuan" class="display-none tsk-ts">
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
                  <div class="col-md-5 col-sm-5" >
                     <input type="time" class="form-control" id="inputEmail3" >
                  </div>
                  
                  <label class="col-md-1 col-sm-1 equal-input" style="padding-right:0px">Đến:</label>
                  <div class="col-md-5 col-sm-5">
                     <input type="time" class="form-control" id="inputEmail3">
                  </div>
               </div>
            </div>
            
            <div id="tsk-ts-thang" class="display-none tsk-ts">
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
                     <input type="time" class="form-control" id="inputEmail3" >
                  </div>
               </div>
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
            <div class="form-group">
               <label class="col-xs-3 equal-input">Nhắc nhở:</label>
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
               <a href="#" id="popup_button-them-nhac-nho">Thêm nhắc nhở</a>
            </div>
            
         </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Chỉnh sửa</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
      </div>
    </div>
  </div>
  
</div>

<script>
$(document).ready(function(){
   $('#calendar').fullCalendar({
      header: {
          left: 'prev,next today',
          center: 'title',
          right: 'month,agendaWeek,agendaDay,listMonth'
        },
      defaultDate: '2016-09-12',
      editable: false,
      eventLimit: true,
      theme:false,
      navLinks: true,
      events: [
        {
          title: 'All Day Event',
          start: '2016-09-01',
          end: '2016-09-01',
          hour_start:'6:00',
          hour_end:'12:00',
          ntc:true
        },
        {
          title: 'Long Event',
          start: '2016-09-07',
          end: '2016-09-10',
          ntc:false
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2016-09-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2016-09-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2016-09-11',
          end: '2016-09-13'
        },
        {
          title: 'Meeting',
          start: '2016-09-12T10:30:00',
          end: '2016-09-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2016-09-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2016-09-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2016-09-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2016-09-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2016-09-13T07:00:00',
          description:'Birthday of my friend'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2016-09-28'
        }
      ],
      eventClick: function(calEvent, jsEvent, view) {
         //set the values and open the modal
         setContentForModal(calEvent);
         // change the border color just for fun
         $(this).css('border-color', 'red');

      }
    });
    
   $("#popup_button-them-nhac-nho").click(function(e){
      e.preventDefault();
      themDongNhacNho($(this));
   });

   $("#form_select-them-su-kien").change(function(e){
      $(".tsk-ts").slideUp();
      switch(this.value){
         case '1':
            //hang ngay
            $("#tsk-ts-ngay").slideDown();
            break;
         case '2':
            $("#tsk-ts-tuan").slideDown();
            break;
         case '3':
            $("#tsk-ts-thang").slideDown();
            break;
         default:
            break;
      }
   });
});

function setContentForModal(calEvent){
   $("#modal_event-title").html(calEvent.title);
   $("#form_input-ten-su-kien").val(calEvent.title);
   $("#form_input-ngay-bat-dau").val(calEvent.start._i);
   if(calEvent.end===null)
      $("#form_input-ngay-ket-thuc").val(calEvent.start._i);
   else
      $("#form_input-ngay-ket-thuc").val(calEvent.end._i);
   
   if(calEvent.ntc===false){
      console.log('hi');
      $("#form_input-ngay-bat-dau").attr('disabled','disabled');
      $("#form_input-ngay-ket-thuc").attr('disabled','disabled');
   }
   
   $("#eventContent").modal('show');
}

function themDongNhacNho(o){
   console.log()
   o.parent().hide().before(
      '<div class="form-group">'+
         '<label class="col-xs-3 equal-input">Nhắc nhở:</label>'+
         '<div class="col-xs-3">'+
            '<select class="form-control">'+
              '<option>Email</option>'+
              '<option>Phone</option>'+
            '</select>'+
         '</div>'+
         '<div class="col-xs-3">'+
            '<input type="number" class="form-control" id="" value="0">'+
         '</div>'+
         '<div class="col-xs-3">'+
            '<select class="form-control">'+
               '<option>Giây</option>'+
               '<option>Phút</option>'+
               '<option>Giờ</option>'+
               '<option>Ngày</option>'+
            '</select>'+
         '</div>'+
      '</div>').slideDown('fast');
   };
</script>
  
</body>
</html>