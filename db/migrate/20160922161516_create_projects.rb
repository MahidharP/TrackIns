class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.float :total_budget
      t.float :discount
      t.float :net_budget
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
