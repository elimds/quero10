class AddCategoryToPeople < ActiveRecord::Migration
  def change
    add_column :people, :category, :integer, index: true, default: 0 
  end
end
