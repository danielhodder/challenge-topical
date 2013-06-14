class CreateTopic < ActiveRecord::Migration
  def up
    create_table :topics do |t|
      t.string :name, null: false
      t.text :content
      t.integer :created_by_user_id, null: false

      t.timestamps
    end
  end

  def down
    drop_table :topics
  end
end
