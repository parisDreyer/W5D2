class AddColumnCommentToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :content, :string, null:false
  end
end
