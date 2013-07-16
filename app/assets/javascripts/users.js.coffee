# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.Users ||= {}

Users.initialize = ->


	

	$('#edit-profile-btn').on "click", (target) ->
		if $("#edit-user-form").is(":visible")
			$("#edit-user-form").slideToggle ->
				$("#edit-user-form-square").animate width: 'toggle'
				$('#edit-profile-btn').css("background-color", "transparent")

		else
			$('#edit-profile-btn').css("background-color", "black")
			$("#edit-user-form-square").animate width: 'toggle', ->
				$("#edit-user-form").slideToggle()
				
