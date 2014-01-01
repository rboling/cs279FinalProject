class AddJoinTableConditionsOpinions < ActiveRecord::Migration
  def change
  	create_join_table :conditions, :opinions
  end
end
