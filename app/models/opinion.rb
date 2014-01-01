class Opinion < ActiveRecord::Base
  has_many :opinion_left_thing_conditions, :class_name => "Condition", :foreign_key => "opinion_left"
  has_many :opinion_right_thing_conditions, :class_name => "Condition", :foreign_key => "opinion_right"
end
