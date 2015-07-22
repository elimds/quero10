class AddCodeCapesToSubAreas < ActiveRecord::Migration
  def change
    add_column :sub_areas, :code_capes, :string
  end
end
