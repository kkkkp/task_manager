# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Event < ActiveRecord::Base
  belongs_to :user

  validates :title, uniqueness: true
  validates :title, presence: {message: "Each event needs a title"}
  validates :user_id, presence: {message: "Each event needs to have a user"}
end
