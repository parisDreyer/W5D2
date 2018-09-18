class CreateSubreddits < ActiveRecord::Migration[5.2]
  def change
    create_table :subreddits do |t|
      t.string :title
      t.string :description
      t.integer :user_id

      t.timestamps
    end
    add_index :subreddits, :user_id
  end
end
