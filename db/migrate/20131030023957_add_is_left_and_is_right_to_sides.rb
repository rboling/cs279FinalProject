class AddIsLeftAndIsRightToSides < ActiveRecord::Migration
  def change
    add_column :sides, :is_left, :boolean
    add_column :sides, :is_right, :boolean
  end
end
