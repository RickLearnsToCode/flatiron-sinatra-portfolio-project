class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :beer_id
      t.integer :five_star_rating
      t.string :content
    end
  end
end
