class AddBelongsToConditionToRisk < ActiveRecord::Migration
  def change
    add_reference :risks, :condition, index: true
  end
end
