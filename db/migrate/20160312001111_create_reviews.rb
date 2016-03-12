class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :username
      t.text :comment
      t.references :food, index: true, foreign_key: true
      t.integer :star, default: 0

      t.timestamps null: false
    end
  end
end
