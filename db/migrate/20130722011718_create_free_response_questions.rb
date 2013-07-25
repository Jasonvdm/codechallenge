class CreateFreeResponseQuestions < ActiveRecord::Migration
	def change
		drop_table :free_response_questions
		create_table :free_response_questions do |t|
			t.string	:title
			t.integer 	:quiz_id
			t.text 		:prompt
			t.text 		:instructions
			t.text		:correct_answer
			t.string	:category
			t.timestamps
		end
	end
end
