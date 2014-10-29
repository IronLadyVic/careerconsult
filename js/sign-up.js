
$(function(){
	

	$(".nav-handle a").on("click", function(){

		$("#main-nav li").toggleClass("hide");
		$("#droparrow").toggleClass("hide");
		
	});
		$(".nav-handle a").on("click", function(){

		$("#main-nav").toggleClass("show");
		$("#droparrow").toggleClass("show");

		
	});
});

//Form Validation

//Check feild is not empty!

// function checkEmptyField(sFeildId){

// 	var oFeild = document.getElementById(sFeildId);

// 	var sFeildValue = oFeild.value;

// 	var bValid = false;

// 	var oFeildMessage = document.getElementById(sFeildId + "Message");
// 	if(sFeildValue.length == 0){
// 		oFeildMessage.innerHTML = "SUBMISSION REQUIRED";
// 		oFeildMessage.className = "invalid";
// 	}else{
// 		oFeildMessage.innerHTML = "";
// 		oFeildMessage.className = "correct";

// 	}

// 	return bValid;
// }

//Using Jquery to color the form validation.
$(function() {
            function validateform() {
                var valid = true;
                $(".border").css("border-top","0.1em solid #D7EE61");
                $(".border").css("border-bottom","0.1em solid #D7EE61");
                $("span i").css("color","#D7EE61");

                $(".border").each(function() {
                    if($(this).val() == "" ||  $(this).val().replace(/\s/g, '').length == 0) {
                        $(this).css("border-top","0.1em solid #9B8FFB");
                        $(this).css("border-bottom","0.1em solid #9B8FFB");
                        $("span i").css("color","#9B8FFB");
                        valid = false;
                    }
                });
                return valid;
                }
            
                $("#signup").click(function() {
                $('#signup-form').submit(validateform);
                    $('#signup-form').submit();
                });
            
        });