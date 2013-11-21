class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :before_information
      t.integer :before_leaning
      t.integer :after_information
      t.integer :after_leaning

      t.timestamps
    end
  end
end
