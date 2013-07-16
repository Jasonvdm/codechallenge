class CreateFreeResponses < ActiveRecord::Migration
  def change
    create_table :free_responses do |t|
    	t.string	:title
    	t.integer 	:quiz_id
    	t.text 		:prompt
    	t.text 		:instructions
    	t.text 		:user_response
    	t.text		:correct_answer
    	t.string	:category
      t.timestamps
    end
  end
end
