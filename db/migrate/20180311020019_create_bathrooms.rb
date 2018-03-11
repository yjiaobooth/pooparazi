class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.string :address
      t.integer :neighborhood_id
      t.text :notes
      t.integer :comment_id
      t.boolean :public_or_not
      t.integer :ratingeasy_to_find

      t.timestamps

    end
  end
end
