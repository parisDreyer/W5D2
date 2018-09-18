# == Schema Information
#
# Table name: comments
#
#  id                :bigint(8)        not null, primary key
#  parent_comment_id :integer
#  post_id           :integer
#  user_id           :integer
#  points            :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  content           :string           not null
#

class Comment < ApplicationRecord

  has_many :child_comments,
  primary_key: :id,
  foreign_key: :comment_id,
  class_name: :Comment

  belongs_to :parent_comment,
  primary_key: :id,
  foreign_key: :comment_id,
  class_name: :Comment,
  optional: true

  belongs_to :user

  belongs_to :post
  


end
