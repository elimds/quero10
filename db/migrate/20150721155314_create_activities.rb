class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.integer :responsible_id, index: true
      t.date :date_start
      t.date :date_end
      t.integer :situation, index: true, default: 0
      t.integer :percent_run
      #t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
    
    #add_index :activities, :responsible_id
  end
end
