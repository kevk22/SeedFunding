class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.datetime :delivery_date, null: false
      t.integer :price, null: false
      t.integer :backer_count, null: false
      t.integer :project_id, null: false

      t.timestamps
    end

    add_index :rewards, :project_id
  end
end
