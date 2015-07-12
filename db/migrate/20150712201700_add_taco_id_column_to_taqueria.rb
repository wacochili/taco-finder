class AddTacoIdColumnToTaqueria < ActiveRecord::Migration
  def change
    add_column :taquerias, :taco_id, :integer
  end
end
