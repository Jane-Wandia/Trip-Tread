class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :trip
      t.string :review
      t.integer :rating
      t.integer :airline_id
      t.integer :user_id
      t.timestamps
    end
  end
end
