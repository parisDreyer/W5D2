# == Schema Information
#
# Table name: subscriptions
#
#  id           :bigint(8)        not null, primary key
#  user_id      :integer
#  subreddit_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Subscription < ApplicationRecord

  belongs_to :subreddit

  belongs_to :user
end
