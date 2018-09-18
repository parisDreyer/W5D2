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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
