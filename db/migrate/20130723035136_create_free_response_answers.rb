class CreateFreeResponseAnswers < ActiveRecord::Migration
  def change
    create_table :free_response_answers do |t|

    	t.integer 	:free_response_question_id
    	t.integer 	:quiz_id
    	t.text		:user_response
    	t.integer	:points_scored
      t.timestamps
    end
  end
end
