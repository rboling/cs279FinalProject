class Condition < ActiveRecord::Base
  has_many :risks
  has_many :rewards
end
