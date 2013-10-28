class AddBelongsToConditionToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :condition, index: true
  end
end
