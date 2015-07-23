class AddInstituteToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :institute, index: true, foreign_key: true
  end
end
