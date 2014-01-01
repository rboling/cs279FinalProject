class AddOpinionLeftToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :opinion_left, :integer
  end
end
