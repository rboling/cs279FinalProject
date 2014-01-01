class AddOpinionRightToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :opinion_right, :integer
  end
end
