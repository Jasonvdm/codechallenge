class CreateMultipleChoiceQuestions < ActiveRecord::Migration
	def change
		create_table :multiple_choice_questions do |t|
			t.string		:title
			t.integer 		:quiz_id
			t.text 			:prompt
			t.string		:correct_answer
			t.string		:wrong_answers
			t.string 		:category
			t.timestamps
		end
	end
end
