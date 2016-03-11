class AddFieldsToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :cuisine, :string
    add_column :foods, :views_count, :integer, default: 0
  end
end
