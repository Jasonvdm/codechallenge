class Quiz < ActiveRecord::Base
  attr_accessible :title, :points_possible, :description, :category

end
