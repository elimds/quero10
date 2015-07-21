class CreateResearchGroups < ActiveRecord::Migration
  def change
    create_table :research_groups do |t|
      t.string :title
      t.integer :leader_id
      t.integer :vice_leader_id
      t.references :area
      t.references :sub_area
      t.date :date_update
      t.string :description
      t.string :justification
      t.string :institutions
      t.string :infraestructure
      t.string :laboratories
      t.integer :status, index: true, default: 0

      t.timestamps null: false
    end
    
    add_index :research_groups, :leader_id
    add_index :research_groups, :vice_leader_id
  end
end
