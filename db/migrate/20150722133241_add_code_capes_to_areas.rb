class AddCodeCapesToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :code_capes, :string
  end
end
