class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :parent_comment_id
      t.integer :post_id
      t.integer :user_id
      t.integer :points

      t.timestamps
    end
    add_index :comments, [:post_id, :user_id]
  end
end
