class AddAuthenticScoreAttributeToTaco < ActiveRecord::Migration
  def change
  	add_column :tacos, :authentic_score, :float
  end
end
