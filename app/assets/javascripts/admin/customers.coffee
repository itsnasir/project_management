changes_states_according_to_country = ->
  $('.countries-select-box').change ->
  	selected_country = $(this).val()
  	country_select_box_id = $(this).attr("id")
  	url = $("#update_state_select_box_url").val()
  	$.ajax url,
  		type: 'Get'
  		data:
  			selected_country: selected_country
  			country_select_box_id: country_select_box_id

  		error: (jqxhr, textStatus, errorThrown) ->
  			console.log("Error in fetching states: #{errorThrown}, #{jqxhr}")
  		success: (data, textStatus, jqxhr) ->
  			console.log("success in fetching states")

$(document).ready ->
  # changes_states_according_to_country()

