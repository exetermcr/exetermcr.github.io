function menuOnResize() {
   if($(window).width() < 640) {
   		$("#menu").show()
        $(".nav").hide();
    }
    else {
       	$("#menu").hide()
        $(".nav").css("display", "inline");
	}
}

$(document).ready(function(){
   if($(window).width() < 640) {
        $(".nav").hide();
    } 
   $("#menu").toggle(function(){
     $(".nav").show('fast');
   },function(){
     $(".nav").hide('fast');
   });
   $(window).resize( $.debounce(250, menuOnResize) );
});

