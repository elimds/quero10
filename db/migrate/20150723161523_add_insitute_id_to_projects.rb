class AddInsituteIdToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :institute, index: true, foreign_key: true
  end
end
