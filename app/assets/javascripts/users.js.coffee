# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.Users ||= {}

Users.initialize = ->
	hash = window.location.hash.substring(1)
	if(hash == "take-quiz")
		take_code_quiz()
	window.onresize = set_quiz_portal_height
	set_quiz_portal_height()
	$('#edit-profile-btn').on "click", (target) ->
		toggle_edit_user_form()
				
	$('#take-quiz-btn').on "click", (target) ->
		take_code_quiz()
	$('#take_new_quiz_btn').on "click", (target) ->
		
		$("#pick-quiz-category").slideToggle ->
		hide_control_pane()
		$("#take-quiz-portal").slideToggle()



set_quiz_portal_height = ->
	$('#take-quiz-portal').css("max-height", ($(window).height()) - 175)

hide_control_pane = ->
	$("#control-panel").slideToggle ->
		return true

toggle_edit_user_form = ->
	if $("#edit-user-form").is(":visible")
		$("#edit-user-form").slideToggle ->
			$("#edit-user-form-square").animate width: 'toggle'
			$('#edit-profile-btn').css("background-color", "transparent")
	else
		$('#edit-profile-btn').css("background-color", "#1ABC9C")
		$("#edit-user-form-square").animate width: 'toggle', ->
			$("#edit-user-form").slideToggle()	

take_code_quiz = ->
	if $("#pick-quiz-category").is(":visible")
		$("#quiz-categories").slideToggle ->
			$("#pick-quiz-category").animate width: 'toggle'
			$('#take-quiz-btn').css("background-color", "transparent")
	else
		$('#take-quiz-btn').css("background-color", "#1ABC9C")
		$("#pick-quiz-category").animate width: 'toggle', ->
			$("#quiz-categories").slideToggle()