class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.text :body, null: false
      t.datetime :funding_expiration, null: false
      t.integer :funding_goal, null: false
      t.integer :category_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :projects, :category_id
    add_index :projects, :user_id
  end
end
