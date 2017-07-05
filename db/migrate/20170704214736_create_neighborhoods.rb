class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighborhoods do |t|
      t.string :neighborhood_name, null: false
      t.references :city
      t.timestamps
    end
  end
end
