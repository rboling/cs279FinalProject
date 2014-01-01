class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :name
      t.belongs_to :condition, index: true

      t.timestamps
    end
  end
end
