# == Schema Information
#
# Table name: subreddits
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
