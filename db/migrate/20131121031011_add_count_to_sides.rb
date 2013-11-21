class AddCountToSides < ActiveRecord::Migration
  def change
    add_column :sides, :count, :integer, :default => 0
  end
end
