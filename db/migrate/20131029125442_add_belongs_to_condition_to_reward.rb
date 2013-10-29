class AddBelongsToConditionToReward < ActiveRecord::Migration
  def change
    add_reference :rewards, :condition, index: true
  end
end
