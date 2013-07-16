class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
	    t.string 	:title
	    t.integer 	:points_possible
	    t.integer 	:points_scored
	    t.string  	:description
	    t.integer	:user_id
	    t.string 	:category
	    t.timestamps
    end
  end
end
