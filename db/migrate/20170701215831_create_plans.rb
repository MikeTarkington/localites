class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :title, null: false
      t.string :city, null: false
      t.string :district, null: false
      t.references :user
      t.timestamps
    end
  end
end
