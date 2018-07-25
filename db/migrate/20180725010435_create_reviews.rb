class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      # t.integer :restaurant_id
      t.references :restaurant, foreign_key: true
      # foreign_key restaurant_id = restaurant.id
      t.timestamps
    end
  end
end
