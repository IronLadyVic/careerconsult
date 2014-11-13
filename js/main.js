$(function(){
	

	$(".nav-handle a").on("click", function(){

		$("div#main-header").toggleClass("hide");
		$(".fa .fa-angle-down").toggleClass("hide");
		
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
	$("li#menuServices").on("click", function(){
		$("li#seletedServices").toggleClass("display");
		$("#seletedServices p").toggleClass("display");
		$("#seletedServices i").toggleClass("display");
	});

	$(".nav-handle-sign-up a").on("click", function(){


		$("#main-nav").toggleClass("show");
		$("#droparrow").toggleClass("show");
		
		
	});


});

	//-----------services accordion-----------//

	$(function() {
		$( "#accordion" ).accordion();
	});


	//-----------change color of select options in sign up and career profile -----------//

