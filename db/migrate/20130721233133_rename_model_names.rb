class RenameModelNames < ActiveRecord::Migration
	def change
		rename_table :free_responses, :free_response_questions
		rename_table :multiple_choices, :multiple_choices_questions
		add_column :users, :is_admin, :boolean
	
	end
end
