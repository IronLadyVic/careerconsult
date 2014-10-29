$(function(){
	

	$(".nav-handle a").on("click", function(){

		$("#main-nav li").toggleClass("hide");
		$("#droparrow").toggleClass("hide");
		
	});
		$(".nav-handle a").on("click", function(){

		$("#main-nav").toggleClass("show");
		$("#droparrow").toggleClass("show");

		
	});

	$(".nav-handle a").on("click", function(){
		$("body").toggleClass("show");
		$("section#introduction").toggleClass("show");

	});
	$("#menuServices").on("click", function(){
		$("#seletedServices").toggleClass("display");
		$("#seletedServices p").toggleClass("display");
		$("#seletedServices i").toggleClass("display");
	});
});