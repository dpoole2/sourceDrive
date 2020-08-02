
var toggleForm = function(){
    var toggle = 0;
    $("#new-btn").on("click", function(){
        if(toggle == 0){
            $("#hidden-form").show();
            toggle++;
        }
        else{
            $("#hidden-form").hide();
            toggle--;
        }
    });
}



$(document).on("turbolinks:load", toggleForm);