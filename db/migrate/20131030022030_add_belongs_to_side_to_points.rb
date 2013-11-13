class AddBelongsToSideToPoints < ActiveRecord::Migration
  def change
    add_reference :points, :side, index: true
  end
end
