class CreateSortOptions < ActiveRecord::Migration
  def change
    create_table :sort_options do |t|
      t.string :name
      t.string :value

      t.timestamps null: false
    end
  end
end
