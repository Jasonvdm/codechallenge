class CreateNewModels < ActiveRecord::Migration
  
   create_table :free_response_questions do |t|
    	t.string	:title
    	t.integer 	:quiz_id
    	t.text 		:prompt
    	t.text 		:instructions
    	t.text 		:user_response
    	t.text		:correct_answer
    	t.string	:category
      t.timestamps
    end

       create_table :multiple_choice_questions do |t|
    	t.string		:title
    	t.integer 		:quiz_id
    	t.text 			:prompt
    	t.string 		:user_response
    	t.string		:correct_answer
    	t.string		:wrong_answers
    	t.string 		:category
      t.timestamps
    end
    
    add_column :users, :is_admin, :boolean
end
