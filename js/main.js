$(function(){
	

	$(".nav-handle a").on("click", function(){

		$("#main-nav li").toggleClass("hide");
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

	});
	//-----------Services drop down menu-----------//
	$("#menuServices").on("click", function(){
		$("#seletedServices").toggleClass("display");
		$("#seletedServices p").toggleClass("display");
		$("#seletedServices i").toggleClass("display");
	});

	//-----------search bar-----------//
	$("#fa-search").on("click", function(){
		$("input#txtsearch.search-bar").toggleClass("display", {direction: "left"}, 1000)
	});

	$(window).resize(function() {
  	if ($(window).width() < 400) {
     $("#tab-desk-nav").slide({width:"378px"},0);

 	 }
 	else {
     	var bOpen = false;

		$(".nav-handle-desktop").on("click",function(){
			if(bOpen == true){
				//close side bar
				$("#tab-desk-nav").animate({width:"0em"},1000,function(){

					//do this after animation has completed
					$(".nav-handle-desktop").removeClass(".nav-handle-desktop")
										.addClass(".nav-handle-desktop");
					bOpen = false;					
				});
			}else{
				//open side bar
				$("#tab-desk-nav").animate({width:"15.4em"},1000,function(){
					//do this after animation has completed
					$(".nav-handle-desktop").removeClass(".nav-handle-desktop")
										.addClass(".nav-handle-desktop");
					bOpen = true;					
				});
			}
		});

  	}

	});
	




});



