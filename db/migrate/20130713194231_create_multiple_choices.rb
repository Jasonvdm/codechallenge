class CreateMultipleChoices < ActiveRecord::Migration
  def change
    create_table :multiple_choices do |t|
    	t.string		:title
    	t.integer 	:quiz_id
    	t.text 			:prompt
    	t.string 		:user_response
    	t.string		:correct_answer
    	t.string 		:category
      t.timestamps
    end
  end
end
