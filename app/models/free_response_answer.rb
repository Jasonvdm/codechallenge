class FreeResponseAnswer < ActiveRecord::Base
  
  attr_accessible :quiz_id, :user_response, :points_scored, :free_response_question_id

  belongs_to :quiz
end
