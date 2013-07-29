class AddIDsToQuizzes < ActiveRecord::Migration
	def change
		create_table :mc_questions do |t|
			t.references :quiz
			t.references :multiple_choice_question
		end

		create_table :fr_questions do |t|
			t.references :quiz
			t.references :free_response_question
		end

		remove_column :free_response_questions, :quiz_id
		remove_column :multiple_choice_questions, :quiz_id
	end
end
