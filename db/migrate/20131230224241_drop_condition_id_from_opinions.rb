class DropConditionIdFromOpinions < ActiveRecord::Migration
  def change
  	remove_column :opinions, :condition_id
  end
end
