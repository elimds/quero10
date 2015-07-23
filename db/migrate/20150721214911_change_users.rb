class ChangeUsers < ActiveRecord::Migration
  def change
    add_reference :users, :person, index: true, foreign_key: true
    remove_column :users, :category, :string 
    remove_column :users, :lattes, :string 
    remove_column :users, :phone, :string 
    remove_column :users, :mobile_phone, :string  
  end
end
