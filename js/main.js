$(function(){
	

	$(".nav-handle a").on("click", function(){

		$("div#main-header").toggleClass("hide");
		$("#droparrow").toggleClass("hide");
		
	});
	//-----------Nav handle drop down menu-----------//

	$(".nav-handle a").on("click", function(){

		$("#main-nav").toggleClass("show");
		$("#droparrow").toggleClass("show");

		
	});
	//-----------Introduction in mobile show-----------//

	$(".nav-handle a").on("click", function(){

		$("body").toggleClass("show");
		$("section#introduction").toggleClass("show");
		$("section#animation").toggleClass("show");
		

	});
	//-----------Services drop down menu-----------//
	$("#menuServices").on("click", function(){
		$("#seletedServices").toggleClass("display");
		$("#seletedServices p").toggleClass("display");
		$("#seletedServices i").toggleClass("display");
	});

	$(".nav-handle-sign-up a").on("click", function(){


		$("#main-nav").toggleClass("show");
		$("#droparrow").toggleClass("show");
		
		
		
	});
	//-----------search bar-----------//
	// $("#fa-search").on("click", function(){
	// 	$("input#txtsearch.search-bar").toggleClass("display", {direction: "left"}, 1000)
	// });

	// $(".nav-handle-desktop").on("click",function(){
		
	// 	$("ul#main-nav").toggleClass("show");
	// 	$("i#droparrow").toggleClass("show");

	// });





});



