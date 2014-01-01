class AddIsLeftToOpinions < ActiveRecord::Migration
  def change
    add_column :opinions, :is_left, :boolean
  end
end
