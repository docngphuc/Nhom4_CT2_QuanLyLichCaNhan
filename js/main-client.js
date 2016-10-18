$(document).ready(function(){
	$(".menu-item-parent").click(function(){
		$(this).siblings().children("ul").slideUp("fast");
		$(this).children("ul").slideToggle();
	});
});