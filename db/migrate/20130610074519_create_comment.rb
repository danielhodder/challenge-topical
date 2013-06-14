class CreateComment < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :comment, null: false
      t.integer :created_by_user_id, null: false

      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
