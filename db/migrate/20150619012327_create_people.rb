class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :lattes
      t.string :phone
      t.string :mobile_phone

      t.timestamps null: false
    end
  end
end
