class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :city_name, null: false
      t.timestamps
    end
  end
end
