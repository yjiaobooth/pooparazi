class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.text :address
      t.integer :neighborhood_id
      t.text :notes
      t.integer :comment_id
      t.string :public_or_not
      t.text :ratingeasy_to_find

      t.timestamps

    end
  end
end
