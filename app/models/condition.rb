class Condition < ActiveRecord::Base
  has_many :risks
  has_many :rewards
  has_many :sides
end

