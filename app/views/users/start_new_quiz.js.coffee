
$("#take-new-quiz").hide()
$('#take-quiz-container').after('<%=j render partial: 'users/take_quiz_portal', locals: { quiz: @quiz, user: @user } %>')
$('#take-quiz-portal').css("max-height", ($(window).height()) - 175)
$('#take-quiz-portal').slideToggle()