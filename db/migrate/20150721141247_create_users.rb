class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :category
      t.string :lattes
      t.string :phone
      t.string :mobile_phone  
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
