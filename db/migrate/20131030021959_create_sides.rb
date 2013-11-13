class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.belongs_to :condition, index: true
      t.text :body
      t.string :summary

      t.timestamps
    end
  end
end
