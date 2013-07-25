class MultipleChoiceAnswer < ActiveRecord::Base
  
  attr_accessible :quiz_id, :user_response, :points_scored, :is_correct

  belongs_to :quiz
end
