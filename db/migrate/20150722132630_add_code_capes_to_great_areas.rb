class AddCodeCapesToGreatAreas < ActiveRecord::Migration
  def change
    add_column :great_areas, :code_capes, :string
  end
end
