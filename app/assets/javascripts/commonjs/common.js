$( document ).ready(function() {
    enable_form_clear_button();
});

function enable_form_clear_button(){
    $(".clear-button").click(function(){
        var form = $(this).parents("form:first");
        form.find(":input").val("");
        form.submit();
    });
}
