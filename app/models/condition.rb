class Condition < ActiveRecord::Base
  has_many :risks
  has_many :rewards
  has_many :sides
  belongs_to :opinion_left_thing, :class_name => "Opinion", :foreign_key => 'opinion_left'
  belongs_to :opinion_right_thing, :class_name => "Opinion", :foreign_key => "opinion_right"
end

