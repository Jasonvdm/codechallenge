class ApplicationController < ActionController::Base
	protect_from_forgery

	helper_method :shuffle_answers

	def shuffle_answers(mc_question)
		possible_answers = []
		mc_question.wrong_answers.split(",").each do |wrong_answer|
			possible_answers << wrong_answer
		end
		possible_answers << mc_question.correct_answer
		possible_answers.shuffle!
		return possible_answers
	end
end
