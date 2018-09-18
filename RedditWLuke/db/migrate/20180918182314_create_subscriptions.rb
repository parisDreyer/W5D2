class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :subreddit_id

      t.timestamps
    end
    add_index :subscriptions, [:user_id, :subreddit_id]
  end
end
