class CreatePledges < ActiveRecord::Migration[5.2]
  def change
    create_table :pledges do |t|
      t.integer :amount, null: false
      t.integer :user_id, null: false
      t.integer :project_id, null: false
      t.integer :reward_id, null: false

      t.timestamps
    end

    add_index :pledges, :user_id
    add_index :pledges, :project_id
    add_index :pledges, :reward_id
  end
end
