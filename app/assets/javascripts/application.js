// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//

//= require commonjs/jquery.min.js
//= require jquery_ujs
//= require commonjs/bootstrap.min.js
//= require commonjs/js.cookie.min.js
//= require commonjs/jquery.slimscroll.min.js
//= require commonjs/jquery.blockui.min.js
//= require commonjs/bootstrap-switch.min.js

//= require commonjs/datatable.js

//= require commonjs/datatables.min.js

//= require commonjs/datatables.bootstrap.js

//= require commonjs/moment.min.js




//= require commonjs/jquery.validate.min.js
//= require commonjs/additional-methods.min.js
//= require commonjs/select2.full.min.js
//= require commonjs/jquery.backstretch.min.js
//= require commonjs/app.min.js

 

//= require commonjs/table-datatables-colreorder.min.js



//= require commonjs/login-5
//= require commonjs/layout.min.js
// require commonjs/index.min.js
//= require commonjs/demo.js
//= require commonjs/quick-sidebar.min.js
//= require commonjs/quick-nav.min.js

//= require commonjs/toastr.min.js

//= require commonjs/datepicker.js

//= require commonjs/common
//= require multiselect
//= require users
//= require jquery.printPage


$( function() {
    var year = (new Date).getFullYear();
    $( ".datepicker" ).datepicker({ dateFormat: "yy-mm-dd",
        changeMonth: true,
        changeYear: true,
        yearRange: '1970:'+year,
        defaultDate: '1990-01-01'

    });
} );
;

$(function(){
	var whiteAreaBox = $(".page-content.page-content-popup"); 
	var height = whiteAreaBox.height();
	if(height < 500){
		whiteAreaBox.height(500);
	}
});