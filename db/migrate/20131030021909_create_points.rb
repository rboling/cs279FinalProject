class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.text :body
      t.string :summary
      t.timestamps
    end
  end
end
