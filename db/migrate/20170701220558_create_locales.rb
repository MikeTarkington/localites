class CreateLocales < ActiveRecord::Migration[5.1]
  def change
    create_table :locales do |t|
      t.string :yelp_id, null: false
      t.string :name, null: false
      t.string :image_url, null: false
      t.string :description #jay no likie
      t.string :yelp_url, null: false
      t.string :address
      t.references :plan
      t.timestamps
    end
  end
end
