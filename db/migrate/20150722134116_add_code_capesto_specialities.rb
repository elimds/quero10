class AddCodeCapestoSpecialities < ActiveRecord::Migration
  def change
    add_column :specialities, :code_capes, :string
  end
end
