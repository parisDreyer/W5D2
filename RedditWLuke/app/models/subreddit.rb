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

class Subreddit < ApplicationRecord


  # This is the moderator
  belongs_to :user

  has_many :subscriptions

  has_many :subscribers,
  through: :subscriptions,
  source: :user



end
