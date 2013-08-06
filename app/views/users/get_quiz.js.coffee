<% if @existing_quiz %>

$('#take-quiz-container').after('<%=j render partial: 'users/take_quiz_portal', locals: { quiz: @quiz, user: @user } %>')
$('#take-quiz-portal').css("max-height", ($(window).height()) - 175)
$("#pick-quiz-category").slideToggle ->
$("#control-panel").slideToggle ->
$("#take-quiz-portal").slideToggle()		

<% else %>
$('#take-quiz-container').after('<%=j render partial: 'users/new_quiz', locals: { category: @category } %>')
$("#pick-quiz-category").slideToggle ->
$("#control-panel").slideToggle ->
$("#take-new-quiz").slideToggle()
<% end %>