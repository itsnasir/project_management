$(document).ready(function(){
	init_multiselect_fields();	
})

function init_multiselect_fields(){
	$('.multiselect-fields').each(function(index, elem){
		$(elem).multiselect();
	})
}

function toggle_how_did_you_hear_details(el){
	hear_source = $(el).val();
	if(hear_source && hear_source != ""){
		$('.how_did_you_hear_details').show();
	}
	else{
		$('.how_did_you_hear_details').hide();	
	}
}

function set_fields(el){
	
	$('#user_dues_total').val($('#member_ship_type option:selected').attr("price"));
	$('#user_effective_date').val($('#member_ship_type option:selected').attr("start_date"));
	$('#user_beginning').val($('#member_ship_type option:selected').attr("start_date"));
	$('#user_next_dues_post').val($('#member_ship_type option:selected').attr("user_next_dues_post"));
	$('#user_expiring').val($('#member_ship_type option:selected').attr("end_date"));
}

function init_webcam(){
	Webcam.set({
		width: 320,
		height: 240,
		image_format: 'jpeg',
		jpeg_quality: 90
	});
	Webcam.attach( '#my_camera' );
	$('#take_profile_picture').modal({backdrop: 'static'})
}

function take_snapshot() {
	// take snapshot and get image data
	Webcam.snap( function(data_uri) {
		$('.upload_profile_image').val(data_uri);	
		$('#user_update_image').val(true);	
		// display results in page
		document.getElementById('results').innerHTML = 			
			'<img src="'+data_uri+'"/>';
	} );	
	$('#take_profile_picture').modal("hide");	
	reset_webcam();	
}

function reset_webcam(){
	Webcam.reset();
}

function toggle_payment_fields(el){
	payment_type = $(el).val();	
	if(payment_type == "credit_debit_card"){
		$('.credit_debit_card_fields').show();
		$('.ach_fields').hide();
		$('.credit_card_required_fields').attr("required", true);
		$('.bank_required_fields').removeAttr("required");
	}
	else if(payment_type == "ach"){
		$('.ach_fields').show();
		$('.credit_debit_card_fields').hide();	
		$('.credit_card_required_fields').removeAttr("required");
		$('.bank_required_fields').attr("required", true);
	}
}