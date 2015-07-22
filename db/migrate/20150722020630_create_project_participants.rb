class CreateProjectParticipants < ActiveRecord::Migration
  def change
    create_table :project_participants do |t|
      t.references :project
      t.references :person
      t.integer :role, index: true, default: 0
      t.integer :weekly_time

      t.timestamps null: false
    end
  end
end
