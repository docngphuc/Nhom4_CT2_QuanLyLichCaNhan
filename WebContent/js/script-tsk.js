$(document).ready(function(){
   $("#tsk-tan-suat").on("change", trinhBayTanSuat);
   $("#form_button-them-nhac-nho").click(function(e){
      e.preventDefault();
      themDongNhacNho($(this));
   });
   $("#tsk-ts-them-giai-doan").click(function(e){
      e.preventDefault();
      themGiaiDoan();
   });
   $(".close-nhac-nho").on("click", function(){
      closeNhacNho($(this));
   });
   $(".close-giai-doan").on("click", function(e){
      e.preventDefault();
      closeGiaiDoan($(this));
   })
});

function trinhBayTanSuat(){
  $("#tsk-ts-them-giai-doan").hide();
  $(".tsk-ts").slideUp();
  $(".tsk-ts").removeClass("current-ts");
  switch(this.value){
     case '1':
        //hang ngay
        $(".tsk-ts-ngay").slideDown().addClass('current-ts');
        break;
     case '2':
        $(".tsk-ts-tuan").slideDown().addClass('current-ts');
        break;
     case '3':
        $(".tsk-ts-thang").slideDown().addClass('current-ts');
        break;
     default:
        break;
  }
  if(this.value>0)
    $("#tsk-ts-them-giai-doan").slideDown();
}

function themGiaiDoan(){
  var current_ts = $(".current-ts").last();
  var new_current_ts = current_ts.clone().hide();
  current_ts.after(new_current_ts);
  new_current_ts.slideDown();
  $(".close-giai-doan").on("click", function(e){
    e.preventDefault();
    closeGiaiDoan($(this));
  });
}

function closeGiaiDoan(o){
  var parent = o.parent().parent();
  if(!parent.is(".current-ts:first"))
    o.parent().parent().remove();
}

function themDongNhacNho(o){
   var last_line_nhac_nho = $(".form_line-nhac-nho").last();
   var line_nhac_nho = last_line_nhac_nho.clone().hide();
   last_line_nhac_nho.after(line_nhac_nho);
   line_nhac_nho.slideDown("fast");
   $(".close-nhac-nho").on("click", function(){
      closeNhacNho($(this));
   });
};

function closeNhacNho($){
  var parent= $.parent();
  if(!parent.is(".form_line-nhac-nho:first"))
    $.parent().remove();
}
