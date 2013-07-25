class CreateMultipleChoiceAnswers < ActiveRecord::Migration
  def change
    create_table :multiple_choice_answers do |t|
    	t.integer 	:multiple_choice_question_id
    	t.integer 	:quiz_id
    	t.string	:user_response
    	t.boolean	:is_correct
    	t.integer	:points_scored
      t.timestamps
    end
  end
end
